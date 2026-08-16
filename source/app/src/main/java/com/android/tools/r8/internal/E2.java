package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.HashSet;
import java.util.Set;
import java.util.function.BiConsumer;

public class E2 {
    public static Set<String> a() {
        HashSet hashSet = new HashSet();
        hashSet.add("int android.app.appsearch.AppSearchResult.RESULT_DENIED");
        hashSet.add("int android.app.appsearch.AppSearchResult.RESULT_RATE_LIMITED");
        return hashSet;
    }

    public static Set<String> b() {
        HashSet hashSet = new HashSet();
        hashSet.add("void android.adservices.customaudience.CustomAudienceManager.scheduleCustomAudienceUpdate(android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest, java.util.concurrent.Executor, android.adservices.common.AdServicesOutcomeReceiver)");
        return hashSet;
    }

    public static Set<String> c() {
        HashSet hashSet = new HashSet();
        hashSet.add("androidx.annotation.RecentlyNullable");
        hashSet.add("androidx.annotation.RecentlyNonNull");
        hashSet.add("android.annotation.Nullable");
        hashSet.add("android.annotation.NonNull");
        hashSet.add("android.annotation.FlaggedApi");
        hashSet.add("android.adservices.customaudience.PartialCustomAudience");
        hashSet.add("android.adservices.customaudience.PartialCustomAudience$Builder");
        hashSet.add("android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest$Builder");
        hashSet.add("android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest");
        return hashSet;
    }

    public static void a(C4724u1 c4724u1, BiConsumer biConsumer) {
        com.android.tools.r8.graph.M2[] m2Arr = {c4724u1.f37857F2, c4724u1.f37864G2};
        int i10 = 0;
        for (int i11 = 0; i11 < 2; i11++) {
            com.android.tools.r8.graph.M2 m22 = m2Arr[i11];
            com.android.tools.r8.graph.A2 a10 = c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[0]), "capacity");
            C2 c22 = C2.B;
            biConsumer.accept(a10, c22);
            com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m23, m23), "codePointAt"), c22);
            com.android.tools.r8.graph.M2 m24 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m24, m24), "codePointBefore"), c22);
            com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m25, m25, m25), "codePointCount"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f37884J1), "ensureCapacity"), c22);
            com.android.tools.r8.graph.M2 m26 = c4724u1.f37905M1;
            com.android.tools.r8.graph.M2 m27 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m26, m27, m27, c4724u1.f37926P1, m27), "getChars"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, c4724u1.f38052g2), "indexOf"), c22);
            com.android.tools.r8.graph.M2 m28 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m28, c4724u1.f38052g2, m28), "indexOf"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, c4724u1.f38052g2), "lastIndexOf"), c22);
            com.android.tools.r8.graph.M2 m29 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m29, c4724u1.f38052g2, m29), "lastIndexOf"), c22);
            com.android.tools.r8.graph.M2 m210 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m210, m210, m210), "offsetByCodePoints"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f37884J1, c4724u1.f37863G1), "setCharAt"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f37884J1), "setLength"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f38052g2, c4724u1.f37884J1), "substring"), c22);
            com.android.tools.r8.graph.M2 m211 = c4724u1.f38052g2;
            com.android.tools.r8.graph.M2 m212 = c4724u1.f37884J1;
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(m211, m212, m212), "substring"), c22);
            biConsumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), "trimToSize"), c22);
        }
        biConsumer.accept(c4724u1.a(c4724u1.f38093l3, c4724u1.a(c4724u1.f38085k3, new com.android.tools.r8.graph.M2[0]), "getMap"), C2.N);
        String[] strArr = {"Landroid/nfc/tech/Ndef;", "Landroid/nfc/tech/NfcA;", "Landroid/nfc/tech/NfcB;", "Landroid/nfc/tech/NfcBarcode;", "Landroid/nfc/tech/NfcF;", "Landroid/nfc/tech/NdefFormatable;", "Landroid/nfc/tech/IsoDep;", "Landroid/nfc/tech/MifareClassic;", "Landroid/nfc/tech/MifareUltralight;", "Landroid/nfc/tech/NfcV;"};
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Landroid/nfc/Tag;");
        for (int i12 = 0; i12 < 10; i12++) {
            com.android.tools.r8.graph.M2 d11 = c4724u1.d(strArr[i12]);
            com.android.tools.r8.graph.A2 a11 = c4724u1.a(d11, c4724u1.a(c4724u1.f37849E1, new com.android.tools.r8.graph.M2[0]), "isConnected");
            C2 c23 = C2.K;
            biConsumer.accept(a11, c23);
            biConsumer.accept(c4724u1.a(d11, c4724u1.a(d10, new com.android.tools.r8.graph.M2[0]), "getTag"), c23);
            biConsumer.accept(c4724u1.a(d11, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), "close"), c23);
            biConsumer.accept(c4724u1.a(d11, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), "connect"), c23);
        }
        com.android.tools.r8.graph.M2 d12 = c4724u1.d("Landroid/webkit/CookieSyncManager;");
        com.android.tools.r8.graph.I2 a12 = c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]);
        String[] strArr2 = {"sync", "resetSync", "startSync", "stopSync", "run"};
        for (int i13 = 0; i13 < 5; i13++) {
            biConsumer.accept(c4724u1.a(d12, a12, strArr2[i13]), C2.I);
        }
        com.android.tools.r8.graph.M2 d13 = c4724u1.d("Ljava/time/temporal/ValueRange;");
        com.android.tools.r8.graph.M2 d14 = c4724u1.d("Ljava/time/chrono/ChronoLocalDate;");
        com.android.tools.r8.graph.M2 d15 = c4724u1.d("Ljava/time/temporal/Temporal;");
        com.android.tools.r8.graph.M2 d16 = c4724u1.d("Ljava/time/temporal/TemporalField;");
        com.android.tools.r8.graph.M2 d17 = c4724u1.d("Ljava/time/temporal/TemporalUnit;");
        com.android.tools.r8.graph.M2 d18 = c4724u1.d("Ljava/time/temporal/TemporalAmount;");
        com.android.tools.r8.graph.M2 d19 = c4724u1.d("Ljava/time/temporal/TemporalAdjuster;");
        String[] strArr3 = {"Ljava/time/chrono/JapaneseDate;", "Ljava/time/chrono/MinguoDate;", "Ljava/time/chrono/HijrahDate;", "Ljava/time/chrono/ThaiBuddhistDate;"};
        int i14 = 0;
        while (i14 < 4) {
            com.android.tools.r8.graph.M2 d20 = c4724u1.d(strArr3[i14]);
            com.android.tools.r8.graph.A2 a13 = c4724u1.a(d20, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[i10]), "lengthOfMonth");
            C2 c24 = C2.O;
            biConsumer.accept(a13, c24);
            String[] strArr4 = strArr3;
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[i10]), "lengthOfYear"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.f37849E1, d16), "isSupported"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(d13, d16), "range"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.f37891K1, d16), "getLong"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.d("Ljava/time/chrono/ChronoLocalDateTime;"), c4724u1.d("Ljava/time/LocalTime;")), "atTime"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.d("Ljava/time/chrono/ChronoPeriod;"), d14), "until"), c24);
            com.android.tools.r8.graph.M2 m213 = d13;
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.f37891K1, new com.android.tools.r8.graph.M2[i10]), "toEpochDay"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.f37891K1, d15, d17), "until"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.d("Ljava/time/chrono/Era;"), new com.android.tools.r8.graph.M2[i10]), "getEra"), c24);
            biConsumer.accept(c4724u1.a(d20, c4724u1.a(c4724u1.d("Ljava/time/chrono/Chronology;"), new com.android.tools.r8.graph.M2[i10]), "getChronology"), c24);
            com.android.tools.r8.graph.M2[] m2Arr2 = {d14, d15};
            int i15 = i10;
            while (i15 < 2) {
                com.android.tools.r8.graph.M2 m214 = m2Arr2[i15];
                com.android.tools.r8.graph.A2 a14 = c4724u1.a(d20, c4724u1.a(m214, c4724u1.f37891K1, d17), "minus");
                com.android.tools.r8.graph.M2[] m2Arr3 = m2Arr2;
                C2 c25 = C2.O;
                biConsumer.accept(a14, c25);
                biConsumer.accept(c4724u1.a(d20, c4724u1.a(m214, d18), "minus"), c25);
                biConsumer.accept(c4724u1.a(d20, c4724u1.a(m214, c4724u1.f37891K1, d17), "plus"), c25);
                biConsumer.accept(c4724u1.a(d20, c4724u1.a(m214, d18), "plus"), c25);
                biConsumer.accept(c4724u1.a(d20, c4724u1.a(m214, d16, c4724u1.f37891K1), "with"), c25);
                biConsumer.accept(c4724u1.a(d20, c4724u1.a(m214, d19), "with"), c25);
                i15++;
                m2Arr2 = m2Arr3;
            }
            i14++;
            strArr3 = strArr4;
            d13 = m213;
            i10 = 0;
        }
        biConsumer.accept(c4724u1.a(c4724u1.d("Ljava/time/chrono/HijrahDate;"), c4724u1.a(c4724u1.f37849E1, new com.android.tools.r8.graph.M2[0]), "isLeapYear"), C2.O);
    }
}
