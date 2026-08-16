package com.google.gson;

import com.google.gson.reflect.TypeToken;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public interface TypeAdapterFactory {
    <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken);
}
