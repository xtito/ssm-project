function convertComputerSizeUnit(fileSize) {
    var sizeStr = "";
    var kbSize = 1024;// KB单位
    var mbSize = kbSize * 1024;// MB单位
    var gbSize = mbSize * 1024;// GB单位
    var pbSize = gbSize * 1024;// PB单位
    if (fileSize >= kbSize && fileSize < mbSize) {
        sizeStr = (fileSize / kbSize) + "KB";
    } else if (fileSize >= mbSize && fileSize < gbSize) {
        sizeStr = (fileSize / mbSize) + "MB";
    } else if (fileSize >= gbSize && fileSize < pbSize) {
        sizeStr = (fileSize / gbSize) + "GB";
    } else if (fileSize >= pbSize) {
        sizeStr = (fileSize / pbSize) + "PB";
    } else {
        sizeStr = fileSize + "字节";
    }
    return sizeStr;
}