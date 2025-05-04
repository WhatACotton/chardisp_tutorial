setws ./workspace
app create -name test_project -hw ./dist/chardisp_wrapper.xsa -os standalone -proc ps7_cortexa9_0 -template {Hello World}
# app create -name test_project -hw ./dist/chardisp_wrapper.xsa -os standalone -proc ps7_cortexa9_0 -template {Empty Application(C)}