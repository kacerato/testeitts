package com.google.gson.internal.reflect;

import java.lang.reflect.AccessibleObject;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
final class PreJava9ReflectionAccessor extends ReflectionAccessor {
    @Override
    public void makeAccessible(AccessibleObject ao) {
        ao.setAccessible(true);
    }
}
