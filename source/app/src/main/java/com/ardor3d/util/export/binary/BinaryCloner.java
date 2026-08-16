package com.ardor3d.util.export.binary;

import com.ardor3d.scenegraph.Spatial;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class BinaryCloner {
    public Spatial copy(Spatial spatial) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new BinaryExporter().save(spatial, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            return (Spatial) new BinaryImporter().load(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
