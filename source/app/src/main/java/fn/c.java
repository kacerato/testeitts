package fn;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;
import org.offlineApk.iyxan23.zipalignjava.InvalidZipException;

public class c {

    public static final int f86600a = 65557;

    public static class a {

        public int f86601a;

        public long f86602b;

        public short f86603c;

        public int f86604d;

        public a(int alignAmount, long extraFieldLenOffset, short extraFieldLenValue, int extraFieldExtensionOffset) {
            this.f86601a = alignAmount;
            this.f86602b = extraFieldLenOffset;
            this.f86603c = extraFieldLenValue;
            this.f86604d = extraFieldExtensionOffset;
        }

        public String toString() {
            return "Alignment{alignAmount=" + this.f86601a + ", extraFieldLenOffset=" + this.f86602b + ", extraFieldLenValue=" + ((int) this.f86603c) + ", extraFieldExtensionOffset=" + this.f86604d + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class b {

        public long f86605a;

        public long f86606b;

        public b(long eocdhPosition, long shiftedFileOffset) {
            this.f86605a = eocdhPosition;
            this.f86606b = shiftedFileOffset;
        }

        public String toString() {
            return "FileOffsetShift{eocdhPosition=" + this.f86605a + ", shiftedFileOffset=" + this.f86606b + JavaElement.JEM_ANNOTATION;
        }
    }

    @Deprecated
    public static void a(InputStream zipIn, OutputStream zipOut) throws IOException {
        b(zipIn, zipOut, 4);
    }

    @Deprecated
    public static void b(InputStream zipIn, OutputStream zipOut, int alignment) throws IOException {
        int i10;
        gn.a aVar = new gn.a(zipIn);
        gn.b bVar = new gn.b(zipOut);
        ArrayList arrayList = new ArrayList();
        int readInt = aVar.readInt();
        while (true) {
            i10 = 0;
            if (readInt != 67324752) {
                break;
            }
            arrayList.add(Integer.valueOf(bVar.c()));
            bVar.l(org.offlineApk.apksigner.a.f102869l);
            h(aVar, bVar, 2);
            short readShort = aVar.readShort();
            bVar.n(readShort);
            boolean z10 = (readShort & 8) == 8;
            short readShort2 = aVar.readShort();
            bVar.n(readShort2);
            boolean z11 = readShort2 == 0;
            h(aVar, bVar, 8);
            int readInt2 = aVar.readInt();
            bVar.l(readInt2);
            h(aVar, bVar, 4);
            short readShort3 = aVar.readShort();
            bVar.n(readShort3);
            short readShort4 = aVar.readShort();
            int c10 = (((bVar.c() + 2) + readShort3) + readShort4) % alignment;
            int i11 = c10 == 0 ? 0 : alignment - c10;
            if (z11) {
                bVar.n(readShort4 + i11);
            } else {
                bVar.n(readShort4);
            }
            h(aVar, bVar, readShort3);
            h(aVar, bVar, readShort4);
            if (z11 && i11 != 0) {
                bVar.write(new byte[i11]);
            }
            if (z10) {
                byte[] bArr = new byte[4];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                do {
                    byte readByte = aVar.readByte();
                    bVar.write(readByte);
                    if (wrap.position() == 3) {
                        bArr[0] = bArr[1];
                        bArr[1] = bArr[2];
                        bArr[2] = bArr[3];
                        wrap.put(3, readByte);
                    } else {
                        wrap.put(readByte);
                    }
                } while (wrap.getInt(0) != 134695760);
                h(aVar, bVar, 12);
                bVar.flush();
                readInt = aVar.readInt();
            } else {
                h(aVar, bVar, readInt2);
                bVar.flush();
                readInt = aVar.readInt();
            }
        }
        int c11 = bVar.c();
        while (readInt == 33639248) {
            bVar.l(33639248);
            int intValue = ((Integer) arrayList.get(i10)).intValue();
            h(aVar, bVar, 24);
            short readShort5 = aVar.readShort();
            bVar.n(readShort5);
            short readShort6 = aVar.readShort();
            bVar.n(readShort6);
            short readShort7 = aVar.readShort();
            bVar.n(readShort7);
            h(aVar, bVar, 8);
            aVar.readInt();
            bVar.l(intValue);
            h(aVar, bVar, readShort5);
            h(aVar, bVar, readShort6);
            h(aVar, bVar, readShort7);
            bVar.flush();
            i10++;
            readInt = aVar.readInt();
        }
        if (readInt != 101010256) {
            throw new IOException("No end of central directory record header, there is something wrong");
        }
        bVar.l(101010256);
        h(aVar, bVar, 12);
        aVar.readInt();
        bVar.l(c11);
        short readShort8 = aVar.readShort();
        bVar.n(readShort8);
        h(aVar, bVar, readShort8);
    }

    public static void c(RandomAccessFile file, OutputStream out) throws IOException, InvalidZipException {
        f(file, out, 4, true);
    }

    public static void d(RandomAccessFile file, OutputStream out, int alignment) throws IOException, InvalidZipException {
        f(file, out, alignment, true);
    }

    public static void e(RandomAccessFile file, OutputStream out, int alignment, int soFileAlignment) throws IOException, InvalidZipException {
        int i10;
        long j10;
        int i11;
        int i12;
        long j11;
        int i13;
        boolean z10;
        int i14;
        ArrayList arrayList;
        int i15 = alignment;
        long length = file.length();
        if (length > 65557) {
            j10 = length - 65557;
            i10 = f86600a;
        } else {
            i10 = (int) length;
            j10 = 0;
        }
        file.seek(j10);
        int i16 = i10 - 4;
        while (i16 >= 0) {
            if (file.readByte() == 80) {
                file.seek(file.getFilePointer() - 1);
                if (file.readInt() == 1347093766) {
                    break;
                }
            }
            i16--;
        }
        if (i16 < 0) {
            throw new InvalidZipException("No end-of-central-directory found");
        }
        long filePointer = file.getFilePointer();
        file.seek(filePointer - (-6));
        byte[] bArr = new byte[10];
        file.read(bArr);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        fn.b bVar = new fn.b(wrap.order(byteOrder));
        int c10 = bVar.c();
        bVar.a();
        long a10 = bVar.a();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        file.seek(a10);
        byte[] bArr2 = new byte[46];
        ByteBuffer order = ByteBuffer.wrap(bArr2).order(byteOrder);
        fn.b bVar2 = new fn.b(order);
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i18 < c10) {
            long j12 = a10;
            long filePointer2 = file.getFilePointer();
            file.read(bArr2);
            int i20 = c10;
            if (order.getInt(i17) != 33639248) {
                throw new InvalidZipException("assumed central directory entry at " + filePointer2 + " doesn't start with a signature");
            }
            int d10 = bVar2.d(28);
            int d11 = bVar2.d(30);
            byte[] bArr3 = bArr2;
            int d12 = bVar2.d(32);
            long j13 = filePointer;
            long b10 = bVar2.b(42);
            fn.b bVar3 = bVar2;
            int i21 = i19;
            if (i21 != 0) {
                i11 = d11;
                i12 = d12;
                j11 = filePointer2;
                arrayList3.add(new b(filePointer2 + 42, i21 + b10));
            } else {
                i11 = d11;
                i12 = d12;
                j11 = filePointer2;
            }
            if (soFileAlignment != 0) {
                byte[] bArr4 = new byte[d10];
                file.read(bArr4);
                if (new String(bArr4, StandardCharsets.UTF_8).endsWith(".so")) {
                    file.seek(b10 + 26);
                    ByteBuffer order2 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
                    fn.b bVar4 = new fn.b(order2);
                    file.read(order2.array());
                    int c11 = bVar4.c();
                    int c12 = bVar4.c();
                    int i22 = (int) (((((b10 + 30) + c11) + c12) + i21) % soFileAlignment);
                    int i23 = i22 == 0 ? 0 : soFileAlignment - i22;
                    i13 = i21 + i23;
                    if (i23 != 0) {
                        arrayList2.add(new a(i23, b10 + 28, (short) (c12 + i23), c11 + c12));
                    }
                    z10 = true;
                    if (order.getShort(10) == 0 || z10) {
                        i14 = i15;
                        arrayList = arrayList2;
                    } else {
                        file.seek(b10 + 26);
                        ByteBuffer order3 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
                        fn.b bVar5 = new fn.b(order3);
                        file.read(order3.array());
                        int c13 = bVar5.c();
                        int c14 = bVar5.c();
                        i14 = alignment;
                        arrayList = arrayList2;
                        int i24 = (int) (((((b10 + 30) + c13) + c14) + i13) % i14);
                        int i25 = i24 == 0 ? 0 : i14 - i24;
                        i13 += i25;
                        if (i25 != 0) {
                            arrayList.add(new a(i25, b10 + 28, (short) (c14 + i25), c13 + c14));
                        }
                    }
                    file.seek(j11 + 46 + d10 + i11 + i12);
                    i18++;
                    arrayList2 = arrayList;
                    i19 = i13;
                    a10 = j12;
                    c10 = i20;
                    bArr2 = bArr3;
                    filePointer = j13;
                    bVar2 = bVar3;
                    i17 = 0;
                    i15 = i14;
                }
            }
            i13 = i21;
            z10 = false;
            if (order.getShort(10) == 0) {
            }
            i14 = i15;
            arrayList = arrayList2;
            file.seek(j11 + 46 + d10 + i11 + i12);
            i18++;
            arrayList2 = arrayList;
            i19 = i13;
            a10 = j12;
            c10 = i20;
            bArr2 = bArr3;
            filePointer = j13;
            bVar2 = bVar3;
            i17 = 0;
            i15 = i14;
        }
        long j14 = filePointer;
        long j15 = a10;
        ArrayList arrayList4 = arrayList2;
        int i26 = i19;
        file.seek(0L);
        if (arrayList4.size() != 0) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                long j16 = aVar.f86602b;
                if (j16 != 0) {
                    i(file, out, j16 - file.getFilePointer());
                }
                out.write(aVar.f86603c & 255);
                out.write((aVar.f86603c >>> 8) & 255);
                file.readShort();
                i(file, out, aVar.f86604d);
                out.write(new byte[aVar.f86601a]);
                out.flush();
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                b bVar6 = (b) it2.next();
                i(file, out, bVar6.f86605a - file.getFilePointer());
                out.write((int) (255 & bVar6.f86606b));
                out.write(((int) (bVar6.f86606b >>> 8)) & 255);
                out.write(((int) (bVar6.f86606b >>> 16)) & 255);
                out.write(((int) (bVar6.f86606b >>> 24)) & 255);
                file.readInt();
            }
            i(file, out, (j14 - (-12)) - file.getFilePointer());
            long j17 = j15 + i26;
            out.write((int) (j17 & 255));
            out.write(((int) (j17 >>> 8)) & 255);
            out.write(((int) (j17 >>> 16)) & 255);
            out.write(((int) (j17 >>> 24)) & 255);
            file.readInt();
            i(file, out, file.length() - file.getFilePointer());
            return;
        }
        byte[] bArr5 = new byte[8192];
        while (true) {
            int read = file.read(bArr5);
            if (-1 == read) {
                return;
            } else {
                out.write(bArr5, 0, read);
            }
        }
    }

    public static void f(RandomAccessFile file, OutputStream out, int alignment, boolean alignSoFiles) throws IOException, InvalidZipException {
        e(file, out, alignment, 16384);
    }

    public static void g(RandomAccessFile file, OutputStream out, boolean alignSoFiles) throws IOException, InvalidZipException {
        f(file, out, 4, alignSoFiles);
    }

    public static void h(InputStream in2, OutputStream out, int len) throws IOException {
        byte[] bArr = new byte[len];
        if (in2.read(bArr) == -1) {
            throw new IOException("Reached EOF when passing bytes");
        }
        out.write(bArr);
    }

    public static void i(RandomAccessFile raf, OutputStream out, long len) throws IOException {
        byte[] bArr = new byte[8162];
        while (len > 8162) {
            raf.read(bArr);
            out.write(bArr);
            len -= 8162;
        }
        if (len != 0) {
            byte[] bArr2 = new byte[(int) len];
            raf.read(bArr2);
            out.write(bArr2);
        }
        out.flush();
    }
}
