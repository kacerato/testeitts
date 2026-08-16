package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class C8134kk0 {

    public static final HashSet f49747a;

    public static final boolean f49748b = true;

    static {
        HashSet hashSet = new HashSet(AbstractC9595tV.a(1));
        Collections.addAll(hashSet, "Native Method");
        f49747a = hashSet;
    }

    public static String a(String str, String str2, boolean z10) {
        if (!z10 || f49747a.contains(str2)) {
            return str2;
        }
        str2.getClass();
        String name = new File(str2).getName();
        int lastIndexOf = name.lastIndexOf(46);
        String substring = lastIndexOf == -1 ? "" : name.substring(lastIndexOf + 1);
        int lastIndexOf2 = str.lastIndexOf(46);
        int indexOf = str.indexOf(36, lastIndexOf2);
        if (lastIndexOf2 > indexOf || indexOf < 0) {
            indexOf = str.length();
        }
        String substring2 = str.substring(lastIndexOf2 + 1, indexOf);
        if (substring2.endsWith("Kt") && (substring.isEmpty() || substring.equals("kt"))) {
            substring2 = AbstractC4281a.a(substring2, 2, 0);
            substring = "kt";
        } else if (!substring.equals("kt")) {
            substring = SuffixConstants.EXTENSION_java;
        }
        return substring2 + "." + substring;
    }

    public static MethodReference a(V.b bVar, ClassReference classReference) {
        if (bVar.d()) {
            classReference = Reference.classFromDescriptor(C4932Bl.H(bVar.f()));
        }
        ArrayList arrayList = new ArrayList(bVar.f55775d.length);
        for (String str : bVar.f55775d) {
            arrayList.add(Reference.typeFromTypeName(str));
        }
        return Reference.method(classReference, bVar.d() ? bVar.g() : bVar.f55777a, arrayList, Reference.returnTypeFromDescriptor(C4932Bl.H(bVar.f55774c)));
    }
}
