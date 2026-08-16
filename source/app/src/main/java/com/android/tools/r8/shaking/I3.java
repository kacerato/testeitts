package com.android.tools.r8.shaking;

import java.lang.classfile.Attributes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;

public class I3 {

    public boolean f56569a = false;

    public boolean f56570b = false;

    public boolean f56571c = false;

    public boolean f56572d = false;

    public boolean f56573e = false;

    public boolean f56574f = false;

    public boolean f56575g = false;

    public boolean f56576h = false;

    public boolean f56577i = false;

    public boolean f56578j = false;

    public boolean f56579k = false;

    public boolean f56580l = false;

    public boolean f56581m = false;

    public boolean f56582n = false;

    public boolean f56583o = false;

    public boolean f56584p = false;

    public boolean f56585q = false;

    public boolean f56586r = false;

    public boolean f56587s = false;

    public final I3 a() {
        this.f56569a = true;
        this.f56570b = true;
        this.f56571c = true;
        this.f56572d = true;
        this.f56573e = true;
        this.f56574f = true;
        this.f56575g = true;
        this.f56576h = true;
        this.f56577i = true;
        this.f56578j = true;
        this.f56579k = true;
        this.f56581m = true;
        this.f56583o = true;
        this.f56585q = true;
        this.f56586r = true;
        this.f56587s = true;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I3)) {
            return false;
        }
        I3 i32 = (I3) obj;
        return this.f56569a == i32.f56569a && this.f56570b == i32.f56570b && this.f56571c == i32.f56571c && this.f56572d == i32.f56572d && this.f56573e == i32.f56573e && this.f56574f == i32.f56574f && this.f56577i == i32.f56577i && this.f56578j == i32.f56578j && this.f56579k == i32.f56579k && this.f56580l == i32.f56580l && this.f56581m == i32.f56581m && this.f56582n == i32.f56582n && this.f56583o == i32.f56583o && this.f56584p == i32.f56584p && this.f56585q == i32.f56585q && this.f56586r == i32.f56586r && this.f56587s == i32.f56587s;
    }

    public final int hashCode() {
        return (this.f56569a ? 1 : 0) + (this.f56570b ? 2 : 0) + (this.f56571c ? 4 : 0) + (this.f56572d ? 8 : 0) + (this.f56573e ? 16 : 0) + (this.f56574f ? 32 : 0) + (this.f56578j ? 64 : 0) + (this.f56579k ? 128 : 0) + (this.f56580l ? 256 : 0) + (this.f56581m ? 512 : 0) + (this.f56582n ? 1024 : 0) + (this.f56583o ? 2048 : 0) + (this.f56584p ? 4096 : 0) + (this.f56585q ? 8192 : 0) + (this.f56586r ? 16384 : 0) + (this.f56577i ? 32768 : 0) + (this.f56587s ? 65536 : 0);
    }

    public String toString() {
        return a(new StringBuilder()).toString();
    }

    public static boolean a(boolean z10, String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (z10) {
                return true;
            }
            if (str2.length() > 0 && str2.charAt(0) == '!') {
                if (a(1, 0, str2, str)) {
                    break;
                }
            } else {
                z10 = a(0, 0, str2, str);
            }
        }
        return z10;
    }

    public static boolean a(int i10, int i11, String str, String str2) {
        while (i10 < str.length()) {
            int i12 = i10 + 1;
            char charAt = str.charAt(i10);
            if (charAt == '*') {
                while (i11 < str2.length()) {
                    int i13 = i11 + 1;
                    if (a(i12, i11, str, str2)) {
                        return true;
                    }
                    i11 = i13;
                }
                return i12 >= str.length();
            }
            if (i11 >= str2.length() || str2.charAt(i11) != charAt) {
                return false;
            }
            i11++;
            i10 = i12;
        }
        return i11 == str2.length();
    }

    public static I3 a(List<String> list) {
        I3 i32 = new I3();
        i32.f56569a = a(i32.f56569a, "SourceFile", list);
        i32.f56570b = a(i32.f56570b, "SourceDir", list);
        i32.f56571c = a(i32.f56571c, "InnerClasses", list);
        i32.f56572d = a(i32.f56572d, "EnclosingMethod", list);
        i32.f56576h = a(i32.f56576h, "LocalVariableTypeTable", list);
        i32.f56574f = a(i32.f56574f, "Exceptions", list);
        i32.f56577i = a(i32.f56577i, Attributes.NAME_METHOD_PARAMETERS, list);
        i32.f56573e = a(i32.f56573e, "Signature", list);
        i32.f56578j = a(i32.f56578j, "SourceDebugExtension", list);
        i32.f56579k = a(i32.f56579k, "RuntimeVisibleAnnotations", list);
        i32.f56580l = a(i32.f56580l, "RuntimeInvisibleAnnotations", list);
        i32.f56581m = a(i32.f56581m, "RuntimeVisibleParameterAnnotations", list);
        i32.f56582n = a(i32.f56582n, "RuntimeInvisibleParameterAnnotations", list);
        i32.f56583o = a(i32.f56583o, Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS, list);
        i32.f56584p = a(i32.f56584p, Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS, list);
        i32.f56585q = a(i32.f56585q, "AnnotationDefault", list);
        i32.f56586r = a(i32.f56586r, Attributes.NAME_STACK_MAP_TABLE, list);
        i32.f56587s = a(i32.f56587s, Attributes.NAME_PERMITTED_SUBCLASSES, list);
        return i32;
    }

    public final StringBuilder a(StringBuilder sb2) {
        ArrayList arrayList = new ArrayList();
        if (this.f56569a) {
            arrayList.add("SourceFile");
        }
        if (this.f56570b) {
            arrayList.add("SourceDir");
        }
        if (this.f56571c) {
            arrayList.add("InnerClasses");
        }
        if (this.f56572d) {
            arrayList.add("EnclosingMethod");
        }
        if (this.f56573e) {
            arrayList.add("Signature");
        }
        if (this.f56574f) {
            arrayList.add("Exceptions");
        }
        if (this.f56577i) {
            arrayList.add(Attributes.NAME_METHOD_PARAMETERS);
        }
        if (this.f56578j) {
            arrayList.add("SourceDebugExtension");
        }
        if (this.f56579k) {
            arrayList.add("RuntimeVisibleAnnotations");
        }
        if (this.f56580l) {
            arrayList.add("RuntimeInvisibleAnnotations");
        }
        if (this.f56581m) {
            arrayList.add("RuntimeVisibleParameterAnnotations");
        }
        if (this.f56582n) {
            arrayList.add("RuntimeInvisibleParameterAnnotations");
        }
        if (this.f56583o) {
            arrayList.add(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        }
        if (this.f56584p) {
            arrayList.add(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
        }
        if (this.f56585q) {
            arrayList.add("AnnotationDefault");
        }
        if (this.f56586r) {
            arrayList.add(Attributes.NAME_STACK_MAP_TABLE);
        }
        if (this.f56587s) {
            arrayList.add(Attributes.NAME_PERMITTED_SUBCLASSES);
        }
        if (arrayList.size() > 0) {
            sb2.append("-keepattributes ");
            sb2.append(String.join(DocLint.SEPARATOR, arrayList));
        }
        return sb2;
    }
}
