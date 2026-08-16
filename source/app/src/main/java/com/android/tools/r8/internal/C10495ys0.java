package com.android.tools.r8.internal;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C10495ys0 extends Q2 {

    public final C5293Hr0 f54177b;

    public C10495ys0(Q2 q22, C5293Hr0 c5293Hr0) {
        super(q22);
        this.f54177b = c5293Hr0;
    }

    @Override
    public final void a(Object obj, String str) {
        C5293Hr0 c5293Hr0 = this.f54177b;
        c5293Hr0.b(str);
        if (obj instanceof String) {
            E70.a(c5293Hr0.f39762a, (String) obj);
        } else if (obj instanceof C9663tt0) {
            StringBuilder sb2 = c5293Hr0.f39762a;
            sb2.append(((C9663tt0) obj).a());
            sb2.append(".class");
        } else if (obj instanceof Byte) {
            byte byteValue = ((Byte) obj).byteValue();
            StringBuilder sb3 = c5293Hr0.f39762a;
            sb3.append("(byte)");
            sb3.append((int) byteValue);
        } else if (obj instanceof Boolean) {
            c5293Hr0.f39762a.append(((Boolean) obj).booleanValue());
        } else if (obj instanceof Short) {
            short shortValue = ((Short) obj).shortValue();
            StringBuilder sb4 = c5293Hr0.f39762a;
            sb4.append("(short)");
            sb4.append((int) shortValue);
        } else if (obj instanceof Character) {
            char charValue = ((Character) obj).charValue();
            StringBuilder sb5 = c5293Hr0.f39762a;
            sb5.append("(char)");
            sb5.append((int) charValue);
        } else if (obj instanceof Integer) {
            c5293Hr0.f39762a.append(((Integer) obj).intValue());
        } else if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            StringBuilder sb6 = c5293Hr0.f39762a;
            sb6.append(floatValue);
            sb6.append('F');
        } else if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            StringBuilder sb7 = c5293Hr0.f39762a;
            sb7.append(longValue);
            sb7.append('L');
        } else if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            StringBuilder sb8 = c5293Hr0.f39762a;
            sb8.append(doubleValue);
            sb8.append('D');
        } else if (obj.getClass().isArray()) {
            c5293Hr0.f39762a.append(JavaElement.JEM_COMPILATIONUNIT);
            int i10 = 0;
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                while (i10 < bArr.length) {
                    c5293Hr0.b(i10);
                    byte b10 = bArr[i10];
                    StringBuilder sb9 = c5293Hr0.f39762a;
                    sb9.append("(byte)");
                    sb9.append((int) b10);
                    i10++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                while (i10 < zArr.length) {
                    c5293Hr0.b(i10);
                    c5293Hr0.f39762a.append(zArr[i10]);
                    i10++;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                while (i10 < sArr.length) {
                    c5293Hr0.b(i10);
                    short s10 = sArr[i10];
                    StringBuilder sb10 = c5293Hr0.f39762a;
                    sb10.append("(short)");
                    sb10.append((int) s10);
                    i10++;
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                while (i10 < cArr.length) {
                    c5293Hr0.b(i10);
                    char c10 = cArr[i10];
                    StringBuilder sb11 = c5293Hr0.f39762a;
                    sb11.append("(char)");
                    sb11.append((int) c10);
                    i10++;
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                while (i10 < iArr.length) {
                    c5293Hr0.b(i10);
                    c5293Hr0.f39762a.append(iArr[i10]);
                    i10++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                while (i10 < jArr.length) {
                    c5293Hr0.b(i10);
                    long j10 = jArr[i10];
                    StringBuilder sb12 = c5293Hr0.f39762a;
                    sb12.append(j10);
                    sb12.append('L');
                    i10++;
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                while (i10 < fArr.length) {
                    c5293Hr0.b(i10);
                    float f10 = fArr[i10];
                    StringBuilder sb13 = c5293Hr0.f39762a;
                    sb13.append(f10);
                    sb13.append('F');
                    i10++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                while (i10 < dArr.length) {
                    c5293Hr0.b(i10);
                    double d10 = dArr[i10];
                    StringBuilder sb14 = c5293Hr0.f39762a;
                    sb14.append(d10);
                    sb14.append('D');
                    i10++;
                }
            }
            c5293Hr0.f39762a.append(JavaElement.JEM_ANNOTATION);
        }
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a(obj, str);
        }
    }

    @Override
    public final void a(String str, String str2, String str3) {
        C5293Hr0 c5293Hr0 = this.f54177b;
        c5293Hr0.b(str);
        c5293Hr0.a(1, str2);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append('.');
        sb2.append(str3);
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a(str, str2, str3);
        }
    }

    @Override
    public final Q2 a(String str, String str2) {
        C5293Hr0 c5293Hr0 = this.f54177b;
        c5293Hr0.b(str);
        c5293Hr0.f39762a.append('@');
        c5293Hr0.a(1, str2);
        c5293Hr0.f39762a.append('(');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        return new C10495ys0(super.a(str, str2), c5293Hr0.a(")"));
    }

    @Override
    public final Q2 a(String str) {
        C5293Hr0 c5293Hr0 = this.f54177b;
        c5293Hr0.b(str);
        c5293Hr0.f39762a.append(JavaElement.JEM_COMPILATIONUNIT);
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        return new C10495ys0(super.a(str), c5293Hr0.a(VectorFormat.DEFAULT_SUFFIX));
    }

    @Override
    public final void a() {
        this.f54177b.getClass();
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a();
        }
    }
}
