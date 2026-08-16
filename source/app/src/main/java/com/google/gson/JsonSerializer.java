package com.google.gson;

import java.lang.reflect.Type;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public interface JsonSerializer<T> {
    JsonElement serialize(T t10, Type type, JsonSerializationContext jsonSerializationContext);
}
