import os
import json

try:
    from sonic_platform_base.psu_base import PsuBase
except ImportError as e:
    raise ImportError(str(e) + "- required module not found")


class Psu(PsuBase):
    def __init__(self, parent, name):
        self.parent = parent
        self.name = name
        self.metadata_file = '/etc/sonic/ot_vs_chassis_metadata.json'
        self.metadata = self._read_metadata()

    def _read_metadata(self):
        metadata = {}
        if os.path.exists(self.metadata_file):
            with open(self.metadata_file, 'r') as f:
                metadata = json.load(f)
        else:
            raise FileNotFoundError("Metadata file {} not found".format(self.metadata_file))
        return metadata

    def get_psu_status(self):
        for item in self.metadata['chassis']['psus']:
            if item['name'] == self.name:
                return item['status_led']
        return None




