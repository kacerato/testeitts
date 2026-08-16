package B;

import B.a;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

public class f implements a {

    public static final String f1102A = "f";

    public static final int f1103B = 4096;

    public static final int f1104C = -1;

    public static final int f1105D = -1;

    public static final int f1106E = 4;

    public static final int f1107F = 255;

    @ColorInt
    public static final int f1108G = 0;

    @ColorInt
    public int[] f1109f;

    @ColorInt
    public final int[] f1110g;

    public final a.InterfaceC0021a f1111h;

    public ByteBuffer f1112i;

    public byte[] f1113j;

    public d f1114k;

    public short[] f1115l;

    public byte[] f1116m;

    public byte[] f1117n;

    public byte[] f1118o;

    @ColorInt
    public int[] f1119p;

    public int f1120q;

    public c f1121r;

    public Bitmap f1122s;

    public boolean f1123t;

    public int f1124u;

    public int f1125v;

    public int f1126w;

    public int f1127x;

    @Nullable
    public Boolean f1128y;

    @NonNull
    public Bitmap.Config f1129z;

    public f(@NonNull a.InterfaceC0021a interfaceC0021a, c cVar, ByteBuffer byteBuffer) {
        this(interfaceC0021a, cVar, byteBuffer, 1);
    }

    @ColorInt
    public final int a(int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = i10; i18 < this.f1125v + i10; i18++) {
            byte[] bArr = this.f1118o;
            if (i18 >= bArr.length || i18 >= i11) {
                break;
            }
            int i19 = this.f1109f[bArr[i18] & 255];
            if (i19 != 0) {
                i13 += (i19 >> 24) & 255;
                i14 += (i19 >> 16) & 255;
                i15 += (i19 >> 8) & 255;
                i16 += i19 & 255;
                i17++;
            }
        }
        int i20 = i10 + i12;
        for (int i21 = i20; i21 < this.f1125v + i20; i21++) {
            byte[] bArr2 = this.f1118o;
            if (i21 >= bArr2.length || i21 >= i11) {
                break;
            }
            int i22 = this.f1109f[bArr2[i21] & 255];
            if (i22 != 0) {
                i13 += (i22 >> 24) & 255;
                i14 += (i22 >> 16) & 255;
                i15 += (i22 >> 8) & 255;
                i16 += i22 & 255;
                i17++;
            }
        }
        if (i17 == 0) {
            return 0;
        }
        return ((i13 / i17) << 24) | ((i14 / i17) << 16) | ((i15 / i17) << 8) | (i16 / i17);
    }

    public final void b(b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = this.f1119p;
        int i15 = bVar.f1055d;
        int i16 = this.f1125v;
        int i17 = i15 / i16;
        int i18 = bVar.f1053b / i16;
        int i19 = bVar.f1054c / i16;
        int i20 = bVar.f1052a / i16;
        boolean z10 = this.f1120q == 0;
        int i21 = this.f1127x;
        int i22 = this.f1126w;
        byte[] bArr = this.f1118o;
        int[] iArr2 = this.f1109f;
        Boolean bool = this.f1128y;
        int i23 = 8;
        int i24 = 0;
        int i25 = 0;
        int i26 = 1;
        while (i25 < i17) {
            Boolean bool2 = bool;
            if (bVar.f1056e) {
                if (i24 >= i17) {
                    int i27 = i26 + 1;
                    i10 = i17;
                    if (i27 == 2) {
                        i24 = 4;
                    } else if (i27 == 3) {
                        i23 = 4;
                        i26 = i27;
                        i24 = 2;
                    } else if (i27 == 4) {
                        i26 = i27;
                        i24 = 1;
                        i23 = 2;
                    }
                    i26 = i27;
                } else {
                    i10 = i17;
                }
                i11 = i24 + i23;
            } else {
                i10 = i17;
                i11 = i24;
                i24 = i25;
            }
            int i28 = i24 + i18;
            boolean z11 = i16 == 1;
            if (i28 < i22) {
                int i29 = i28 * i21;
                int i30 = i29 + i20;
                int i31 = i30 + i19;
                int i32 = i29 + i21;
                if (i32 < i31) {
                    i31 = i32;
                }
                i12 = i11;
                int i33 = i25 * i16 * bVar.f1054c;
                if (z11) {
                    int i34 = i30;
                    while (i34 < i31) {
                        int i35 = i18;
                        int i36 = iArr2[bArr[i33] & 255];
                        if (i36 != 0) {
                            iArr[i34] = i36;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i34++;
                        i18 = i35;
                    }
                } else {
                    i14 = i18;
                    int i37 = ((i31 - i30) * i16) + i33;
                    int i38 = i30;
                    while (true) {
                        i13 = i19;
                        if (i38 >= i31) {
                            break;
                        }
                        int a10 = a(i33, i37, bVar.f1054c);
                        if (a10 != 0) {
                            iArr[i38] = a10;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i38++;
                        i19 = i13;
                    }
                    bool = bool2;
                    i25++;
                    i18 = i14;
                    i17 = i10;
                    i19 = i13;
                    i24 = i12;
                }
            } else {
                i12 = i11;
            }
            i14 = i18;
            i13 = i19;
            bool = bool2;
            i25++;
            i18 = i14;
            i17 = i10;
            i19 = i13;
            i24 = i12;
        }
        Boolean bool3 = bool;
        if (this.f1128y == null) {
            this.f1128y = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    public final void c(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f1119p;
        int i10 = bVar2.f1055d;
        int i11 = bVar2.f1053b;
        int i12 = bVar2.f1054c;
        int i13 = bVar2.f1052a;
        boolean z10 = this.f1120q == 0;
        int i14 = this.f1127x;
        byte[] bArr = this.f1118o;
        int[] iArr2 = this.f1109f;
        int i15 = 0;
        byte b10 = -1;
        while (i15 < i10) {
            int i16 = (i15 + i11) * i14;
            int i17 = i16 + i13;
            int i18 = i17 + i12;
            int i19 = i16 + i14;
            if (i19 < i18) {
                i18 = i19;
            }
            int i20 = bVar2.f1054c * i15;
            int i21 = i17;
            while (i21 < i18) {
                byte b11 = bArr[i20];
                int i22 = i10;
                int i23 = b11 & 255;
                if (i23 != b10) {
                    int i24 = iArr2[i23];
                    if (i24 != 0) {
                        iArr[i21] = i24;
                    } else {
                        b10 = b11;
                    }
                }
                i20++;
                i21++;
                i10 = i22;
            }
            i15++;
            bVar2 = bVar;
        }
        Boolean bool = this.f1128y;
        this.f1128y = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f1128y == null && z10 && b10 != -1));
    }

    @Override
    public void clear() {
        this.f1121r = null;
        byte[] bArr = this.f1118o;
        if (bArr != null) {
            this.f1111h.e(bArr);
        }
        int[] iArr = this.f1119p;
        if (iArr != null) {
            this.f1111h.f(iArr);
        }
        Bitmap bitmap = this.f1122s;
        if (bitmap != null) {
            this.f1111h.c(bitmap);
        }
        this.f1122s = null;
        this.f1112i = null;
        this.f1128y = null;
        byte[] bArr2 = this.f1113j;
        if (bArr2 != null) {
            this.f1111h.e(bArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    public final void d(b bVar) {
        int i10;
        int i11;
        short s10;
        f fVar = this;
        if (bVar != null) {
            fVar.f1112i.position(bVar.f1061j);
        }
        if (bVar == null) {
            c cVar = fVar.f1121r;
            i10 = cVar.f1070f;
            i11 = cVar.f1071g;
        } else {
            i10 = bVar.f1054c;
            i11 = bVar.f1055d;
        }
        int i12 = i10 * i11;
        byte[] bArr = fVar.f1118o;
        if (bArr == null || bArr.length < i12) {
            fVar.f1118o = fVar.f1111h.a(i12);
        }
        byte[] bArr2 = fVar.f1118o;
        if (fVar.f1115l == null) {
            fVar.f1115l = new short[4096];
        }
        short[] sArr = fVar.f1115l;
        if (fVar.f1116m == null) {
            fVar.f1116m = new byte[4096];
        }
        byte[] bArr3 = fVar.f1116m;
        if (fVar.f1117n == null) {
            fVar.f1117n = new byte[4097];
        }
        byte[] bArr4 = fVar.f1117n;
        int x10 = x();
        int i13 = 1 << x10;
        int i14 = i13 + 1;
        int i15 = i13 + 2;
        int i16 = x10 + 1;
        int i17 = (1 << i16) - 1;
        int i18 = 0;
        for (int i19 = 0; i19 < i13; i19++) {
            sArr[i19] = 0;
            bArr3[i19] = (byte) i19;
        }
        byte[] bArr5 = fVar.f1113j;
        int i20 = i16;
        int i21 = i15;
        int i22 = i17;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = -1;
        while (true) {
            if (i18 >= i12) {
                break;
            }
            if (i23 == 0) {
                i23 = w();
                if (i23 <= 0) {
                    fVar.f1124u = 3;
                    break;
                }
                i24 = 0;
            }
            i26 += (bArr5[i24] & 255) << i25;
            i24++;
            i23--;
            int i31 = i25 + 8;
            int i32 = i21;
            int i33 = i20;
            int i34 = i30;
            int i35 = i16;
            int i36 = i28;
            while (true) {
                if (i31 < i33) {
                    i30 = i34;
                    i21 = i32;
                    i25 = i31;
                    fVar = this;
                    i28 = i36;
                    i16 = i35;
                    i20 = i33;
                    break;
                }
                int i37 = i15;
                int i38 = i26 & i22;
                i26 >>= i33;
                i31 -= i33;
                if (i38 == i13) {
                    i22 = i17;
                    i33 = i35;
                    i32 = i37;
                    i15 = i32;
                    i34 = -1;
                } else {
                    if (i38 == i14) {
                        i25 = i31;
                        i28 = i36;
                        i21 = i32;
                        i16 = i35;
                        i15 = i37;
                        i30 = i34;
                        i20 = i33;
                        fVar = this;
                        break;
                    }
                    if (i34 == -1) {
                        bArr2[i27] = bArr3[i38];
                        i27++;
                        i18++;
                        i34 = i38;
                        i36 = i34;
                        i15 = i37;
                        i31 = i31;
                    } else {
                        if (i38 >= i32) {
                            bArr4[i29] = (byte) i36;
                            i29++;
                            s10 = i34;
                        } else {
                            s10 = i38;
                        }
                        while (s10 >= i13) {
                            bArr4[i29] = bArr3[s10];
                            i29++;
                            s10 = sArr[s10];
                        }
                        i36 = bArr3[s10] & 255;
                        byte b10 = (byte) i36;
                        bArr2[i27] = b10;
                        while (true) {
                            i27++;
                            i18++;
                            if (i29 <= 0) {
                                break;
                            }
                            i29--;
                            bArr2[i27] = bArr4[i29];
                        }
                        byte[] bArr6 = bArr4;
                        if (i32 < 4096) {
                            sArr[i32] = (short) i34;
                            bArr3[i32] = b10;
                            i32++;
                            if ((i32 & i22) == 0 && i32 < 4096) {
                                i33++;
                                i22 += i32;
                            }
                        }
                        i34 = i38;
                        i15 = i37;
                        i31 = i31;
                        bArr4 = bArr6;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i27, i12, (byte) 0);
    }

    @NonNull
    public final d e() {
        if (this.f1114k == null) {
            this.f1114k = new d();
        }
        return this.f1114k;
    }

    public final Bitmap f() {
        Boolean bool = this.f1128y;
        Bitmap b10 = this.f1111h.b(this.f1127x, this.f1126w, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f1129z);
        b10.setHasAlpha(true);
        return b10;
    }

    @Override
    public void g() {
        this.f1120q = (this.f1120q + 1) % this.f1121r.f1067c;
    }

    @Override
    @NonNull
    public ByteBuffer getData() {
        return this.f1112i;
    }

    @Override
    public int getHeight() {
        return this.f1121r.f1071g;
    }

    @Override
    public int getStatus() {
        return this.f1124u;
    }

    @Override
    public int getWidth() {
        return this.f1121r.f1070f;
    }

    @Override
    public void h(@NonNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f1129z = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + ((Object) config) + ", must be one of " + ((Object) config3) + " or " + ((Object) config2));
    }

    @Override
    @Deprecated
    public int i() {
        int i10 = this.f1121r.f1077m;
        if (i10 == -1) {
            return 1;
        }
        return i10;
    }

    @Override
    public synchronized void j(@NonNull c cVar, @NonNull byte[] bArr) {
        t(cVar, ByteBuffer.wrap(bArr));
    }

    @Override
    public void k() {
        this.f1120q = -1;
    }

    @Override
    public int l() {
        return this.f1120q;
    }

    @Override
    public int m(@Nullable InputStream inputStream, int i10) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i10 > 0 ? i10 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                Log.w(f1102A, "Error reading data from stream", e10);
            }
        } else {
            this.f1124u = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e11) {
                Log.w(f1102A, "Error closing stream", e11);
            }
        }
        return this.f1124u;
    }

    @Override
    public int n() {
        return this.f1112i.limit() + this.f1118o.length + (this.f1119p.length * 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069 A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082 A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a4 A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007a A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d0 A[Catch: all -> 0x000e, TRY_LEAVE, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x003d, B:13:0x0047, B:15:0x004e, B:16:0x0058, B:18:0x0069, B:19:0x0075, B:22:0x007e, B:24:0x0082, B:26:0x008a, B:27:0x00a0, B:31:0x00a4, B:33:0x00a8, B:35:0x00ba, B:37:0x00be, B:38:0x00c2, B:41:0x007a, B:43:0x00c8, B:45:0x00d0, B:48:0x0011, B:50:0x0019, B:51:0x003b), top: B:2:0x0001 }] */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized Bitmap o() {
        int i10;
        String str;
        int[] iArr;
        try {
            if (this.f1121r.f1067c > 0) {
                if (this.f1120q < 0) {
                }
                i10 = this.f1124u;
                if (i10 != 1 && i10 != 2) {
                    this.f1124u = 0;
                    if (this.f1113j == null) {
                        this.f1113j = this.f1111h.a(255);
                    }
                    b bVar = this.f1121r.f1069e.get(this.f1120q);
                    int i11 = this.f1120q - 1;
                    b bVar2 = i11 < 0 ? this.f1121r.f1069e.get(i11) : null;
                    iArr = bVar.f1062k;
                    if (iArr != null) {
                        iArr = this.f1121r.f1065a;
                    }
                    this.f1109f = iArr;
                    if (iArr != null) {
                        String str2 = f1102A;
                        if (Log.isLoggable(str2, 3)) {
                            Log.d(str2, "No valid color table found for frame #" + this.f1120q);
                        }
                        this.f1124u = 1;
                        return null;
                    }
                    if (bVar.f1057f) {
                        System.arraycopy(iArr, 0, this.f1110g, 0, iArr.length);
                        int[] iArr2 = this.f1110g;
                        this.f1109f = iArr2;
                        iArr2[bVar.f1059h] = 0;
                        if (bVar.f1058g == 2 && this.f1120q == 0) {
                            this.f1128y = Boolean.TRUE;
                        }
                    }
                    return y(bVar, bVar2);
                }
                str = f1102A;
                if (Log.isLoggable(str, 3)) {
                    Log.d(str, "Unable to decode frame, status=" + this.f1124u);
                }
                return null;
            }
            String str3 = f1102A;
            if (Log.isLoggable(str3, 3)) {
                Log.d(str3, "Unable to decode frame, frameCount=" + this.f1121r.f1067c + ", framePointer=" + this.f1120q);
            }
            this.f1124u = 1;
            i10 = this.f1124u;
            if (i10 != 1) {
                this.f1124u = 0;
                if (this.f1113j == null) {
                }
                b bVar3 = this.f1121r.f1069e.get(this.f1120q);
                int i112 = this.f1120q - 1;
                if (i112 < 0) {
                }
                iArr = bVar3.f1062k;
                if (iArr != null) {
                }
                this.f1109f = iArr;
                if (iArr != null) {
                }
            }
            str = f1102A;
            if (Log.isLoggable(str, 3)) {
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public int p() {
        return this.f1121r.f1067c;
    }

    @Override
    public int q(int i10) {
        if (i10 >= 0) {
            c cVar = this.f1121r;
            if (i10 < cVar.f1067c) {
                return cVar.f1069e.get(i10).f1060i;
            }
        }
        return -1;
    }

    @Override
    public synchronized void r(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i10) {
        try {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
            }
            int highestOneBit = Integer.highestOneBit(i10);
            this.f1124u = 0;
            this.f1121r = cVar;
            this.f1120q = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f1112i = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f1112i.order(ByteOrder.LITTLE_ENDIAN);
            this.f1123t = false;
            Iterator<b> it = cVar.f1069e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f1058g == 3) {
                    this.f1123t = true;
                    break;
                }
            }
            this.f1125v = highestOneBit;
            int i11 = cVar.f1070f;
            this.f1127x = i11 / highestOneBit;
            int i12 = cVar.f1071g;
            this.f1126w = i12 / highestOneBit;
            this.f1118o = this.f1111h.a(i11 * i12);
            this.f1119p = this.f1111h.d(this.f1127x * this.f1126w);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized int read(@Nullable byte[] bArr) {
        try {
            c d10 = e().r(bArr).d();
            this.f1121r = d10;
            if (bArr != null) {
                j(d10, bArr);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f1124u;
    }

    @Override
    public int s() {
        int i10 = this.f1121r.f1077m;
        if (i10 == -1) {
            return 1;
        }
        if (i10 == 0) {
            return 0;
        }
        return i10 + 1;
    }

    @Override
    public synchronized void t(@NonNull c cVar, @NonNull ByteBuffer byteBuffer) {
        r(cVar, byteBuffer, 1);
    }

    @Override
    public int u() {
        int i10;
        if (this.f1121r.f1067c <= 0 || (i10 = this.f1120q) < 0) {
            return 0;
        }
        return q(i10);
    }

    @Override
    public int v() {
        return this.f1121r.f1077m;
    }

    public final int w() {
        int x10 = x();
        if (x10 <= 0) {
            return x10;
        }
        ByteBuffer byteBuffer = this.f1112i;
        byteBuffer.get(this.f1113j, 0, Math.min(x10, byteBuffer.remaining()));
        return x10;
    }

    public final int x() {
        return this.f1112i.get() & 255;
    }

    public final Bitmap y(b bVar, b bVar2) {
        int i10;
        int i11;
        Bitmap bitmap;
        int[] iArr = this.f1119p;
        int i12 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f1122s;
            if (bitmap2 != null) {
                this.f1111h.c(bitmap2);
            }
            this.f1122s = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f1058g == 3 && this.f1122s == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i11 = bVar2.f1058g) > 0) {
            if (i11 == 2) {
                if (!bVar.f1057f) {
                    c cVar = this.f1121r;
                    int i13 = cVar.f1076l;
                    if (bVar.f1062k == null || cVar.f1074j != bVar.f1059h) {
                        i12 = i13;
                    }
                }
                int i14 = bVar2.f1055d;
                int i15 = this.f1125v;
                int i16 = i14 / i15;
                int i17 = bVar2.f1053b / i15;
                int i18 = bVar2.f1054c / i15;
                int i19 = bVar2.f1052a / i15;
                int i20 = this.f1127x;
                int i21 = (i17 * i20) + i19;
                int i22 = (i16 * i20) + i21;
                while (i21 < i22) {
                    int i23 = i21 + i18;
                    for (int i24 = i21; i24 < i23; i24++) {
                        iArr[i24] = i12;
                    }
                    i21 += this.f1127x;
                }
            } else if (i11 == 3 && (bitmap = this.f1122s) != null) {
                int i25 = this.f1127x;
                bitmap.getPixels(iArr, 0, i25, 0, 0, i25, this.f1126w);
            }
        }
        d(bVar);
        if (bVar.f1056e || this.f1125v != 1) {
            b(bVar);
        } else {
            c(bVar);
        }
        if (this.f1123t && ((i10 = bVar.f1058g) == 0 || i10 == 1)) {
            if (this.f1122s == null) {
                this.f1122s = f();
            }
            Bitmap bitmap3 = this.f1122s;
            int i26 = this.f1127x;
            bitmap3.setPixels(iArr, 0, i26, 0, 0, i26, this.f1126w);
        }
        Bitmap f10 = f();
        int i27 = this.f1127x;
        f10.setPixels(iArr, 0, i27, 0, 0, i27, this.f1126w);
        return f10;
    }

    public f(@NonNull a.InterfaceC0021a interfaceC0021a, c cVar, ByteBuffer byteBuffer, int i10) {
        this(interfaceC0021a);
        r(cVar, byteBuffer, i10);
    }

    public f(@NonNull a.InterfaceC0021a interfaceC0021a) {
        this.f1110g = new int[256];
        this.f1129z = Bitmap.Config.ARGB_8888;
        this.f1111h = interfaceC0021a;
        this.f1121r = new c();
    }
}
