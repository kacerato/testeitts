package Vb;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.openjdk.tools.doclint.DocLint;

public class b {

    public String f26799a;

    public String f26800b;

    public String f26801c;

    public String f26802d;

    public boolean f26803e;

    public Object f26804f;

    public b a() {
        b bVar = new b();
        bVar.f26799a = this.f26799a;
        bVar.f26800b = this.f26800b;
        bVar.f26801c = this.f26801c;
        bVar.f26802d = this.f26802d;
        bVar.f26803e = this.f26803e;
        bVar.b();
        return bVar;
    }

    public void b() {
        String str = this.f26800b;
        str.hashCode();
        Float valueOf = Float.valueOf(0.0f);
        int i10 = 0;
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1271649962:
                if (str.equals("float2")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1271649961:
                if (str.equals("float3")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1271649960:
                if (str.equals("float4")) {
                    c10 = 2;
                    break;
                }
                break;
            case -766443171:
                if (str.equals("float01")) {
                    c10 = 3;
                    break;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    c10 = 4;
                    break;
                }
                break;
            case 112845:
                if (str.equals("rgb")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3029738:
                if (str.equals("bool")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3498292:
                if (str.equals("rgba")) {
                    c10 = 7;
                    break;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.f26804f = new float[2];
                String str2 = this.f26802d;
                if (str2 != null) {
                    String[] split = str2.substring(1, str2.length() - 1).split(DocLint.SEPARATOR);
                    while (i10 < split.length) {
                        ((float[]) this.f26804f)[i10] = Nc.b.u1(split[i10]);
                        i10++;
                    }
                    return;
                }
                return;
            case 1:
                this.f26804f = new float[3];
                String str3 = this.f26802d;
                if (str3 != null) {
                    String[] split2 = str3.substring(1, str3.length() - 1).split(DocLint.SEPARATOR);
                    while (i10 < split2.length) {
                        ((float[]) this.f26804f)[i10] = Nc.b.u1(split2[i10]);
                        i10++;
                    }
                    return;
                }
                return;
            case 2:
                this.f26804f = new float[4];
                String str4 = this.f26802d;
                if (str4 != null) {
                    String[] split3 = str4.substring(1, str4.length() - 1).split(DocLint.SEPARATOR);
                    while (i10 < split3.length) {
                        ((float[]) this.f26804f)[i10] = Nc.b.u1(split3[i10]);
                        i10++;
                    }
                    return;
                }
                return;
            case 3:
            case '\b':
                this.f26804f = valueOf;
                String str5 = this.f26802d;
                if (str5 != null) {
                    this.f26804f = Float.valueOf(Nc.b.u1(str5));
                    return;
                }
                return;
            case 4:
                this.f26804f = 0;
                String str6 = this.f26802d;
                if (str6 != null) {
                    this.f26804f = Integer.valueOf(Nc.b.w1(str6));
                    return;
                }
                return;
            case 5:
                this.f26804f = new float[3];
                String str7 = this.f26802d;
                if (str7 != null) {
                    String[] split4 = str7.substring(1, str7.length() - 1).split(DocLint.SEPARATOR);
                    while (i10 < split4.length) {
                        ((float[]) this.f26804f)[i10] = Nc.b.u1(split4[i10]) / 255.0f;
                        i10++;
                    }
                    return;
                }
                return;
            case 6:
                this.f26804f = valueOf;
                String str8 = this.f26802d;
                if (str8 != null) {
                    this.f26804f = Float.valueOf(str8.equalsIgnoreCase("true") ? 1.0f : 0.0f);
                    return;
                }
                return;
            case 7:
                this.f26804f = new float[4];
                String str9 = this.f26802d;
                if (str9 != null) {
                    String[] split5 = str9.substring(1, str9.length() - 1).split(DocLint.SEPARATOR);
                    while (i10 < split5.length) {
                        ((float[]) this.f26804f)[i10] = Nc.b.u1(split5[i10]) / 255.0f;
                        i10++;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }
}
