package com.ardor3d.util.geom;

import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.export.binary.BinaryExporter;
import com.ardor3d.util.export.binary.BinaryImporter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
public class ClonedCopyLogic implements CopyLogic {
    @Override
    public Spatial copy(Spatial spatial, AtomicBoolean atomicBoolean) {
        try {
            atomicBoolean.set(false);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new BinaryExporter().save(spatial, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            return (Spatial) new BinaryImporter().load(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
