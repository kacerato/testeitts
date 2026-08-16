package com.ardor3d.util.export.xml;

import com.ardor3d.util.export.Ardor3dImporter;
import com.ardor3d.util.export.Savable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

public class XMLImporter implements Ardor3dImporter {
    public static XMLImporter getInstance() {
        return new XMLImporter();
    }

    @Override
    public Savable load(InputStream inputStream) throws IOException {
        try {
            return new DOMInputCapsule(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream)).readSavable(null, null);
        } catch (ParserConfigurationException e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        } catch (SAXException e11) {
            IOException iOException2 = new IOException();
            iOException2.initCause(e11);
            throw iOException2;
        }
    }

    @Override
    public Savable load(URL url) throws IOException {
        return load(url.openStream());
    }

    @Override
    public Savable load(File file) throws IOException {
        return load(new FileInputStream(file));
    }

    @Override
    public Savable load(byte[] bArr) throws IOException {
        return load(new ByteArrayInputStream(bArr));
    }
}
