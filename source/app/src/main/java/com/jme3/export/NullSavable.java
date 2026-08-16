package com.jme3.export;

import java.io.IOException;

public class NullSavable implements Savable {
    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
    }
}
