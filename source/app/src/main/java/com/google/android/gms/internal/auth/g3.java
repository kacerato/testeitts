package com.google.android.gms.internal.auth;

import android.util.Base64;

public final class g3 implements e3 {

    public static final H0 f61739a;

    public static final H0 f61740b;

    public static final H0 f61741c;

    public static final H0 f61742d;

    public static final H0 f61743e;

    public static final H0 f61744f;

    public static final H0 f61745g;

    public static final H0 f61746h;

    public static final H0 f61747i;

    public static final H0 f61748j;

    public static final H0 f61749k;

    public static final H0 f61750l;

    public static final H0 f61751m;

    static {
        D0 a10 = new D0(C11994v0.a("com.google.android.gms.auth_account")).b().a();
        f61739a = a10.c("getTokenRefactor__account_data_service_sample_percentage", 0.0d);
        f61740b = a10.e("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        f61741c = a10.d("getTokenRefactor__account_manager_timeout_seconds", 20L);
        f61742d = a10.d("getTokenRefactor__android_id_shift", 0L);
        try {
            f61743e = a10.f("getTokenRefactor__blocked_packages", Z2.p(Base64.decode("ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n", 3)), f3.f61735a);
            f61744f = a10.e("getTokenRefactor__chimera_get_token_evolved", true);
            f61745g = a10.d("getTokenRefactor__clear_token_timeout_seconds", 20L);
            f61746h = a10.d("getTokenRefactor__default_task_timeout_seconds", 20L);
            f61747i = a10.e("getTokenRefactor__gaul_accounts_api_evolved", false);
            f61748j = a10.e("getTokenRefactor__gaul_token_api_evolved", false);
            f61749k = a10.d("getTokenRefactor__get_token_timeout_seconds", 120L);
            f61750l = a10.e("getTokenRefactor__gms_account_authenticator_evolved", true);
            f61751m = a10.c("getTokenRefactor__gms_account_authenticator_sample_percentage", 0.0d);
        } catch (Exception e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public final Z2 N1() {
        return (Z2) f61743e.b();
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f61747i.b()).booleanValue();
    }

    @Override
    public final boolean P1() {
        return ((Boolean) f61748j.b()).booleanValue();
    }
}
