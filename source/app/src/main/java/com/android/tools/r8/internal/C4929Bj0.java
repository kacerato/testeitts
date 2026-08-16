package com.android.tools.r8.internal;

public final class C4929Bj0 extends ZQ implements InterfaceC8676ny {

    public static final C4929Bj0 f38986b = new C4929Bj0();

    public C4929Bj0() {
        super(1);
    }

    @Override
    public final Object a(Object obj) {
        boolean z10 = true;
        C8623ng0 c8623ng0 = (C8623ng0) obj;
        GJ.c(c8623ng0, "it");
        String str = c8623ng0.f51023d;
        AbstractC7552hC abstractC7552hC = AbstractC7970jl0.f49340a;
        str.getClass();
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1830324637:
                if (str.equals(K2.p.f10766l)) {
                    c10 = 0;
                    break;
                }
                break;
            case -750253324:
                if (str.equals(K2.p.f10767m)) {
                    c10 = 1;
                    break;
                }
                break;
            case -228400373:
                if (str.equals("google_crash_reporting_api_key")) {
                    c10 = 2;
                    break;
                }
                break;
            case -75590465:
                if (str.equals(K2.p.f10763i)) {
                    c10 = 3;
                    break;
                }
                break;
            case 1684540387:
                if (str.equals(K2.p.f10764j)) {
                    c10 = 4;
                    break;
                }
                break;
            case 1737683607:
                if (str.equals("ga_trackingID")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1760998758:
                if (str.equals("default_web_client_id")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1945200308:
                if (str.equals(K2.p.f10762h)) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                break;
            default:
                z10 = false;
                break;
        }
        return Boolean.valueOf(z10);
    }
}
