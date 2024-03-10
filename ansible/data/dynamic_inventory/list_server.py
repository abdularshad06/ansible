#!/usr/bin/python
import json
import argparse
def get_inventory_data():
    # curl openstack.local.org/api/instance/all
    data = {
        "database": {
            "hosts": ["dbserver1"],
            "vars" : {
            "ansible_ssh_pass": "vagrant",
            "ansible_ssh_host": "192.168.30.13"
            }
        }
    }
    return data

#python filename.py --host dbserver1
#python filename.py --host webserver1
#python filename .py --list

if __name__ == "__main__":
    data = get_inventory_data()
    #print(json.dumps(data))
    parser = argparse.ArgumentParser()
    parser.add_argument( '--list', action='store_true')
    parser.add_argument( '--host', action='store')
    arg = parser.parse_args()
    if arg and arg.list:
        print(json.dumps(data))
    elif arg.host:
        print(json.dumps({'_meta': { 'hostvars': {}}}))
