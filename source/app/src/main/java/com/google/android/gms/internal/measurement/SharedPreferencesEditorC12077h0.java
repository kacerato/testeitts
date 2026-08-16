package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class SharedPreferencesEditorC12077h0 implements SharedPreferences.Editor {

    public boolean f62302a;

    public final Set f62303b;

    public final Map f62304c;

    public final SharedPreferencesC12086i0 f62305d;

    public SharedPreferencesEditorC12077h0(SharedPreferencesC12086i0 sharedPreferencesC12086i0, byte[] bArr) {
        Objects.requireNonNull(sharedPreferencesC12086i0);
        this.f62305d = sharedPreferencesC12086i0;
        this.f62302a = false;
        this.f62303b = new HashSet();
        this.f62304c = new HashMap();
    }

    public final void a(String str, Object obj) {
        if (obj != null) {
            this.f62304c.put(str, obj);
        } else {
            remove(str);
        }
    }

    @Override
    public final void apply() {
        commit();
    }

    @Override
    public final SharedPreferences.Editor clear() {
        this.f62302a = true;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean commit() {
        if (this.f62302a) {
            this.f62305d.a().clear();
        }
        SharedPreferencesC12086i0 sharedPreferencesC12086i0 = this.f62305d;
        Set set = this.f62303b;
        sharedPreferencesC12086i0.a().o().removeAll(set);
        Map map = this.f62304c;
        for (Map.Entry entry : map.entrySet()) {
            sharedPreferencesC12086i0.a().put((String) entry.getKey(), entry.getValue());
        }
        for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : sharedPreferencesC12086i0.b()) {
            com.google.common.collect.e3 it = com.google.common.collect.D2.N(set, map.o()).iterator();
            while (it.hasNext()) {
                onSharedPreferenceChangeListener.onSharedPreferenceChanged(sharedPreferencesC12086i0, (String) it.next());
            }
        }
        return (!this.f62302a && set.isEmpty() && map.isEmpty()) ? false : true;
    }

    @Override
    public final SharedPreferences.Editor putBoolean(String str, boolean z10) {
        a(str, Boolean.valueOf(z10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putFloat(String str, float f10) {
        a(str, Float.valueOf(f10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putInt(String str, int i10) {
        a(str, Integer.valueOf(i10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putLong(String str, long j10) {
        a(str, Long.valueOf(j10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putString(String str, String str2) {
        a(str, str2);
        return this;
    }

    @Override
    public final SharedPreferences.Editor putStringSet(String str, Set set) {
        a(str, set);
        return this;
    }

    @Override
    public final SharedPreferences.Editor remove(String str) {
        this.f62303b.add(str);
        return this;
    }
}
