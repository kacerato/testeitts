package com.jme3.export;

import java.io.IOException;

public interface Savable {
    void read(JmeImporter jmeImporter) throws IOException;

    void write(JmeExporter jmeExporter) throws IOException;
}
