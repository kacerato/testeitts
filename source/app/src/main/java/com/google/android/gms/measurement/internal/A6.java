package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.measurement.EnumC12242z4;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12564r1;
import java.util.Map;

public final class A6 {

    public static final AbstractC12521g1 f62539a = AbstractC12521g1.J("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");

    public static final int f62540b = 0;

    public static String a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    public static int b(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e8  */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean c(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        char c10;
        AbstractC12529i1 abstractC12529i13;
        int i21;
        EnumC12452z6 enumC12452z6;
        int ordinal;
        char c11;
        int e10 = e(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12);
        if (e10 > 0) {
            i16 = i12;
            if (i16 == 1) {
                i15 = i11;
                if (i15 == 1) {
                    i18 = 1;
                    i17 = 1;
                    if (i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i14, str, str2, str3, z10, z11, z12) != com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_NOT_ALLOWED) {
                        c11 = '3';
                    } else {
                        if (enumC12242z4 == EnumC12242z4.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
                            i19 = i14;
                            i20 = 1;
                            if (i19 == 1) {
                                if (abstractC12564r1.contains(str)) {
                                    if (e10 > 0 && cArr[e10] != '2') {
                                        cArr[e10] = '1';
                                    }
                                    return true;
                                }
                                c10 = '2';
                                abstractC12529i13 = abstractC12529i1;
                                i21 = 1;
                                if (abstractC12529i13.containsKey(enumC12242z4) && (enumC12452z6 = (EnumC12452z6) abstractC12529i13.get(enumC12242z4)) != null) {
                                    ordinal = enumC12452z6.ordinal();
                                    if (ordinal == 0) {
                                        if (ordinal != i20) {
                                            if (ordinal == 2) {
                                                return i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) == com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST ? h(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) : g(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12);
                                            }
                                            if (ordinal == 3) {
                                                return i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) == com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_CONSENT ? g(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) : h(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12);
                                            }
                                        } else if (i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) != com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_CONSENT) {
                                            return h(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12);
                                        }
                                    } else if (i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12) != com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST) {
                                        return g(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i21, str, str2, str3, z10, z11, z12);
                                    }
                                    c11 = '8';
                                }
                                c11 = '0';
                            }
                        } else {
                            i19 = i14;
                            i20 = 1;
                        }
                        c10 = '2';
                        abstractC12529i13 = abstractC12529i1;
                        i21 = i19;
                        if (abstractC12529i13.containsKey(enumC12242z4)) {
                            ordinal = enumC12452z6.ordinal();
                            if (ordinal == 0) {
                            }
                            c11 = '8';
                        }
                        c11 = '0';
                    }
                    if (e10 <= 0 && cArr[e10] != '2') {
                        cArr[e10] = c11;
                        return false;
                    }
                }
                i16 = 1;
            } else {
                i15 = i11;
            }
            cArr[e10] = '2';
        } else {
            i15 = i11;
            i16 = i12;
        }
        i17 = i16;
        i18 = i15;
        if (i(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i18, i17, i13, i14, str, str2, str3, z10, z11, z12) != com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_NOT_ALLOWED) {
        }
        return e10 <= 0 ? false : false;
    }

    public static final Map d(AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        if (((Boolean) C12281e2.f63193b1.b(null)).booleanValue() && !z12) {
            return AbstractC12529i1.y();
        }
        EnumC12242z4 enumC12242z4 = EnumC12242z4.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        com.google.android.gms.internal.measurement.A4 a42 = (com.google.android.gms.internal.measurement.A4) abstractC12529i12.get(enumC12242z4);
        EnumC12242z4 enumC12242z42 = EnumC12242z4.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        com.google.android.gms.internal.measurement.A4 a43 = (com.google.android.gms.internal.measurement.A4) abstractC12529i12.get(enumC12242z42);
        EnumC12242z4 enumC12242z43 = EnumC12242z4.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        com.google.android.gms.internal.measurement.A4 a44 = (com.google.android.gms.internal.measurement.A4) abstractC12529i12.get(enumC12242z43);
        EnumC12242z4 enumC12242z44 = EnumC12242z4.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        com.google.android.gms.internal.measurement.A4 a45 = (com.google.android.gms.internal.measurement.A4) abstractC12529i12.get(enumC12242z44);
        return AbstractC12529i1.i().i("Version", "2").i("VendorConsent", true != z10 ? "0" : "1").i("VendorLegitimateInterest", true != z11 ? "0" : "1").i("gdprApplies", i12 != 1 ? "0" : "1").i("EnableAdvertiserConsentMode", i11 != 1 ? "0" : "1").i("PolicyVersion", String.valueOf(i13)).i("CmpSdkID", String.valueOf(i10)).i("PurposeOneTreatment", i14 != 1 ? "0" : "1").i("PublisherCC", str).i("PublisherRestrictions1", String.valueOf(a42 != null ? a42.N1() : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED.N1())).i("PublisherRestrictions3", String.valueOf(a43 != null ? a43.N1() : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED.N1())).i("PublisherRestrictions4", String.valueOf(a44 != null ? a44.N1() : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED.N1())).i("PublisherRestrictions7", String.valueOf(a45 != null ? a45.N1() : com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED.N1())).l(AbstractC12529i1.C("Purpose1", f(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12), "Purpose3", f(enumC12242z42, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12), "Purpose4", f(enumC12242z43, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12), "Purpose7", f(enumC12242z44, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12))).l(AbstractC12529i1.D("AuthorizePurpose1", true != c(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12) ? "0" : "1", "AuthorizePurpose3", true != c(enumC12242z42, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12) ? "0" : "1", "AuthorizePurpose4", true != c(enumC12242z43, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12) ? "0" : "1", "AuthorizePurpose7", true == c(enumC12242z44, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12) ? "1" : "0", "PurposeDiagnostics", new String(cArr))).d();
    }

    public static final int e(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        if (enumC12242z4 == EnumC12242z4.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (enumC12242z4 == EnumC12242z4.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (enumC12242z4 == EnumC12242z4.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return enumC12242z4 == EnumC12242z4.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    public static final String f(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        String str4 = "0";
        String valueOf = (TextUtils.isEmpty(str2) || str2.length() < enumC12242z4.N1()) ? "0" : String.valueOf(str2.charAt(enumC12242z4.N1() - 1));
        if (!TextUtils.isEmpty(str3) && str3.length() >= enumC12242z4.N1()) {
            str4 = String.valueOf(str3.charAt(enumC12242z4.N1() - 1));
        }
        return String.valueOf(valueOf).concat(String.valueOf(str4));
    }

    public static final boolean g(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int e10 = e(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12);
        if (!z10) {
            c10 = '4';
        } else {
            if (str2.length() >= enumC12242z4.N1()) {
                char charAt = str2.charAt(enumC12242z4.N1() - 1);
                boolean z13 = charAt == '1';
                if (e10 > 0 && cArr[e10] != '2') {
                    cArr[e10] = charAt != '1' ? '6' : '1';
                }
                return z13;
            }
            c10 = '0';
        }
        if (e10 > 0 && cArr[e10] != '2') {
            cArr[e10] = c10;
        }
        return false;
    }

    public static final boolean h(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int e10 = e(enumC12242z4, abstractC12529i1, abstractC12529i12, abstractC12564r1, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, z12);
        if (!z11) {
            c10 = '5';
        } else {
            if (str3.length() >= enumC12242z4.N1()) {
                char charAt = str3.charAt(enumC12242z4.N1() - 1);
                boolean z13 = charAt == '1';
                if (e10 > 0 && cArr[e10] != '2') {
                    cArr[e10] = charAt != '1' ? '7' : '1';
                }
                return z13;
            }
            c10 = '0';
        }
        if (e10 > 0 && cArr[e10] != '2') {
            cArr[e10] = c10;
        }
        return false;
    }

    public static final com.google.android.gms.internal.measurement.A4 i(EnumC12242z4 enumC12242z4, AbstractC12529i1 abstractC12529i1, AbstractC12529i1 abstractC12529i12, AbstractC12564r1 abstractC12564r1, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        return (com.google.android.gms.internal.measurement.A4) abstractC12529i12.getOrDefault(enumC12242z4, com.google.android.gms.internal.measurement.A4.PURPOSE_RESTRICTION_UNDEFINED);
    }
}
