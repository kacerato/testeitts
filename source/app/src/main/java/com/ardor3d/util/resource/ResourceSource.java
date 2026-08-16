package com.ardor3d.util.resource;

import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.io.InputStream;

public interface ResourceSource extends Savable {
    public static final String UNKNOWN_TYPE = "-unknown-";

    String getName();

    ResourceSource getRelativeSource(String str);

    String getType();

    InputStream openStream() throws IOException;
}
