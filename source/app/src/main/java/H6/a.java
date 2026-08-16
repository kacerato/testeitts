package H6;

import ag.a0;
import com.bumptech.glide.load.engine.GlideException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public class a {
    public static String a(String code) {
        return b(code, new LinkedList());
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String b(String code, List<String> keywords) {
        int i10;
        String str;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String[] strArr;
        int i11;
        int i12;
        int i13;
        String str2 = "";
        int i14 = 0;
        String str3 = "";
        for (String str4 : code.split("\n")) {
            str3 = str3 + d(str4) + "\n";
        }
        c("Step zero:" + str3);
        String[] split = str3.split("\n");
        String str5 = "";
        boolean z14 = false;
        for (String str6 : split) {
            if (!z14) {
                if (str6.contains("//")) {
                    str6 = str6.substring(0, str6.indexOf("//"));
                } else if (str6.contains("/*")) {
                    if (str6.contains("*/")) {
                        str6 = str6.substring(0, str6.indexOf("/*")) + str6.substring(str6.indexOf("*/") + 2);
                        str5 = str5 + str6 + "\n";
                        z14 = false;
                    } else {
                        str6 = str6.substring(0, str6.indexOf("/*"));
                        z14 = true;
                    }
                }
                str5 = str5 + str6 + "\n";
            } else if (str6.contains("*/")) {
                str5 = str5 + str6.substring(str6.indexOf("*/") + 2) + "\n";
                z14 = false;
            }
        }
        String[] split2 = str5.split("\n");
        int length = split2.length;
        String str7 = "";
        for (int i15 = 0; i15 < length; i15++) {
            String str8 = split2[i15];
            Iterator<String> it = keywords.iterator();
            while (it.hasNext()) {
                str8 = g(str8, it.next(), "KEYWORD");
            }
            str7 = str7 + str8.replaceAll("\\(", h("LPAREN")).replaceAll("\\)", h("RPAREN")).replaceAll("\\{", h("LBRACE")).replaceAll("\\}", h("RBRACE")).replaceAll(";", h("SEMICOLON")).replaceAll("==", h("DUALEQUAL")).replaceAll("!=", h("INVERSEEQUAL")).replaceAll(">=", h("EQUALHIGHTHAN")).replaceAll("<=", h("EQUALSMALLTHAN")).replaceAll("=", h("EQUAL")).replaceAll(">", h("HIGHTHAN")).replaceAll("<", h("SMALLTHAN")).replaceAll("\\+", h("ADD")).replaceAll("-", h("SUB")).replaceAll("\\*", h("MUL")).replaceAll("/", h("DIV")) + "\n";
        }
        c("Step 1:" + str7);
        String[] split3 = str7.split("\n");
        int length2 = split3.length;
        String str9 = "";
        int i16 = 0;
        while (i16 < length2) {
            String str10 = split3[i16];
            c("LINE BEFORE :" + str10);
            LinkedList<d> linkedList = new LinkedList();
            int i17 = i14;
            int i18 = i17;
            char c10 = '\uffff';
            while (i17 < str10.length()) {
                char charAt = str10.charAt(i17);
                if (c10 == 0) {
                    z10 = true;
                } else if (c10 == 1) {
                    z10 = false;
                    z11 = true;
                    z12 = false;
                    z13 = false;
                    if (!z10) {
                        strArr = split3;
                        int i19 = i18;
                        i11 = length2;
                        i12 = i19;
                        if (String.valueOf(charAt).equals("]")) {
                            c("found ] at " + i17);
                            i12 = i17;
                            i13 = 1;
                            c10 = '\uffff';
                        }
                        i13 = 1;
                    } else if (z11) {
                        strArr = split3;
                        int i20 = i18;
                        i11 = length2;
                        i12 = i20;
                        if (!i.a(String.valueOf(charAt))) {
                            linkedList.add(new d(i12, i17, 0));
                            c("word open at" + i12 + " and closed at " + i17);
                            i17--;
                            c10 = '\uffff';
                        }
                        i13 = 1;
                    } else {
                        if (z12) {
                            strArr = split3;
                            int i21 = i18;
                            i11 = length2;
                            i12 = i21;
                            if (!i.c(String.valueOf(charAt)) && !String.valueOf(charAt).equals(".")) {
                                linkedList.add(new d(i12, i17, 1));
                                c("number open at" + i12 + " and closed at " + i17);
                                i17--;
                                c10 = '\uffff';
                            }
                        } else if (z13) {
                            strArr = split3;
                            if (String.valueOf(charAt).equals(JavadocConstants.ANCHOR_PREFIX_END)) {
                                int i22 = i18;
                                i11 = length2;
                                i12 = i22;
                                linkedList.add(new d(i12, i17 + 1, 2));
                                c("string open at" + i12 + " and closed at " + i17);
                                i13 = 1;
                                c10 = '\uffff';
                            } else {
                                int i23 = i18;
                                i11 = length2;
                                i12 = i23;
                            }
                        } else if (String.valueOf(charAt).equals("[")) {
                            c("found [ at " + i17);
                            strArr = split3;
                            i11 = length2;
                            i12 = i17;
                            i13 = 1;
                            c10 = 0;
                        } else {
                            strArr = split3;
                            if (String.valueOf(charAt).equals(JavadocConstants.ANCHOR_PREFIX_END)) {
                                c("found \" at " + i17);
                                i11 = length2;
                                i12 = i17;
                                i13 = 1;
                                c10 = 3;
                            } else {
                                if (i.b(String.valueOf(charAt))) {
                                    c("found a letter at " + i17 + " F:" + charAt);
                                    i18 = i17;
                                    c10 = 1;
                                } else if (i.c(String.valueOf(charAt))) {
                                    c("found a number at " + i17);
                                    i18 = i17;
                                    c10 = 2;
                                }
                                i13 = 1;
                                int i24 = i18;
                                i11 = length2;
                                i12 = i24;
                            }
                        }
                        i13 = 1;
                    }
                    i17 += i13;
                    split3 = strArr;
                    int i25 = i11;
                    i18 = i12;
                    length2 = i25;
                } else if (c10 == 2) {
                    z10 = false;
                    z11 = false;
                    z12 = true;
                    z13 = false;
                    if (!z10) {
                    }
                    i17 += i13;
                    split3 = strArr;
                    int i252 = i11;
                    i18 = i12;
                    length2 = i252;
                } else if (c10 == 3) {
                    z10 = false;
                    z11 = false;
                    z12 = false;
                    z13 = true;
                    if (!z10) {
                    }
                    i17 += i13;
                    split3 = strArr;
                    int i2522 = i11;
                    i18 = i12;
                    length2 = i2522;
                } else {
                    z10 = false;
                }
                z11 = false;
                z12 = false;
                z13 = false;
                if (!z10) {
                }
                i17 += i13;
                split3 = strArr;
                int i25222 = i11;
                i18 = i12;
                length2 = i25222;
            }
            String[] strArr2 = split3;
            int i26 = length2;
            int i27 = 0;
            for (d dVar : linkedList) {
                String substring = str10.substring(dVar.f8246a + i27, dVar.f8247b + i27);
                int i28 = dVar.f8246a;
                String substring2 = i28 + i27 > 0 ? str10.substring(0, i28 + i27) : "";
                String substring3 = str10.substring(dVar.f8247b + i27);
                int i29 = dVar.f8248c;
                if (i29 == 0) {
                    str = substring2 + f(substring, "ID") + substring3;
                    i27 += 7;
                } else if (i29 != 1) {
                    if (i29 == 2) {
                        if (substring.length() > 3) {
                            substring = substring.substring(1, substring.length() - 1);
                        }
                        str = substring2 + f(substring, "STRING") + substring3;
                        i27 += 9;
                    } else {
                        c("MATCH AT BEFORE:" + substring2 + ";   WORD:" + substring + ";  AFTER:" + substring3 + ";");
                    }
                } else if (substring.contains(".")) {
                    str = substring2 + f(substring, "FLOAT") + substring3;
                    i27 += 10;
                } else {
                    str = substring2 + f(substring, "INT") + substring3;
                    i27 += 8;
                }
                str10 = str;
                c("MATCH AT BEFORE:" + substring2 + ";   WORD:" + substring + ";  AFTER:" + substring3 + ";");
            }
            c("LINE AFTER :" + str10);
            str9 = str9 + str10 + "\n";
            i16++;
            length2 = i26;
            split3 = strArr2;
            i14 = 0;
        }
        c("Step 2:" + str9);
        String str11 = "";
        for (String str12 : str9.split("\n")) {
            c("LINE BEFORE :" + str12);
            String replace = str12.replace(String.valueOf('\t') + String.valueOf('\t'), GlideException.a.f59088e).replace(String.valueOf(C15883c.f126249O) + String.valueOf(C15883c.f126249O), GlideException.a.f59088e).replace(String.valueOf(C15883c.f126249O) + String.valueOf(a0.f32065g), GlideException.a.f59088e).replace(String.valueOf(a0.f32065g) + String.valueOf(C15883c.f126249O), GlideException.a.f59088e).replace(String.valueOf(a0.f32065g) + String.valueOf(a0.f32065g), GlideException.a.f59088e).replace(String.valueOf(C15883c.f126249O), " ").replace(String.valueOf(a0.f32065g), " ").replace(GlideException.a.f59088e, "").replace("\n", "");
            if (replace.startsWith(String.valueOf(C15883c.f126249O))) {
                replace = replace.substring(1);
            } else if (replace.startsWith(String.valueOf(a0.f32065g))) {
                replace = replace.substring(1);
            } else if (replace.startsWith(String.valueOf('\t'))) {
                replace = replace.substring(1);
            } else if (replace.startsWith(" ")) {
                replace = replace.substring(1);
            }
            c("LINE AFTER :" + replace);
            str11 = str11 + replace + "\n";
        }
        c("Step 3:" + str11);
        String[] split4 = str11.split("\n");
        String str13 = "";
        for (String str14 : split4) {
            c("LINE BEFORE :" + str14);
            String replace2 = str14.replace("\t", "").replace("]" + String.valueOf(C15883c.f126249O) + "[", "][").replace("]" + String.valueOf(a0.f32065g) + "[", "][").replace("] [", "][");
            if (replace2.endsWith(" ")) {
                i10 = 1;
                replace2 = replace2.substring(0, replace2.length() - 1);
            } else {
                i10 = 1;
            }
            if (replace2.startsWith(" ")) {
                replace2 = replace2.substring(i10);
            }
            c("LINE AFTER :" + replace2);
            str13 = str13 + replace2 + "\n";
        }
        String replace3 = str13.replace("\t", "").replace("]" + String.valueOf(C15883c.f126249O) + "[", "][").replace("]" + String.valueOf(a0.f32065g) + "[", "][").replace("] [", "][");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Step 4:");
        sb2.append(replace3);
        c(sb2.toString());
        String str15 = "";
        for (String str16 : replace3.split("\n")) {
            c("LINE BEFORE :" + str16);
            String replace4 = str16.replace("].[", "]" + h("DOT") + "[").replace("]. [", "]" + h("DOT") + "[").replace("] .[", "]" + h("DOT") + "[").replace("] . [", "]" + h("DOT") + "[").replace("].[", "]" + h("DOT") + "[").replace("].", "]" + h("DOT")).replace("] .", "]" + h("DOT")).replace(" . ", h("DOT")).replace("],[", "]" + h("COMMA") + "[").replace("], [", "]" + h("COMMA") + "[").replace("] ,[", "]" + h("COMMA") + "[").replace("] , [", "]" + h("COMMA") + "[").replace(" , ", h("COMMA")).replace(DocLint.SEPARATOR, h("COMMA"));
            c("LINE AFTER :" + replace4);
            str15 = str15 + replace4 + "\n";
        }
        c("Step 5:" + str15);
        for (String str17 : str15.split("\n")) {
            str2 = str2 + str17;
        }
        String replace5 = str2.replace("] [", "][").replace("] ", "]").replace(" [ ", "[");
        c("Step LAST CODE");
        c(replace5);
        String replace6 = replace5.replace("[DOT][KEYWORD@", "[DOT][ID@");
        if (replace6.endsWith("]")) {
            return replace6;
        }
        return replace6.substring(0, replace6.lastIndexOf("]") + 1) + f(replace6.substring(replace6.lastIndexOf("]") + 1), "ID");
    }

    public static void c(String message) {
    }

    public static String d(String line) {
        while (line.startsWith(String.valueOf(C15883c.f126249O))) {
            line = line.substring(1);
        }
        while (line.startsWith(String.valueOf(a0.f32065g))) {
            line = line.substring(1);
        }
        return line;
    }

    public static String e(String enter, String entry, String type) {
        return enter.replace(f(entry, type), entry);
    }

    public static String f(String text, String type) {
        return "[" + type + "@'" + text + "']";
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
    
        if (r3 != false) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String g(String enter, String entry, String type) {
        if (!enter.contains(entry)) {
            return enter;
        }
        int indexOf = enter.indexOf(entry);
        int length = entry.length() + indexOf;
        char charAt = indexOf > 0 ? enter.charAt(indexOf - 1) : (char) 0;
        char charAt2 = entry.length() + indexOf < enter.length() ? enter.charAt(entry.length() + indexOf) : (char) 0;
        boolean z10 = true;
        if ((charAt != 0 && charAt != '\u00a0' && charAt != ' ') || (charAt2 != 0 && charAt2 != '\u00a0' && charAt2 != ' ')) {
            boolean z11 = charAt == 0 || charAt == '\u00a0' || charAt == ' ';
            if (!z11) {
                if (!i.a("" + charAt)) {
                    z11 = true;
                }
            }
            if (!z11) {
                if (i.d("" + charAt)) {
                    z11 = true;
                }
            }
            if (z11) {
                boolean z12 = charAt2 == 0 || charAt2 == '\u00a0' || charAt2 == ' ';
                if (!z12) {
                    if (!i.a("" + charAt2)) {
                        z12 = true;
                    }
                }
                if (!z12) {
                    if (i.d("" + charAt2)) {
                        z12 = true;
                    }
                }
            }
            z10 = false;
        }
        if (z10) {
            if (indexOf > 0) {
                enter = enter.substring(0, indexOf) + f(entry, type) + enter.substring(length);
            } else {
                enter = f(entry, type) + enter.substring(length);
            }
        }
        return enter.replaceAll(String.valueOf(C15883c.f126249O) + entry + String.valueOf(C15883c.f126249O), " " + f(entry, type) + " ").replaceAll(String.valueOf(C15883c.f126249O) + entry + String.valueOf(a0.f32065g), " " + f(entry, type) + " ").replaceAll(String.valueOf(a0.f32065g) + entry + String.valueOf(C15883c.f126249O), " " + f(entry, type) + " ").replaceAll(String.valueOf(a0.f32065g) + entry + String.valueOf(a0.f32065g), " " + f(entry, type) + " ").replaceAll(" " + entry + " ", " " + f(entry, type) + " ").replaceAll(DocLint.SEPARATOR + entry + " ", DocLint.SEPARATOR + f(entry, type) + " ");
    }

    public static String h(String type) {
        return "[" + type + "]";
    }
}
