package com.ardor3d.util.export;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public interface Ardor3dImporter {
    Savable load(File file) throws IOException;

    Savable load(InputStream inputStream) throws IOException;

    Savable load(URL url) throws IOException;

    Savable load(byte[] bArr) throws IOException;
}
