package com.jme3.system;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Windows64' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class Platform {
    private static final Platform[] $VALUES;
    public static final Platform Android_ARM8;
    public static final Platform Android_X86_64;
    public static final Platform Linux64;
    public static final Platform Linux_ARM64;
    public static final Platform MacOSX64;
    public static final Platform MacOSX_ARM64;
    public static final Platform Web;
    public static final Platform Windows64;
    public static final Platform Windows_ARM64;
    public static final Platform iOS_ARM;
    public static final Platform iOS_X86;
    private final boolean is64bit;
    private final Os os;

    public enum Os {
        Linux,
        Windows,
        iOS,
        MacOS,
        Android,
        Web
    }

    private static Platform[] $values() {
        return new Platform[]{Windows64, Windows_ARM64, Linux64, Linux_ARM64, MacOSX64, MacOSX_ARM64, Android_ARM8, Android_X86_64, iOS_ARM, iOS_X86, Web};
    }

    static {
        Os os = Os.Windows;
        Windows64 = new Platform("Windows64", 0, os, true);
        Windows_ARM64 = new Platform("Windows_ARM64", 1, os, true);
        Os os2 = Os.Linux;
        Linux64 = new Platform("Linux64", 2, os2, true);
        Linux_ARM64 = new Platform("Linux_ARM64", 3, os2, true);
        Os os3 = Os.MacOS;
        MacOSX64 = new Platform("MacOSX64", 4, os3, true);
        MacOSX_ARM64 = new Platform("MacOSX_ARM64", 5, os3, true);
        Os os4 = Os.Android;
        Android_ARM8 = new Platform("Android_ARM8", 6, os4, true);
        Android_X86_64 = new Platform("Android_X86_64", 7, os4, true);
        Os os5 = Os.iOS;
        iOS_ARM = new Platform("iOS_ARM", 8, os5, true);
        iOS_X86 = new Platform("iOS_X86", 9, os5, true);
        Web = new Platform("Web", 10, Os.Web, true);
        $VALUES = $values();
    }

    private Platform(String str, int i10, Os os, boolean z10) {
        this.os = os;
        this.is64bit = z10;
    }

    public static Platform valueOf(String str) {
        return (Platform) Enum.valueOf(Platform.class, str);
    }

    public static Platform[] values() {
        return (Platform[]) $VALUES.clone();
    }

    public Os getOs() {
        return this.os;
    }

    public boolean is64Bit() {
        return this.is64bit;
    }

    private Platform(String str, int i10, Os os) {
        this(str, i10, os, false);
    }
}
