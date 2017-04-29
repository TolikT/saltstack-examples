{% set extract_dir_exists = salt['file.directory_exists']('C:/salt_files') %}

scripts:
  file.recurse:
    - name: C:/salt_data
    - source: salt://test1/testdir
    - include_empty: True

{% if not extract_dir_exists  %}

extract_archive:
  archive.extracted:
    - name: C:/salt_files
    - source: C:/salt_data/salt_files.zip
    - use_cmd_unzip: False
    - enforce_toplevel: false

{% endif  %}

remove_unnecessary_dir:
  file.absent:
    - name: C:/salt_data

run_first_script:
  cmd.run:
    - name: C:/salt_files/x
