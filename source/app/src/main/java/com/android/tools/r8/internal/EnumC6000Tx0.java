package com.android.tools.r8.internal;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public class EnumC6000Tx0 {

    public static final C5652Nx0 f44626d;

    public static final EnumC6000Tx0 f44627e;

    public static final EnumC6000Tx0[] f44628f;

    public final EnumC6115Vx0 f44629b;

    public final int f44630c;

    EnumC6000Tx0 EF0;

    EnumC6000Tx0 EF1;

    EnumC6000Tx0 EF2;

    static {
        EnumC6000Tx0 enumC6000Tx0 = new EnumC6000Tx0("DOUBLE", 0, EnumC6115Vx0.f45230e, 1);
        EnumC6000Tx0 enumC6000Tx02 = new EnumC6000Tx0("FLOAT", 1, EnumC6115Vx0.f45229d, 5);
        EnumC6115Vx0 enumC6115Vx0 = EnumC6115Vx0.f45228c;
        EnumC6000Tx0 enumC6000Tx03 = new EnumC6000Tx0("INT64", 2, enumC6115Vx0, 0);
        EnumC6000Tx0 enumC6000Tx04 = new EnumC6000Tx0("UINT64", 3, enumC6115Vx0, 0);
        EnumC6115Vx0 enumC6115Vx02 = EnumC6115Vx0.f45227b;
        EnumC6000Tx0 enumC6000Tx05 = new EnumC6000Tx0("INT32", 4, enumC6115Vx02, 0);
        EnumC6000Tx0 enumC6000Tx06 = new EnumC6000Tx0("FIXED64", 5, enumC6115Vx0, 1);
        EnumC6000Tx0 enumC6000Tx07 = new EnumC6000Tx0("FIXED32", 6, enumC6115Vx02, 5);
        EnumC6000Tx0 enumC6000Tx08 = new EnumC6000Tx0("BOOL", 7, EnumC6115Vx0.f45231f, 0);
        C5536Lx0 c5536Lx0 = new C5536Lx0();
        final EnumC6115Vx0 enumC6115Vx03 = EnumC6115Vx0.f45235j;
        C5652Nx0 c5652Nx0 = new C5652Nx0(enumC6115Vx03);
        f44626d = c5652Nx0;
        EnumC6000Tx0 enumC6000Tx09 = new EnumC6000Tx0(enumC6115Vx03) {
            @Override
            public final boolean a() {
                return false;
            }
        };
        final EnumC6115Vx0 enumC6115Vx04 = EnumC6115Vx0.f45233h;
        EnumC6000Tx0 enumC6000Tx010 = new EnumC6000Tx0(enumC6115Vx04) {
            @Override
            public final boolean a() {
                return false;
            }
        };
        EnumC6000Tx0 enumC6000Tx011 = new EnumC6000Tx0("UINT32", 12, enumC6115Vx02, 0);
        EnumC6000Tx0 enumC6000Tx012 = new EnumC6000Tx0("ENUM", 13, EnumC6115Vx0.f45234i, 0);
        f44627e = enumC6000Tx012;
        f44628f = new EnumC6000Tx0[]{enumC6000Tx0, enumC6000Tx02, enumC6000Tx03, enumC6000Tx04, enumC6000Tx05, enumC6000Tx06, enumC6000Tx07, enumC6000Tx08, c5536Lx0, c5652Nx0, enumC6000Tx09, enumC6000Tx010, enumC6000Tx011, enumC6000Tx012, new EnumC6000Tx0("SFIXED32", 14, enumC6115Vx02, 5), new EnumC6000Tx0("SFIXED64", 15, enumC6115Vx0, 1), new EnumC6000Tx0("SINT32", 16, enumC6115Vx02, 0), new EnumC6000Tx0("SINT64", 17, enumC6115Vx0, 0)};
    }

    public EnumC6000Tx0(String str, int i10, EnumC6115Vx0 enumC6115Vx0, int i11) {
        this.f44629b = enumC6115Vx0;
        this.f44630c = i11;
    }

    public boolean a() {
        return !(this instanceof C5536Lx0);
    }

    public EnumC6000Tx0(String str, int i10, EnumC6115Vx0 enumC6115Vx0, int i11, int i12) {
        this.f44629b = enumC6115Vx0;
        this.f44630c = i11;
    }
}
