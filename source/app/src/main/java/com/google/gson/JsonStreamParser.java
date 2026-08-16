package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class JsonStreamParser implements Iterator<JsonElement> {
    private final JsonReader parser;
    private final Object lock;

    public JsonStreamParser(String json) {
        this(new StringReader(json));
    }

    public JsonStreamParser(Reader reader) {
        this.parser = new JsonReader(reader);
        this.parser.setLenient(true);
        this.lock = new Object();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public JsonElement next() throws JsonParseException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        try {
            return Streams.parse(this.parser);
        } catch (JsonParseException e10) {
            if (e10.getCause() instanceof EOFException) {
                throw new NoSuchElementException();
            }
            throw e10;
        } catch (OutOfMemoryError e11) {
            throw new JsonParseException("Failed parsing JSON source to Json", e11);
        } catch (StackOverflowError e12) {
            throw new JsonParseException("Failed parsing JSON source to Json", e12);
        }
    }

    @Override
    public boolean hasNext() {
        boolean z10;
        synchronized (this.lock) {
            try {
                try {
                    z10 = this.parser.peek() != JsonToken.END_DOCUMENT;
                } catch (IOException e10) {
                    throw new JsonIOException(e10);
                }
            } catch (MalformedJsonException e11) {
                throw new JsonSyntaxException(e11);
            }
        }
        return z10;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
