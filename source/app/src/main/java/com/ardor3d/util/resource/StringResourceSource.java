package com.ardor3d.util.resource;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StringResourceSource implements ResourceSource {
    private static final Logger logger = Logger.getLogger(StringResourceSource.class.getName());
    private String _data;
    private String _type;

    public StringResourceSource(String str) {
        this(str, null);
    }

    @Override
    public Class<?> getClassTag() {
        return StringResourceSource.class;
    }

    @Override
    public String getName() {
        return "string resource";
    }

    @Override
    public ResourceSource getRelativeSource(String str) {
        Logger logger2 = logger;
        Level level = Level.WARNING;
        if (!logger2.isLoggable(level)) {
            return null;
        }
        logger2.logp(level, getClass().getName(), "getRelativeSource(String)", "StringResourceSource does not support this method.");
        return null;
    }

    @Override
    public String getType() {
        return this._type;
    }

    @Override
    public InputStream openStream() throws IOException {
        return new ByteArrayInputStream(this._data.getBytes("UTF8"));
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._data = inputCapsule.readString("data", null);
        this._type = inputCapsule.readString("type", null);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._data, "data", (String) null);
        outputCapsule.write(this._type, "type", (String) null);
    }

    public StringResourceSource(String str, String str2) {
        this._data = str;
        this._type = str2;
    }
}
