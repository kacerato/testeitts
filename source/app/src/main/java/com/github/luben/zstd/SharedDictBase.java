package com.github.luben.zstd;

abstract class SharedDictBase extends AutoCloseBase {
    public void finalize() {
        close();
    }
}
