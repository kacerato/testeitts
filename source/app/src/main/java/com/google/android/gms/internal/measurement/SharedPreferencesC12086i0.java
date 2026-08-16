package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class SharedPreferencesC12086i0 implements SharedPreferences {

    public final Map f62321a = new HashMap();

    public final Set f62322b = new HashSet();

    public final Map a() {
        return this.f62321a;
    }

    public final Set b() {
        return this.f62322b;
    }

    public final Object c(String str, Object obj) {
        Object obj2 = this.f62321a.get(str);
        return obj2 != null ? obj2 : obj;
    }

    @Override
    public final boolean contains(String str) {
        return this.f62321a.containsKey(str);
    }

    @Override
    public final SharedPreferences.Editor edit() {
        return new SharedPreferencesEditorC12077h0(this, null);
    }

    @Override
    public final Map getAll() {
        return this.f62321a;
    }

    @Override
    public final boolean getBoolean(String str, boolean z10) {
        return ((Boolean) c(str, Boolean.valueOf(z10))).booleanValue();
    }

    @Override
    public final float getFloat(String str, float f10) {
        return ((Float) c(str, Float.valueOf(f10))).floatValue();
    }

    @Override
    public final int getInt(String str, int i10) {
        return ((Integer) c(str, Integer.valueOf(i10))).intValue();
    }

    @Override
    public final long getLong(String str, long j10) {
        return ((Long) c(str, Long.valueOf(j10))).longValue();
    }

    @Override
    public final String getString(String str, String str2) {
        return (String) c(str, str2);
    }

    @Override
    public final Set getStringSet(String str, Set set) {
        return (Set) c(str, set);
    }

    @Override
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f62322b.add(onSharedPreferenceChangeListener);
    }

    @Override
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f62322b.remove(onSharedPreferenceChangeListener);
    }
}
