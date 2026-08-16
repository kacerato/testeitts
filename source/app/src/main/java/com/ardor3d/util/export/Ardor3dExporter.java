package com.ardor3d.util.export;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

public interface Ardor3dExporter {
    void save(Savable savable, File file) throws IOException;

    void save(Savable savable, OutputStream outputStream) throws IOException;
}
