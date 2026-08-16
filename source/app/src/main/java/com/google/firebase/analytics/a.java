package com.google.firebase.analytics;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a {

    @Nullable
    public FirebaseAnalytics.a f67732a;

    @Nullable
    public FirebaseAnalytics.a f67733b;

    @Nullable
    public FirebaseAnalytics.a f67734c;

    @Nullable
    public FirebaseAnalytics.a f67735d;

    @NotNull
    public final Map<FirebaseAnalytics.b, FirebaseAnalytics.a> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FirebaseAnalytics.a aVar = this.f67732a;
        if (aVar != null) {
            linkedHashMap.put(FirebaseAnalytics.b.AD_STORAGE, aVar);
        }
        FirebaseAnalytics.a aVar2 = this.f67733b;
        if (aVar2 != null) {
            linkedHashMap.put(FirebaseAnalytics.b.ANALYTICS_STORAGE, aVar2);
        }
        FirebaseAnalytics.a aVar3 = this.f67734c;
        if (aVar3 != null) {
            linkedHashMap.put(FirebaseAnalytics.b.AD_USER_DATA, aVar3);
        }
        FirebaseAnalytics.a aVar4 = this.f67735d;
        if (aVar4 != null) {
            linkedHashMap.put(FirebaseAnalytics.b.AD_PERSONALIZATION, aVar4);
        }
        return linkedHashMap;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a b() {
        return this.f67735d;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a c() {
        return this.f67732a;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a d() {
        return this.f67734c;
    }

    @androidx.annotation.Nullable
    public final FirebaseAnalytics.a e() {
        return this.f67733b;
    }

    public final void f(@Nullable FirebaseAnalytics.a aVar) {
        this.f67735d = aVar;
    }

    public final void g(@Nullable FirebaseAnalytics.a aVar) {
        this.f67732a = aVar;
    }

    public final void h(@Nullable FirebaseAnalytics.a aVar) {
        this.f67734c = aVar;
    }

    public final void i(@Nullable FirebaseAnalytics.a aVar) {
        this.f67733b = aVar;
    }
}
