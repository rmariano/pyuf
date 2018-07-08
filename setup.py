from setuptools import setup, find_packages


setup(
    name="pyuf",
    description="Union-Find data structure implementation in Python",
    author="Mariano Anaya",
    version="0.1.0",
    author_email="marianoanaya at gmail dot com",
    packages=find_packages(where="src/"),
    package_dir={"": "src"},
)
