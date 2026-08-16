package com.google.android.gms.internal.measurement;

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
public final class C6 {
    public static final C6 zza;
    public static final C6 zzb;
    public static final C6 zzc;
    public static final C6 zzd;
    public static final C6 zze;
    public static final C6 zzf;
    public static final C6 zzg;
    public static final C6 zzh;
    public static final C6 zzi;
    public static final C6 zzj;
    public static final C6 zzk;
    public static final C6 zzl;
    public static final C6 zzm;
    public static final C6 zzn;
    public static final C6 zzo;
    public static final C6 zzp;
    public static final C6 zzq;
    public static final C6 zzr;
    private static final C6[] zzu;
    private final D6 zzs;
    private final int zzt;

    static {
        C6 c62 = new C6("DOUBLE", 0, D6.DOUBLE, 1);
        zza = c62;
        C6 c63 = new C6("FLOAT", 1, D6.FLOAT, 5);
        zzb = c63;
        D6 d62 = D6.LONG;
        C6 c64 = new C6("INT64", 2, d62, 0);
        zzc = c64;
        C6 c65 = new C6("UINT64", 3, d62, 0);
        zzd = c65;
        D6 d63 = D6.INT;
        C6 c66 = new C6("INT32", 4, d63, 0);
        zze = c66;
        C6 c67 = new C6("FIXED64", 5, d62, 1);
        zzf = c67;
        C6 c68 = new C6("FIXED32", 6, d63, 5);
        zzg = c68;
        C6 c69 = new C6("BOOL", 7, D6.BOOLEAN, 0);
        zzh = c69;
        C6 c610 = new C6("STRING", 8, D6.STRING, 2);
        zzi = c610;
        D6 d64 = D6.MESSAGE;
        C6 c611 = new C6("GROUP", 9, d64, 3);
        zzj = c611;
        C6 c612 = new C6("MESSAGE", 10, d64, 2);
        zzk = c612;
        C6 c613 = new C6("BYTES", 11, D6.BYTE_STRING, 2);
        zzl = c613;
        C6 c614 = new C6("UINT32", 12, d63, 0);
        zzm = c614;
        C6 c615 = new C6("ENUM", 13, D6.ENUM, 0);
        zzn = c615;
        C6 c616 = new C6("SFIXED32", 14, d63, 5);
        zzo = c616;
        C6 c617 = new C6("SFIXED64", 15, d62, 1);
        zzp = c617;
        C6 c618 = new C6("SINT32", 16, d63, 0);
        zzq = c618;
        C6 c619 = new C6("SINT64", 17, d62, 0);
        zzr = c619;
        zzu = new C6[]{c62, c63, c64, c65, c66, c67, c68, c69, c610, c611, c612, c613, c614, c615, c616, c617, c618, c619};
    }

    public C6(String str, int i10, D6 d62, int i11) {
        this.zzs = d62;
        this.zzt = i11;
    }

    public static C6[] values() {
        return (C6[]) zzu.clone();
    }

    public final D6 a() {
        return this.zzs;
    }

    public final int b() {
        return this.zzt;
    }
}
