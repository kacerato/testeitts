package com.google.android.gms.internal.auth;

public final class c3 implements b3 {

    public static final H0 f61708a;

    public static final H0 f61709b;

    public static final H0 f61710c;

    public static final H0 f61711d;

    public static final H0 f61712e;

    static {
        D0 a10 = new D0(C11994v0.a("com.google.android.gms.auth_account")).b().a();
        f61708a = a10.e("Aang__create_auth_exception_with_pending_intent", false);
        f61709b = a10.e("Aang__enable_add_account_restrictions", false);
        f61710c = a10.e("Aang__log_missing_gaia_id_event", true);
        f61711d = a10.e("Aang__log_obfuscated_gaiaid_status", true);
        f61712e = a10.e("Aang__switch_clear_token_to_aang", false);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f61708a.b()).booleanValue();
    }
}
