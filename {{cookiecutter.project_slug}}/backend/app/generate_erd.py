import os
from eralchemy2 import render_er
from app.db.models import Base

try:
    os.mkdir("entity_relationship_diagrams")
except OSError as error:
    pass


def get_next_version_number(base_filename, extension):
    version = 1
    while True:
        versioned_filename = f"{base_filename}_v{version}{extension}"
        if not os.path.exists(versioned_filename):
            return version
        version += 1


# Usage
base_filename = "erd_from_sqlalchemy"
extension = ".png"  # Change it to the appropriate file extension
version = get_next_version_number(base_filename, extension)
filename = f"{base_filename}_v{version}{extension}"

## Draw from SQLAlchemy base
render_er(Base, os.path.join("entity_relationship_diagrams", filename))
