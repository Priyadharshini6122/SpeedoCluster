# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appSpeedo_Cluster_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appSpeedo_Cluster_autogen.dir\\ParseCache.txt"
  "appSpeedo_Cluster_autogen"
  )
endif()
