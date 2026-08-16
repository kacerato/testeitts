package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class B5 {
    public static final B5 zza;
    public static final B5 zzb;
    public static final B5 zzc;
    public static final B5 zzd;
    public static final B5 zze;
    public static final B5 zzf;
    public static final B5 zzg;
    public static final B5 zzh;
    public static final B5 zzi;
    public static final B5 zzj;
    private static final B5[] zzl;
    private final Class zzk;

    static {
        B5 b52 = new B5("VOID", 0, Void.class, Void.class, null);
        zza = b52;
        Class<Integer> cls = Integer.TYPE;
        B5 b53 = new B5("INT", 1, cls, Integer.class, 0);
        zzb = b53;
        B5 b54 = new B5("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = b54;
        B5 b55 = new B5("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = b55;
        B5 b56 = new B5("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = b56;
        B5 b57 = new B5("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = b57;
        B5 b58 = new B5("STRING", 6, String.class, String.class, "");
        zzg = b58;
        B5 b59 = new B5("BYTE_STRING", 7, S4.class, S4.class, S4.f62112c);
        zzh = b59;
        B5 b510 = new B5("ENUM", 8, cls, Integer.class, null);
        zzi = b510;
        B5 b511 = new B5("MESSAGE", 9, Object.class, Object.class, null);
        zzj = b511;
        zzl = new B5[]{b52, b53, b54, b55, b56, b57, b58, b59, b510, b511};
    }

    public B5(String str, int i10, Class cls, Class cls2, Object obj) {
        this.zzk = cls2;
    }

    public static B5[] values() {
        return (B5[]) zzl.clone();
    }

    public final Class a() {
        return this.zzk;
    }
}
