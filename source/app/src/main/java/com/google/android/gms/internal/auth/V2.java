package com.google.android.gms.internal.auth;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class V2 {
    public static final V2 zza;
    public static final V2 zzb;
    public static final V2 zzc;
    public static final V2 zzd;
    public static final V2 zze;
    public static final V2 zzf;
    public static final V2 zzg;
    public static final V2 zzh;
    public static final V2 zzi;
    public static final V2 zzj;
    public static final V2 zzk;
    public static final V2 zzl;
    public static final V2 zzm;
    public static final V2 zzn;
    public static final V2 zzo;
    public static final V2 zzp;
    public static final V2 zzq;
    public static final V2 zzr;
    private static final V2[] zzs;
    private final W2 zzt;

    static {
        V2 v22 = new V2("DOUBLE", 0, W2.DOUBLE, 1);
        zza = v22;
        V2 v23 = new V2("FLOAT", 1, W2.FLOAT, 5);
        zzb = v23;
        W2 w22 = W2.LONG;
        V2 v24 = new V2("INT64", 2, w22, 0);
        zzc = v24;
        V2 v25 = new V2("UINT64", 3, w22, 0);
        zzd = v25;
        W2 w23 = W2.INT;
        V2 v26 = new V2("INT32", 4, w23, 0);
        zze = v26;
        V2 v27 = new V2("FIXED64", 5, w22, 1);
        zzf = v27;
        V2 v28 = new V2("FIXED32", 6, w23, 5);
        zzg = v28;
        V2 v29 = new V2("BOOL", 7, W2.BOOLEAN, 0);
        zzh = v29;
        V2 v210 = new V2("STRING", 8, W2.STRING, 2);
        zzi = v210;
        W2 w24 = W2.MESSAGE;
        V2 v211 = new V2("GROUP", 9, w24, 3);
        zzj = v211;
        V2 v212 = new V2("MESSAGE", 10, w24, 2);
        zzk = v212;
        V2 v213 = new V2("BYTES", 11, W2.BYTE_STRING, 2);
        zzl = v213;
        V2 v214 = new V2("UINT32", 12, w23, 0);
        zzm = v214;
        V2 v215 = new V2("ENUM", 13, W2.ENUM, 0);
        zzn = v215;
        V2 v216 = new V2("SFIXED32", 14, w23, 5);
        zzo = v216;
        V2 v217 = new V2("SFIXED64", 15, w22, 1);
        zzp = v217;
        V2 v218 = new V2("SINT32", 16, w23, 0);
        zzq = v218;
        V2 v219 = new V2("SINT64", 17, w22, 0);
        zzr = v219;
        zzs = new V2[]{v22, v23, v24, v25, v26, v27, v28, v29, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219};
    }

    public V2(String str, int i10, W2 w22, int i11) {
        this.zzt = w22;
    }

    public static V2[] values() {
        return (V2[]) zzs.clone();
    }

    public final W2 a() {
        return this.zzt;
    }
}
