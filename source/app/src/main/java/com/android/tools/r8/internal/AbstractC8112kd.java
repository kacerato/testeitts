package com.android.tools.r8.internal;

import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.util.LinkedHashMap;
import java.util.List;
import org.eclipse.jdt.core.Signature;

public abstract class AbstractC8112kd {

    public static final String f49694a = AbstractC6303Ze.a(AbstractC6619bf.a('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);

    public static final LinkedHashMap f49695b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List a10 = AbstractC6619bf.a("Boolean", Signature.SIG_BOOLEAN, "Char", Signature.SIG_CHAR, "Byte", Signature.SIG_BYTE, "Short", "S", SerializableShaderEntry.f81155i, Signature.SIG_INT, SerializableShaderEntry.f81148b, Signature.SIG_FLOAT, "Long", Signature.SIG_LONG, "Double", Signature.SIG_DOUBLE);
        int size = a10.size() - 1;
        if (size > 0) {
            int i10 = size % 2;
            if (i10 < 0) {
                i10 += 2;
            }
            int i11 = i10 % 2;
            if (i11 < 0) {
                i11 += 2;
            }
            size -= i11;
        }
        if (size >= 0) {
            int i12 = 0;
            while (true) {
                StringBuilder sb2 = new StringBuilder();
                String str = f49694a;
                sb2.append(str);
                sb2.append('/');
                sb2.append((String) a10.get(i12));
                int i13 = i12 + 1;
                linkedHashMap.put(sb2.toString(), a10.get(i13));
                linkedHashMap.put(str + '/' + ((String) a10.get(i12)) + Array.f73819J, "[" + ((String) a10.get(i13)));
                if (i12 == size) {
                    break;
                } else {
                    i12 += 2;
                }
            }
        }
        linkedHashMap.put(f49694a + "/Unit", "V");
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : AbstractC6619bf.a(SerializableShaderEntry.f81157k, "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum")) {
            a(linkedHashMap, str2, "java/lang/" + str2);
        }
        for (String str3 : AbstractC6619bf.a("Iterator", "Collection", C12667d1.f69075a, "Set", C12667d1.f69077c, "ListIterator")) {
            a(linkedHashMap, AbstractC5091Ee0.a("collections/", str3), "java/util/" + str3);
            a(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i14 = 0; i14 < 23; i14++) {
            String a11 = T60.a(i14, "Function");
            StringBuilder sb3 = new StringBuilder();
            String str4 = f49694a;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i14);
            a(linkedHashMap, a11, sb3.toString());
            a(linkedHashMap, "reflect/KFunction" + i14, str4 + "/reflect/KFunction");
        }
        for (String str5 : AbstractC6619bf.a("Char", "Byte", "Short", SerializableShaderEntry.f81155i, SerializableShaderEntry.f81148b, "Long", "Double", SerializableShaderEntry.f81157k, "Enum")) {
            a(linkedHashMap, AbstractC9349s.a(str5, ".Companion"), f49694a + "/jvm/internal/" + str5 + "CompanionObject");
        }
        f49695b = linkedHashMap;
    }

    public static final void a(LinkedHashMap linkedHashMap, String str, String str2) {
        linkedHashMap.put(f49694a + '/' + str, "L" + str2 + ';');
    }
}
