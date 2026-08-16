package com.itsmagic.engine.Engines.Graphics.MaterialShader;

import JAVARuntime.Texture;
import Nc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import ub.g;
import ub.p;
import yb.C16165b;

public class SerializableShaderEntry {

    public static final String f81148b = "Float";

    public static final String f81149c = "FloatArray";

    public static final String f81150d = "Vector2";

    public static final String f81151e = "Vector3";

    public static final String f81152f = "Texture";

    public static final String f81153g = "Color";

    public static final String f81154h = "Boolean";

    public static final String f81155i = "Int";

    public static final String f81156j = "Boolean";

    public static final String f81157k = "String";

    public transient g f81158a;

    @Expose
    public String data;

    @Expose
    public String name;

    @Expose
    public String type;

    public SerializableShaderEntry() {
        this.name = "";
        this.data = "";
        this.type = "Boolean";
    }

    public static boolean a(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return false;
        }
        return entry.data.equals("true");
    }

    public static ColorINT c(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return ColorINT.l(entry.data);
    }

    public static SerializableShaderEntry d(String name, String type, List<SerializableShaderEntry> serializedShaderEntries) {
        for (int i10 = 0; i10 < serializedShaderEntries.size(); i10++) {
            SerializableShaderEntry serializableShaderEntry = serializedShaderEntries.get(i10);
            if (serializableShaderEntry.name.equalsIgnoreCase(name) && serializableShaderEntry.type.equalsIgnoreCase(type)) {
                return serializableShaderEntry;
            }
        }
        return null;
    }

    public static SerializableShaderEntry e(String name, String type, List<SerializableShaderEntry> serializedShaderEntries) {
        for (int i10 = 0; i10 < serializedShaderEntries.size(); i10++) {
            SerializableShaderEntry serializableShaderEntry = serializedShaderEntries.get(i10);
            if (serializableShaderEntry.name.equalsIgnoreCase(name) && serializableShaderEntry.type.equalsIgnoreCase(type)) {
                return serializableShaderEntry;
            }
        }
        SerializableShaderEntry serializableShaderEntry2 = new SerializableShaderEntry();
        serializableShaderEntry2.name = name;
        serializableShaderEntry2.type = type;
        serializedShaderEntries.add(serializableShaderEntry2);
        return serializableShaderEntry2;
    }

    public static float[] f(SerializableShaderEntry entry) {
        String str;
        if (entry == null || (str = entry.data) == null || str.isEmpty()) {
            return new float[0];
        }
        String str2 = entry.data;
        int indexOf = str2.indexOf(91);
        int i10 = indexOf + 1;
        int indexOf2 = str2.indexOf(93, i10);
        if (indexOf < 0 || indexOf2 < 0) {
            return new float[0];
        }
        int w12 = b.w1(str2.substring(0, indexOf));
        String substring = str2.substring(i10, indexOf2);
        if (substring.isEmpty()) {
            return new float[w12];
        }
        String[] split = substring.split(DocLint.SEPARATOR);
        int min = Math.min(w12, split.length);
        float[] fArr = new float[min];
        for (int i11 = 0; i11 < min; i11++) {
            try {
                fArr[i11] = Float.parseFloat(split[i11]);
            } catch (NumberFormatException unused) {
                fArr[i11] = 0.0f;
            }
        }
        return fArr;
    }

    public static float g(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return 0.0f;
        }
        return b.v1(entry.data, 0.0f);
    }

    public static int h(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return 0;
        }
        return b.x1(entry.data, 0);
    }

    public static void i(SerializableShaderEntry entry, float data) {
        entry.data = "" + data;
    }

    public static void j(SerializableShaderEntry entry, int data) {
        entry.data = "" + data;
    }

    public static void k(SerializableShaderEntry entry, Texture data) {
        if (data != null) {
            p pVar = data.instance;
            if (pVar instanceof g) {
                entry.data = ((g) pVar).getFile();
                return;
            }
        }
        entry.data = "";
    }

    public static void l(SerializableShaderEntry entry, ColorINT data) {
        entry.data = data.toJson();
    }

    public static void m(SerializableShaderEntry entry, Vector2 data) {
        entry.data = data.toJson();
    }

    public static void n(SerializableShaderEntry entry, Vector3 data) {
        entry.data = data.toJson();
    }

    public static void o(SerializableShaderEntry entry, String data) {
        entry.data = data;
    }

    public static void p(SerializableShaderEntry entry, g data) {
        if (data != null) {
            entry.data = data.getFile();
        } else {
            entry.data = null;
        }
    }

    public static void q(SerializableShaderEntry entry, boolean data) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(data ? "true" : "false");
        entry.data = sb2.toString();
    }

    public static void r(SerializableShaderEntry entry, float[] farray) {
        if (farray == null) {
            entry.data = null;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(farray.length);
        sb2.append('[');
        for (int i10 = 0; i10 < farray.length; i10++) {
            sb2.append(farray[i10]);
            if (i10 != farray.length - 1) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        entry.data = sb2.toString();
    }

    public static String s(SerializableShaderEntry entry) {
        return entry.data;
    }

    public static g t(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return null;
        }
        g gVar = entry.f81158a;
        return gVar != null ? gVar : C16165b.u(entry.data);
    }

    public static g u(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return null;
        }
        g gVar = entry.f81158a;
        return gVar != null ? gVar : C16165b.x(entry.data);
    }

    public static Vector2 v(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return Vector2.P(entry.data);
    }

    public static Vector3 w(SerializableShaderEntry entry) {
        String str = entry.data;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return Vector3.fromJson(entry.data);
    }

    public SerializableShaderEntry clone() {
        return new SerializableShaderEntry(this.name, this.data, this.type);
    }

    public SerializableShaderEntry(String name, String data, String type) {
        this.name = name;
        this.data = data;
        this.type = type;
    }
}
