package w3;

import android.hardware.usb.UsbManager;
import android.provider.Settings;
import android.provider.Telephony;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.List;

public final class j {

    public static final int f126452a = 3;

    public static final int f126453b = 1;

    public static final int f126454c = 258;

    public static final int f126455d = 3;

    public static final int f126456e = 28;

    public static final String f126457f = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";

    public static final String f126458g = ".androidx-startup";

    public static final class b {

        public final byte[] f126459a;

        public final c f126460b;

        public final int f126461c;

        public b(byte[] xmlBytes, c stringPool, int stringIndex) {
            this.f126459a = xmlBytes;
            this.f126460b = stringPool;
            this.f126461c = stringIndex;
        }
    }

    public static final class c {

        public static final int f126462d = 256;

        public final int f126463a;

        public final int f126464b;

        public final List<String> f126465c;

        public c(int flags, int chunkSize, List<String> strings) {
            this.f126463a = flags;
            this.f126464b = chunkSize;
            this.f126465c = strings;
        }

        public static int[] c(byte[] bytes, int offset) {
            int l10 = j.l(bytes, offset);
            return (32768 & l10) == 0 ? new int[]{l10, 2} : new int[]{j.l(bytes, offset + 2) | ((l10 & 32767) << 16), 4};
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

        public static c k(byte[] xmlBytes, int offset) throws IOException {
            int l10 = j.l(xmlBytes, offset + 2);
            int m10 = j.m(xmlBytes, offset + 4);
            int m11 = j.m(xmlBytes, offset + 8);
            int m12 = j.m(xmlBytes, offset + 12);
            int m13 = j.m(xmlBytes, offset + 16);
            int m14 = j.m(xmlBytes, offset + 20);
            if (l10 != 28) {
                throw new IOException("Unsupported string pool header size: " + l10);
            }
            if (m12 != 0) {
                throw new IOException("Unsupported styled string pool in AndroidManifest.xml");
            }
            boolean z10 = (m13 & 256) != 0;
            int i10 = l10 + offset;
            int i11 = offset + m14;
            SteppedArrayList steppedArrayList = new SteppedArrayList(m11);
            for (int i12 = 0; i12 < m11; i12++) {
                steppedArrayList.add(l(xmlBytes, j.m(xmlBytes, (i12 * 4) + i10) + i11, z10));
            }
            return new c(m13, m10, steppedArrayList);
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
            if (index < 0 || index >= this.f126465c.size()) {
                return null;
            }
            return this.f126465c.get(index);
        }

        public int j(String value) {
            for (int i10 = 0; i10 < this.f126465c.size(); i10++) {
                if (this.f126465c.get(i10).equals(value)) {
                    return i10;
                }
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public byte[] m(String value) {
            SteppedArrayList<String> steppedArrayList = new SteppedArrayList(this.f126465c);
            steppedArrayList.add(value);
            boolean z10 = (this.f126463a & 256) != 0;
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
            j.n(bArr, 0, 1);
            j.n(bArr, 2, 28);
            j.o(bArr, 4, i11);
            j.o(bArr, 8, steppedArrayList.size());
            j.o(bArr, 12, 0);
            j.o(bArr, 16, this.f126463a);
            j.o(bArr, 20, size);
            j.o(bArr, 24, 0);
            int i12 = 0;
            for (int i13 = 0; i13 < steppedArrayList2.size(); i13++) {
                byte[] bArr2 = (byte[]) steppedArrayList2.get(i13);
                j.o(bArr, (i13 * 4) + 28, i12);
                System.arraycopy(bArr2, 0, bArr, size + i12, bArr2.length);
                i12 += bArr2.length;
            }
            return bArr;
        }
    }

    public static b e(byte[] xmlBytes, int stringPoolOffset, c stringPool, String value) throws IOException {
        int j10 = stringPool.j(value);
        if (j10 >= 0) {
            return new b(xmlBytes, stringPool, j10);
        }
        int size = stringPool.f126465c.size();
        byte[] h10 = h(xmlBytes, stringPoolOffset, stringPool.f126464b, stringPool.m(value));
        o(h10, 4, h10.length);
        return new b(h10, c.k(h10, stringPoolOffset), size);
    }

    public static String f(byte[] xmlBytes, c stringPool) throws IOException {
        int l10 = l(xmlBytes, 2);
        while (true) {
            if (l10 >= xmlBytes.length) {
                break;
            }
            int l11 = l(xmlBytes, l10);
            int m10 = m(xmlBytes, l10 + 4);
            if (m10 <= 0) {
                throw new IOException("Invalid chunk size in AndroidManifest.xml");
            }
            if (l11 == 258 && "manifest".equals(stringPool.i(m(xmlBytes, l10 + 20)))) {
                int l12 = l(xmlBytes, l10 + 24);
                int l13 = l(xmlBytes, l10 + 26);
                int l14 = l(xmlBytes, l10 + 28);
                int i10 = l10 + 16 + l12;
                for (int i11 = 0; i11 < l14; i11++) {
                    int i12 = (i11 * l13) + i10;
                    if (Telephony.Sms.Intents.EXTRA_PACKAGE_NAME.equals(stringPool.i(m(xmlBytes, i12 + 4)))) {
                        return stringPool.i(m(xmlBytes, i12 + 16));
                    }
                }
            } else {
                l10 += m10;
            }
        }
        throw new IOException("Unable to locate manifest package id");
    }

    public static void g(byte[] xmlBytes, c stringPool, String oldPackageId, int newPackageIndex, String oldPermission, int newPermissionIndex, String oldStartupAuthority, int newStartupAuthorityIndex) throws IOException {
        c cVar = stringPool;
        int l10 = l(xmlBytes, 2);
        boolean z10 = false;
        while (l10 < xmlBytes.length) {
            int l11 = l(xmlBytes, l10);
            int m10 = m(xmlBytes, l10 + 4);
            if (m10 <= 0) {
                throw new IOException("Invalid chunk size in AndroidManifest.xml");
            }
            if (l11 == 258) {
                String i10 = cVar.i(m(xmlBytes, l10 + 20));
                int l12 = l(xmlBytes, l10 + 24);
                int l13 = l(xmlBytes, l10 + 26);
                int l14 = l(xmlBytes, l10 + 28);
                int i11 = l10 + 16 + l12;
                int i12 = 0;
                while (i12 < l14) {
                    int i13 = (i12 * l13) + i11;
                    String i14 = cVar.i(m(xmlBytes, i13 + 4));
                    String i15 = cVar.i(m(xmlBytes, i13 + 16));
                    if ("manifest".equals(i10) && Telephony.Sms.Intents.EXTRA_PACKAGE_NAME.equals(i14)) {
                        if (oldPackageId.equals(i15)) {
                            k(xmlBytes, i13, newPackageIndex);
                            z10 = true;
                            i12++;
                            cVar = stringPool;
                        }
                    }
                    if ((UsbManager.EXTRA_PERMISSION_GRANTED.equals(i10) || "uses-permission".equals(i10)) && "name".equals(i14) && oldPermission.equals(i15)) {
                        k(xmlBytes, i13, newPermissionIndex);
                        i12++;
                        cVar = stringPool;
                    }
                    if ("provider".equals(i10) && Settings.EXTRA_AUTHORITIES.equals(i14)) {
                        if (oldStartupAuthority.equals(i15)) {
                            k(xmlBytes, i13, newStartupAuthorityIndex);
                            i12++;
                            cVar = stringPool;
                        }
                        i12++;
                        cVar = stringPool;
                    }
                    i12++;
                    cVar = stringPool;
                }
            }
            l10 += m10;
            cVar = stringPool;
        }
        if (!z10) {
            throw new IOException("Unable to patch manifest package id");
        }
    }

    public static byte[] h(byte[] source, int chunkOffset, int chunkLength, byte[] replacement) {
        byte[] bArr = new byte[(source.length - chunkLength) + replacement.length];
        System.arraycopy(source, 0, bArr, 0, chunkOffset);
        System.arraycopy(replacement, 0, bArr, chunkOffset, replacement.length);
        System.arraycopy(source, chunkOffset + chunkLength, bArr, replacement.length + chunkOffset, (source.length - chunkOffset) - chunkLength);
        return bArr;
    }

    public static void i(File manifestFile, String newPackageId) throws IOException {
        Files.write(manifestFile.toPath(), j(Files.readAllBytes(manifestFile.toPath()), newPackageId), new OpenOption[0]);
    }

    public static byte[] j(byte[] xmlBytes, String newPackageId) throws IOException {
        String trim = newPackageId == null ? null : newPackageId.trim();
        if (trim == null || trim.isEmpty()) {
            return xmlBytes;
        }
        if (l(xmlBytes, 0) != 3) {
            throw new IOException("Invalid binary AndroidManifest.xml header");
        }
        int l10 = l(xmlBytes, 2);
        if (m(xmlBytes, 4) != xmlBytes.length) {
            throw new IOException("Invalid binary AndroidManifest.xml size");
        }
        if (l(xmlBytes, l10) != 1) {
            throw new IOException("Missing string pool on AndroidManifest.xml");
        }
        c k10 = c.k(xmlBytes, l10);
        String f10 = f(xmlBytes, k10);
        if (f10 == null || f10.isEmpty() || f10.equals(trim)) {
            return xmlBytes;
        }
        String str = trim + ".androidx-startup";
        b e10 = e(xmlBytes, l10, k10, trim);
        b e11 = e(e10.f126459a, l10, e10.f126460b, trim + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION");
        b e12 = e(e11.f126459a, l10, e11.f126460b, str);
        byte[] bArr = e12.f126459a;
        g(bArr, e12.f126460b, f10, e10.f126461c, f10 + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION", e11.f126461c, f10 + ".androidx-startup", e12.f126461c);
        return bArr;
    }

    public static void k(byte[] xmlBytes, int attributeOffset, int stringIndex) {
        o(xmlBytes, attributeOffset + 8, stringIndex);
        n(xmlBytes, attributeOffset + 12, 8);
        xmlBytes[attributeOffset + 14] = 0;
        xmlBytes[attributeOffset + 15] = 3;
        o(xmlBytes, attributeOffset + 16, stringIndex);
    }

    public static int l(byte[] bytes, int offset) {
        return ((bytes[offset + 1] & 255) << 8) | (bytes[offset] & 255);
    }

    public static int m(byte[] bytes, int offset) {
        return ((bytes[offset + 3] & 255) << 24) | (bytes[offset] & 255) | ((bytes[offset + 1] & 255) << 8) | ((bytes[offset + 2] & 255) << 16);
    }

    public static void n(byte[] bytes, int offset, int value) {
        bytes[offset] = (byte) (value & 255);
        bytes[offset + 1] = (byte) ((value >>> 8) & 255);
    }

    public static void o(byte[] bytes, int offset, int value) {
        bytes[offset] = (byte) (value & 255);
        bytes[offset + 1] = (byte) ((value >>> 8) & 255);
        bytes[offset + 2] = (byte) ((value >>> 16) & 255);
        bytes[offset + 3] = (byte) ((value >>> 24) & 255);
    }
}
