class: CommandLineTool
cwlVersion: v1.1.0-dev1
inputs:
  in: string
outputs:
  out:
    type: File
    outputBinding:
      glob: out

requirements:
  EnvVarRequirement:
    envDef:
      TEST_ENV: conflict

baseCommand: ["/bin/sh", "-c", "echo $TEST_ENV"]

stdout: out
