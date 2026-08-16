package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class JsonParser {
    @Deprecated
    public JsonParser() {
    }

    public static JsonElement parseString(String json) throws JsonSyntaxException {
        return parseReader(new StringReader(json));
    }

    public static JsonElement parseReader(Reader reader) throws JsonIOException, JsonSyntaxException {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            JsonElement element = parseReader(jsonReader);
            if (!element.isJsonNull() && jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonSyntaxException("Did not consume the entire document.");
            }
            return element;
        } catch (MalformedJsonException e10) {
            throw new JsonSyntaxException(e10);
        } catch (IOException e11) {
            throw new JsonIOException(e11);
        } catch (NumberFormatException e12) {
            throw new JsonSyntaxException(e12);
        }
    }

    public static JsonElement parseReader(JsonReader reader) throws JsonIOException, JsonSyntaxException {
        boolean lenient = reader.isLenient();
        reader.setLenient(true);
        try {
            try {
                JsonElement parse = Streams.parse(reader);
                reader.setLenient(lenient);
                return parse;
            } catch (OutOfMemoryError e10) {
                throw new JsonParseException("Failed parsing JSON source: " + ((Object) reader) + " to Json", e10);
            } catch (StackOverflowError e11) {
                throw new JsonParseException("Failed parsing JSON source: " + ((Object) reader) + " to Json", e11);
            }
        } catch (Throwable th2) {
            reader.setLenient(lenient);
            throw th2;
        }
    }

    @Deprecated
    public JsonElement parse(String json) throws JsonSyntaxException {
        return parseString(json);
    }

    @Deprecated
    public JsonElement parse(Reader json) throws JsonIOException, JsonSyntaxException {
        return parseReader(json);
    }

    @Deprecated
    public JsonElement parse(JsonReader json) throws JsonIOException, JsonSyntaxException {
        return parseReader(json);
    }
}
