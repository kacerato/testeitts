package com.github.javaparser;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

public class StreamProvider implements Provider {
    private Reader m_aReader;

    @Deprecated
    public StreamProvider(final InputStream stream, final String charsetName) throws IOException {
        this(new BufferedReader(new InputStreamReader(stream, charsetName)));
    }

    @Override
    public void close() throws IOException {
        Reader reader = this.m_aReader;
        if (reader != null) {
            reader.close();
        }
    }

    @Override
    public int read(final char[] aDest, final int nOfs, final int nLen) throws IOException {
        int read = this.m_aReader.read(aDest, nOfs, nLen);
        if (read != 0 || nOfs >= aDest.length || nLen <= 0) {
            return read;
        }
        return -1;
    }

    public StreamProvider(final InputStream stream, final Charset charset) {
        this(new BufferedReader(new InputStreamReader(stream, charset)));
    }

    public StreamProvider(final Reader reader) {
        this.m_aReader = reader;
    }
}
