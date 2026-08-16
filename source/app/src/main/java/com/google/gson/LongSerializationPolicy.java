package com.google.gson;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public enum LongSerializationPolicy {
    DEFAULT {
        @Override
        public JsonElement serialize(Long value) {
            return new JsonPrimitive(value);
        }
    },
    STRING {
        @Override
        public JsonElement serialize(Long value) {
            return new JsonPrimitive(String.valueOf(value));
        }
    };

    public abstract JsonElement serialize(Long l10);
}
