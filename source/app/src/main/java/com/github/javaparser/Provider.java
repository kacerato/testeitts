package com.github.javaparser;

import java.io.Closeable;
import java.io.IOException;

public interface Provider extends Closeable {
    int read(char[] aDest, int nOfs, int nLen) throws IOException;
}
