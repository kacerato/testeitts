package com.ardor3d.util.export.xml;

import com.ardor3d.util.export.Ardor3dExporter;
import com.ardor3d.util.export.Savable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.xml.parsers.DocumentBuilderFactory;

public class XMLExporter implements Ardor3dExporter {
    public static final String ATTRIBUTE_SIZE = "size";
    public static final String ELEMENT_FLOATBUFFER = "FloatBuffer";
    public static final String ELEMENT_KEY = "Key";
    public static final String ELEMENT_MAPENTRY = "MapEntry";
    public static final String ELEMENT_VALUE = "Value";

    public static XMLExporter getInstance() {
        return new XMLExporter();
    }

    @Override
    public void save(Savable savable, OutputStream outputStream) throws IOException {
        try {
            DOMOutputCapsule dOMOutputCapsule = new DOMOutputCapsule(DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument());
            dOMOutputCapsule.write(savable, savable.getClass().getName(), (Savable) null);
            DOM_PrettyPrint.serialize(dOMOutputCapsule.getDoc(), outputStream);
            outputStream.flush();
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public void save(Savable savable, File file) throws IOException {
        save(savable, new FileOutputStream(file));
    }
}
