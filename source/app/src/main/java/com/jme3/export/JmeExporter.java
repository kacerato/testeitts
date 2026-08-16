package com.jme3.export;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

public interface JmeExporter {
    OutputCapsule getCapsule(Savable savable);

    default void save(Savable savable, File file) throws IOException {
        save(savable, file, true);
    }

    void save(Savable savable, File file, boolean z10) throws IOException;

    void save(Savable savable, OutputStream outputStream) throws IOException;
}
