package com.google.gson;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public interface ExclusionStrategy {
    boolean shouldSkipField(FieldAttributes fieldAttributes);

    boolean shouldSkipClass(Class<?> cls);
}
