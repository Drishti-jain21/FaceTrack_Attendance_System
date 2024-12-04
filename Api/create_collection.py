from pymongo import MongoClient
from get_database import get_database

def create_collection():
    db = get_database()
    result = db.create_collection("students", validator={
        '$jsonSchema': {
            'bsonType': 'object',
            'additionalProperties': True,
            'required': ['_id','name', 'email_id','semester','branch','section','photo'],
            'properties': {
                '_id': {
                    'bsonType': 'string',
                    'description': ''
                },
                'name': {
                    'bsonType': 'string',
                    'description': ''
                },
                'email_id': {
                    'bsonType': 'string',
                    'description': ''
                },
                'semester': {
                    'bsonType': 'int',
                    'description': 'Set to default value'
                },
                'branch': {
                    'bsonType': 'string',
                    'description': ''
                },
                'section': {
                    'bsonType': 'int',
                    'description': ''
                },
                'photo': {
                    'bsonType': 'binData',
                    'description': ''
                }
            }
        }
    })


if __name__ == '__main__':
    create_collection()