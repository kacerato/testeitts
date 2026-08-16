package oc;

import android.provider.MediaStore;
import b3.s;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import org.apache.commons.lang3.CharUtils;
import w2.C15883c;

public final class d {
    public static String a(BaseVFXEffect effect, String stage, int line, String functionName) {
        return "Invalid VFX shader [" + effect.getTitle() + s.f32937c + effect.getUID() + "] at " + stage + " line " + line + ". vfxParams/vfxParam must be used only inside the main VFX method. Invalid usage found inside function '" + functionName + "'.";
    }

    public static boolean b(String header) {
        int indexOf = header.indexOf(40);
        int lastIndexOf = header.lastIndexOf(41);
        if (indexOf < 0 || lastIndexOf <= indexOf) {
            return false;
        }
        return c(header.substring(indexOf + 1, lastIndexOf));
    }

    public static boolean c(String args) {
        String trim = args.replace('\n', C15883c.f126249O).replace(CharUtils.CR, C15883c.f126249O).trim();
        if (trim.isEmpty()) {
            return false;
        }
        String[] split = trim.split("\\s+");
        for (int i10 = 0; i10 < split.length - 1; i10++) {
            if ("VFXEmitter".equals(split[i10]) && "emitter".equals(split[i10 + 1])) {
                return true;
            }
        }
        return false;
    }

    public static String d(String header) {
        int indexOf = header.indexOf(40);
        return indexOf <= 0 ? MediaStore.UNKNOWN_STRING : g(header.substring(0, indexOf).trim());
    }

    public static boolean e(String header) {
        int indexOf = header.indexOf(40);
        int lastIndexOf = header.lastIndexOf(41);
        if (indexOf <= 0 || lastIndexOf <= indexOf) {
            return false;
        }
        String trim = header.substring(0, indexOf).trim();
        if (trim.isEmpty()) {
            return false;
        }
        String g10 = g(trim);
        return (g10.isEmpty() || "if".equals(g10) || "for".equals(g10) || "while".equals(g10) || "switch".equals(g10)) ? false : true;
    }

    public static boolean f(char c10) {
        return Character.isLetterOrDigit(c10) || c10 == '_';
    }

    public static String g(String text) {
        int length = text.length() - 1;
        while (length >= 0 && Character.isWhitespace(text.charAt(length))) {
            length--;
        }
        if (length < 0) {
            return "";
        }
        int i10 = length;
        while (i10 >= 0 && f(text.charAt(i10))) {
            i10--;
        }
        return text.substring(i10 + 1, length + 1);
    }

    public static boolean h(String text, String pattern, int offset) {
        int length = pattern.length();
        if (offset + length > text.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (text.charAt(offset + i10) != pattern.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static String i(String code) {
        int i10;
        StringBuilder sb2 = new StringBuilder(code.length());
        int i11 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (i11 < code.length()) {
            char charAt = code.charAt(i11);
            int i12 = i11 + 1;
            char charAt2 = i12 < code.length() ? code.charAt(i12) : (char) 0;
            if (z10) {
                if (charAt == '\n') {
                    sb2.append(charAt);
                    i10 = 1;
                    z10 = false;
                } else {
                    sb2.append(C15883c.f126249O);
                    i10 = 1;
                }
            } else if (z11) {
                if (charAt == '*' && charAt2 == '/') {
                    sb2.append(C15883c.f126249O);
                    sb2.append(C15883c.f126249O);
                    i11 = i12;
                    i10 = 1;
                    z11 = false;
                } else {
                    sb2.append(charAt != '\n' ? ' ' : '\n');
                    i10 = 1;
                }
            } else if (!z12) {
                if (z13) {
                    if (charAt == '\n') {
                        sb2.append('\n');
                        i10 = 1;
                        z13 = false;
                        z14 = false;
                    } else {
                        if (charAt == '\'' && !z14) {
                            z13 = false;
                        }
                        z14 = charAt != '\\' ? false : charAt == '\\' && !z14;
                        sb2.append(C15883c.f126249O);
                    }
                } else if (charAt == '/' && charAt2 == '/') {
                    sb2.append(C15883c.f126249O);
                    sb2.append(C15883c.f126249O);
                    i11 = i12;
                    i10 = 1;
                    z10 = true;
                } else if (charAt == '/' && charAt2 == '*') {
                    sb2.append(C15883c.f126249O);
                    sb2.append(C15883c.f126249O);
                    i11 = i12;
                    i10 = 1;
                    z11 = true;
                } else if (charAt == '\"') {
                    sb2.append(C15883c.f126249O);
                    i10 = 1;
                    z12 = true;
                } else if (charAt == '\'') {
                    sb2.append(C15883c.f126249O);
                    i10 = 1;
                    z13 = true;
                } else {
                    sb2.append(charAt);
                }
                i10 = 1;
            } else if (charAt == '\n') {
                sb2.append('\n');
                i10 = 1;
                z12 = false;
                z14 = false;
            } else {
                if (charAt == '\"' && !z14) {
                    z12 = false;
                }
                z14 = charAt != '\\' ? false : charAt == '\\' && !z14;
                sb2.append(C15883c.f126249O);
                i10 = 1;
            }
            i11 += i10;
        }
        return sb2.toString();
    }

    public static String j(BaseVFXEffect effect, String stage, String code) {
        if (code != null && !code.isEmpty()) {
            String i10 = i(code);
            String str = "<global>";
            int i11 = 0;
            int i12 = 0;
            boolean z10 = false;
            int i13 = 0;
            int i14 = 1;
            int i15 = -1;
            while (i11 < i10.length()) {
                char charAt = i10.charAt(i11);
                if (charAt == '\n') {
                    i14++;
                } else if (!h(i10, "[emitter.index]", i11)) {
                    if (charAt == ';') {
                        if (i12 == 0) {
                            i13 = i11 + 1;
                        }
                    } else if (charAt == '{') {
                        if (i12 == 0) {
                            String trim = i10.substring(i13, i11).trim();
                            if (e(trim)) {
                                i15 = i12 + 1;
                                z10 = b(trim);
                                str = d(trim);
                            } else {
                                str = "<global>";
                                z10 = false;
                                i15 = -1;
                            }
                        }
                        i12++;
                    } else if (charAt == '}') {
                        if (i12 > 0) {
                            i12--;
                        }
                        if (i15 >= 0 && i12 < i15) {
                            if (i12 == 0) {
                                i13 = i11 + 1;
                            }
                            str = "<global>";
                            z10 = false;
                            i15 = -1;
                        }
                    }
                    i11++;
                } else {
                    if (i15 < 0 || !z10) {
                        return a(effect, stage, i14, str);
                    }
                    i11 += 14;
                }
                i11++;
            }
        }
        return null;
    }
}
