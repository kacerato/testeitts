package com.itsmagic.engine.Engines.Native.OHString;

import Ac.b;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

public class OHStringSerializer implements JsonSerializer<b>, JsonDeserializer<b> {
    @Override
    public b deserialize(JsonElement json, Type member, JsonDeserializationContext ignore) {
        return b.V(json);
    }

    @Override
    public JsonElement serialize(b src, Type typeOfSrc, JsonSerializationContext context) {
        return b.n0(src);
    }
}
