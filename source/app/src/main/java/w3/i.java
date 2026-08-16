package w3;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.List;

public final class i {

    public static final int f126442a = 3;

    public static final int f126443b = 1;

    public static final int f126444c = 258;

    public static final int f126445d = 3;

    public static final int f126446e = -1;

    public static final int f126447f = 28;

    public static final class a {

        public static final int f126448d = 256;

        public final int f126449a;

        public final int f126450b;

        public final List<String> f126451c;

        public a(int flags, int chunkSize, List<String> strings) {
            this.f126449a = flags;
            this.f126450b = chunkSize;
            this.f126451c = strings;
        }

        public static int[] c(byte[] bytes, int offset) {
            int i10 = i.i(bytes, offset);
            return (32768 & i10) == 0 ? new int[]{i10, 2} : new int[]{i.i(bytes, offset + 2) | ((i10 & 32767) << 16), 4};
        }

        public static int[] d(byte[] bytes, int offset) {
            int i10 = bytes[offset];
            return (i10 & 128) == 0 ? new int[]{i10 & 255, 1} : new int[]{(bytes[offset + 1] & 255) | ((i10 & 127) << 8), 2};
        }

        public static byte[] e(String value) {
            byte[] bytes = value.getBytes(StandardCharsets.UTF_16LE);
            byte[] f10 = f(value.length());
            byte[] bArr = new byte[f10.length + bytes.length + 2];
            System.arraycopy(f10, 0, bArr, 0, f10.length);
            System.arraycopy(bytes, 0, bArr, f10.length, bytes.length);
            return bArr;
        }

        public static byte[] f(int value) {
            if (value <= 32767) {
                return new byte[]{(byte) (value & 255), (byte) ((value >>> 8) & 255)};
            }
            int i10 = (32767 & (value >>> 16)) | 32768;
            return new byte[]{(byte) (i10 & 255), (byte) ((i10 >>> 8) & 255), (byte) (value & 255), (byte) (((65535 & value) >>> 8) & 255)};
        }

        public static byte[] g(String value) {
            byte[] bytes = value.getBytes(StandardCharsets.UTF_8);
            byte[] h10 = h(value.length());
            byte[] h11 = h(bytes.length);
            byte[] bArr = new byte[h10.length + h11.length + bytes.length + 1];
            System.arraycopy(h10, 0, bArr, 0, h10.length);
            int length = h10.length;
            System.arraycopy(h11, 0, bArr, length, h11.length);
            System.arraycopy(bytes, 0, bArr, length + h11.length, bytes.length);
            return bArr;
        }

        public static byte[] h(int value) {
            return value <= 127 ? new byte[]{(byte) value} : new byte[]{(byte) ((127 & (value >>> 8)) | 128), (byte) (value & 255)};
        }

        public static a k(byte[] xmlBytes, int offset) throws IOException {
            int i10 = i.i(xmlBytes, offset + 2);
            int j10 = i.j(xmlBytes, offset + 4);
            int j11 = i.j(xmlBytes, offset + 8);
            int j12 = i.j(xmlBytes, offset + 12);
            int j13 = i.j(xmlBytes, offset + 16);
            int j14 = i.j(xmlBytes, offset + 20);
            if (i10 != 28) {
                throw new IOException("Unsupported string pool header size: " + i10);
            }
            if (j12 != 0) {
                throw new IOException("Unsupported styled string pool in AndroidManifest.xml");
            }
            boolean z10 = (j13 & 256) != 0;
            int i11 = i10 + offset;
            int i12 = offset + j14;
            SteppedArrayList steppedArrayList = new SteppedArrayList(j11);
            for (int i13 = 0; i13 < j11; i13++) {
                steppedArrayList.add(l(xmlBytes, i.j(xmlBytes, (i13 * 4) + i11) + i12, z10));
            }
            return new a(j13, j10, steppedArrayList);
        }

        public static String l(byte[] bytes, int offset, boolean utf8) {
            if (!utf8) {
                int[] c10 = c(bytes, offset);
                return new String(bytes, offset + c10[1], c10[0] * 2, StandardCharsets.UTF_16LE);
            }
            int[] d10 = d(bytes, offset);
            int[] d11 = d(bytes, d10[1] + offset);
            return new String(bytes, offset + d10[1] + d11[1], d11[0], StandardCharsets.UTF_8);
        }

        public String i(int index) {
            if (index < 0 || index >= this.f126451c.size()) {
                return null;
            }
            return this.f126451c.get(index);
        }

        public int j(String value) {
            for (int i10 = 0; i10 < this.f126451c.size(); i10++) {
                if (this.f126451c.get(i10).equals(value)) {
                    return i10;
                }
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public byte[] m(String value) {
            SteppedArrayList<String> steppedArrayList = new SteppedArrayList(this.f126451c);
            steppedArrayList.add(value);
            boolean z10 = (this.f126449a & 256) != 0;
            SteppedArrayList steppedArrayList2 = new SteppedArrayList(steppedArrayList.size());
            int i10 = 0;
            for (String str : steppedArrayList) {
                byte[] g10 = z10 ? g(str) : e(str);
                steppedArrayList2.add(g10);
                i10 += g10.length;
            }
            int size = (steppedArrayList.size() * 4) + 28;
            int i11 = i10 + size + ((4 - (i10 % 4)) % 4);
            byte[] bArr = new byte[i11];
            i.k(bArr, 0, 1);
            i.k(bArr, 2, 28);
            i.l(bArr, 4, i11);
            i.l(bArr, 8, steppedArrayList.size());
            i.l(bArr, 12, 0);
            i.l(bArr, 16, this.f126449a);
            i.l(bArr, 20, size);
            i.l(bArr, 24, 0);
            int i12 = 0;
            for (int i13 = 0; i13 < steppedArrayList2.size(); i13++) {
                byte[] bArr2 = (byte[]) steppedArrayList2.get(i13);
                i.l(bArr, (i13 * 4) + 28, i12);
                System.arraycopy(bArr2, 0, bArr, size + i12, bArr2.length);
                i12 += bArr2.length;
            }
            return bArr;
        }
    }

    public static void e(byte[] xmlBytes, a stringPool, int titleIndex) throws IOException {
        int i10 = i(xmlBytes, 2);
        while (true) {
            if (i10 >= xmlBytes.length) {
                break;
            }
            int i11 = i(xmlBytes, i10);
            int j10 = j(xmlBytes, i10 + 4);
            if (j10 <= 0) {
                throw new IOException("Invalid chunk size in AndroidManifest.xml");
            }
            if (i11 == 258 && F2.i.f6413l.equals(stringPool.i(j(xmlBytes, i10 + 20)))) {
                int i12 = i(xmlBytes, i10 + 24);
                int i13 = i(xmlBytes, i10 + 26);
                int i14 = i(xmlBytes, i10 + 28);
                int i15 = i10 + 16 + i12;
                for (int i16 = 0; i16 < i14; i16++) {
                    int i17 = (i16 * i13) + i15;
                    if ("label".equals(stringPool.i(j(xmlBytes, i17 + 4)))) {
                        l(xmlBytes, i17 + 8, titleIndex);
                        k(xmlBytes, i17 + 12, 8);
                        xmlBytes[i17 + 14] = 0;
                        xmlBytes[i17 + 15] = 3;
                        l(xmlBytes, i17 + 16, titleIndex);
                        return;
                    }
                }
            } else {
                i10 += j10;
            }
        }
        throw new IOException("Unable to patch application label on AndroidManifest.xml");
    }

    public static void f(File manifestFile, String title) throws IOException {
        Files.write(manifestFile.toPath(), g(Files.readAllBytes(manifestFile.toPath()), title), new OpenOption[0]);
    }

    public static byte[] g(byte[] xmlBytes, String title) throws IOException {
        byte[] bArr = null;
        String replaceAll = title == null ? null : title.trim().replaceAll("\\s+", " ");
        if (replaceAll == null || replaceAll.isEmpty()) {
            return xmlBytes;
        }
        if (i(xmlBytes, 0) != 3) {
            throw new IOException("Invalid binary AndroidManifest.xml header");
        }
        int i10 = i(xmlBytes, 2);
        if (j(xmlBytes, 4) != xmlBytes.length) {
            throw new IOException("Invalid binary AndroidManifest.xml size");
        }
        if (i(xmlBytes, i10) != 1) {
            throw new IOException("Missing string pool on AndroidManifest.xml");
        }
        a k10 = a.k(xmlBytes, i10);
        int j10 = k10.j(replaceAll);
        if (j10 < 0) {
            j10 = k10.f126451c.size();
            bArr = k10.m(replaceAll);
        }
        if (bArr != null) {
            xmlBytes = h(xmlBytes, i10, k10.f126450b, bArr);
            l(xmlBytes, 4, xmlBytes.length);
            k10 = a.k(xmlBytes, i10);
        }
        e(xmlBytes, k10, j10);
        return xmlBytes;
    }

    public static byte[] h(byte[] source, int chunkOffset, int chunkLength, byte[] replacement) {
        byte[] bArr = new byte[(source.length - chunkLength) + replacement.length];
        System.arraycopy(source, 0, bArr, 0, chunkOffset);
        System.arraycopy(replacement, 0, bArr, chunkOffset, replacement.length);
        System.arraycopy(source, chunkOffset + chunkLength, bArr, replacement.length + chunkOffset, (source.length - chunkOffset) - chunkLength);
        return bArr;
    }

    public static int i(byte[] bytes, int offset) {
        return ((bytes[offset + 1] & 255) << 8) | (bytes[offset] & 255);
    }

    public static int j(byte[] bytes, int offset) {
        return ((bytes[offset + 3] & 255) << 24) | (bytes[offset] & 255) | ((bytes[offset + 1] & 255) << 8) | ((bytes[offset + 2] & 255) << 16);
    }

    public static void k(byte[] bytes, int offset, int value) {
        bytes[offset] = (byte) (value & 255);
        bytes[offset + 1] = (byte) ((value >>> 8) & 255);
    }

    public static void l(byte[] bytes, int offset, int value) {
        bytes[offset] = (byte) (value & 255);
        bytes[offset + 1] = (byte) ((value >>> 8) & 255);
        bytes[offset + 2] = (byte) ((value >>> 16) & 255);
        bytes[offset + 3] = (byte) ((value >>> 24) & 255);
    }
}
