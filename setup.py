import setuptools
setuptools.setup(
		name='fcols',
		version='0.0.1', # TODO versioning, tags
		packages=['fcols'],
		entry_points={
			"console_scripts" : [
				'fcols = fcols:main',
				]
			},
		)
