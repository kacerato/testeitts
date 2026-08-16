package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class TimeTypeAdapter extends TypeAdapter<Time> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() {
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Time.class) {
                return new TimeTypeAdapter();
            }
            return null;
        }
    };
    private final DateFormat format = new SimpleDateFormat("hh:mm:ss a");

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public synchronized Time read2(JsonReader in2) throws IOException {
        if (in2.peek() == JsonToken.NULL) {
            in2.nextNull();
            return null;
        }
        try {
            Date date = this.format.parse(in2.nextString());
            return new Time(date.getTime());
        } catch (ParseException e10) {
            throw new JsonSyntaxException(e10);
        }
    }

    @Override
    public synchronized void write(JsonWriter out, Time value) throws IOException {
        out.value(value == null ? null : this.format.format((Date) value));
    }
}
