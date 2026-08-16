package com.itsmagic.engine.Activities.Editor.Panels.Marketplace.Utils;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateSerializer implements JsonSerializer<Date>, JsonDeserializer<Date> {

    public static final String f71743a = "dd.MM.yyyy HH:mm:ss";

    public static final SimpleDateFormat f71744b = new SimpleDateFormat(f71743a, Locale.US);

    @Override
    public Date deserialize(JsonElement json, Type member, JsonDeserializationContext ignore) {
        try {
            return f71744b.parse(json.getAsString());
        } catch (ParseException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public JsonElement serialize(Date src, Type typeOfSrc, JsonSerializationContext context) {
        if (src == null) {
            return null;
        }
        return new JsonPrimitive(f71744b.format(src));
    }
}
