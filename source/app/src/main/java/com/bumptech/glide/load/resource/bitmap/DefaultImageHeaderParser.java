package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public final class DefaultImageHeaderParser implements ImageHeaderParser {

    public static final String f59318b = "DfltImageHeaderParser";

    public static final int f59319c = 4671814;

    public static final int f59320d = -1991225785;

    public static final int f59321e = 65496;

    public static final int f59322f = 19789;

    public static final int f59323g = 18761;

    public static final int f59326j = 218;

    public static final int f59327k = 217;

    public static final int f59328l = 255;

    public static final int f59329m = 225;

    public static final int f59330n = 274;

    public static final int f59332p = 1380533830;

    public static final int f59333q = 1464156752;

    public static final int f59334r = 1448097792;

    public static final int f59335s = -256;

    public static final int f59336t = 255;

    public static final int f59337u = 88;

    public static final int f59338v = 76;

    public static final int f59339w = 16;

    public static final int f59340x = 8;

    public static final String f59324h = "Exif\u0000\u0000";

    public static final byte[] f59325i = f59324h.getBytes(Charset.forName("UTF-8"));

    public static final int[] f59331o = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public interface Reader {

        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a() throws IOException;

        int b(byte[] bArr, int i10) throws IOException;

        short c() throws IOException;

        long skip(long j10) throws IOException;
    }

    public static final class a implements Reader {

        public final ByteBuffer f59341a;

        public a(ByteBuffer byteBuffer) {
            this.f59341a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override
        public int a() throws Reader.EndOfFileException {
            return (c() << 8) | c();
        }

        @Override
        public int b(byte[] bArr, int i10) {
            int min = Math.min(i10, this.f59341a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f59341a.get(bArr, 0, min);
            return min;
        }

        @Override
        public short c() throws Reader.EndOfFileException {
            if (this.f59341a.remaining() >= 1) {
                return (short) (this.f59341a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override
        public long skip(long j10) {
            int min = (int) Math.min(this.f59341a.remaining(), j10);
            ByteBuffer byteBuffer = this.f59341a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    public static final class b {

        public final ByteBuffer f59342a;

        public b(byte[] bArr, int i10) {
            this.f59342a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
        }

        public short a(int i10) {
            if (c(i10, 2)) {
                return this.f59342a.getShort(i10);
            }
            return (short) -1;
        }

        public int b(int i10) {
            if (c(i10, 4)) {
                return this.f59342a.getInt(i10);
            }
            return -1;
        }

        public final boolean c(int i10, int i11) {
            return this.f59342a.remaining() - i10 >= i11;
        }

        public int d() {
            return this.f59342a.remaining();
        }

        public void e(ByteOrder byteOrder) {
            this.f59342a.order(byteOrder);
        }
    }

    public static final class c implements Reader {

        public final InputStream f59343a;

        public c(InputStream inputStream) {
            this.f59343a = inputStream;
        }

        @Override
        public int a() throws IOException {
            return (c() << 8) | c();
        }

        @Override
        public int b(byte[] bArr, int i10) throws IOException {
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10 && (i12 = this.f59343a.read(bArr, i11, i10 - i11)) != -1) {
                i11 += i12;
            }
            if (i11 == 0 && i12 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i11;
        }

        @Override
        public short c() throws IOException {
            int read = this.f59343a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override
        public long skip(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long skip = this.f59343a.skip(j11);
                if (skip <= 0) {
                    if (this.f59343a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j11 -= skip;
            }
            return j10 - j11;
        }
    }

    public static int e(int i10, int i11) {
        return i10 + 2 + (i11 * 12);
    }

    public static boolean h(int i10) {
        return (i10 & f59321e) == 65496 || i10 == 19789 || i10 == 18761;
    }

    public static int k(b bVar) {
        ByteOrder byteOrder;
        short a10 = bVar.a(6);
        if (a10 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (a10 != 19789) {
            if (Log.isLoggable(f59318b, 3)) {
                Log.d(f59318b, "Unknown endianness = " + ((int) a10));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.e(byteOrder);
        int b10 = bVar.b(10) + 6;
        short a11 = bVar.a(b10);
        for (int i10 = 0; i10 < a11; i10++) {
            int e10 = e(b10, i10);
            short a12 = bVar.a(e10);
            if (a12 == 274) {
                short a13 = bVar.a(e10 + 2);
                if (a13 >= 1 && a13 <= 12) {
                    int b11 = bVar.b(e10 + 4);
                    if (b11 >= 0) {
                        if (Log.isLoggable(f59318b, 3)) {
                            Log.d(f59318b, "Got tagIndex=" + i10 + " tagType=" + ((int) a12) + " formatCode=" + ((int) a13) + " componentCount=" + b11);
                        }
                        int i11 = b11 + f59331o[a13];
                        if (i11 <= 4) {
                            int i12 = e10 + 8;
                            if (i12 >= 0 && i12 <= bVar.d()) {
                                if (i11 >= 0 && i11 + i12 <= bVar.d()) {
                                    return bVar.a(i12);
                                }
                                if (Log.isLoggable(f59318b, 3)) {
                                    Log.d(f59318b, "Illegal number of bytes for TI tag data tagType=" + ((int) a12));
                                }
                            } else if (Log.isLoggable(f59318b, 3)) {
                                Log.d(f59318b, "Illegal tagValueOffset=" + i12 + " tagType=" + ((int) a12));
                            }
                        } else if (Log.isLoggable(f59318b, 3)) {
                            Log.d(f59318b, "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a13));
                        }
                    } else if (Log.isLoggable(f59318b, 3)) {
                        Log.d(f59318b, "Negative tiff component count");
                    }
                } else if (Log.isLoggable(f59318b, 3)) {
                    Log.d(f59318b, "Got invalid format code = " + ((int) a13));
                }
            }
        }
        return -1;
    }

    @Override
    public int a(@NonNull InputStream inputStream, @NonNull F.b bVar) throws IOException {
        return f(new c((InputStream) Y.k.d(inputStream)), (F.b) Y.k.d(bVar));
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType b(@NonNull InputStream inputStream) throws IOException {
        return g(new c((InputStream) Y.k.d(inputStream)));
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull ByteBuffer byteBuffer) throws IOException {
        return g(new a((ByteBuffer) Y.k.d(byteBuffer)));
    }

    @Override
    public int d(@NonNull ByteBuffer byteBuffer, @NonNull F.b bVar) throws IOException {
        return f(new a((ByteBuffer) Y.k.d(byteBuffer)), (F.b) Y.k.d(bVar));
    }

    public final int f(Reader reader, F.b bVar) throws IOException {
        try {
            int a10 = reader.a();
            if (!h(a10)) {
                if (Log.isLoggable(f59318b, 3)) {
                    Log.d(f59318b, "Parser doesn't handle magic number: " + a10);
                }
                return -1;
            }
            int j10 = j(reader);
            if (j10 == -1) {
                if (Log.isLoggable(f59318b, 3)) {
                    Log.d(f59318b, "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) bVar.c(j10, byte[].class);
            try {
                return l(reader, bArr, j10);
            } finally {
                bVar.put(bArr);
            }
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @NonNull
    public final ImageHeaderParser.ImageType g(Reader reader) throws IOException {
        try {
            int a10 = reader.a();
            if (a10 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c10 = (a10 << 8) | reader.c();
            if (c10 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c11 = (c10 << 8) | reader.c();
            if (c11 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (c11 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            reader.skip(4L);
            if (((reader.a() << 16) | reader.a()) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int a11 = (reader.a() << 16) | reader.a();
            if ((a11 & (-256)) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i10 = a11 & 255;
            if (i10 == 88) {
                reader.skip(4L);
                return (reader.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (i10 != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            }
            reader.skip(4L);
            return (reader.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public final boolean i(byte[] bArr, int i10) {
        boolean z10 = bArr != null && i10 > f59325i.length;
        if (z10) {
            int i11 = 0;
            while (true) {
                byte[] bArr2 = f59325i;
                if (i11 >= bArr2.length) {
                    break;
                }
                if (bArr[i11] != bArr2[i11]) {
                    return false;
                }
                i11++;
            }
        }
        return z10;
    }

    public final int j(Reader reader) throws IOException {
        short c10;
        int a10;
        long j10;
        long skip;
        do {
            short c11 = reader.c();
            if (c11 != 255) {
                if (Log.isLoggable(f59318b, 3)) {
                    Log.d(f59318b, "Unknown segmentId=" + ((int) c11));
                }
                return -1;
            }
            c10 = reader.c();
            if (c10 == 218) {
                return -1;
            }
            if (c10 == 217) {
                if (Log.isLoggable(f59318b, 3)) {
                    Log.d(f59318b, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a10 = reader.a() - 2;
            if (c10 == 225) {
                return a10;
            }
            j10 = a10;
            skip = reader.skip(j10);
        } while (skip == j10);
        if (Log.isLoggable(f59318b, 3)) {
            Log.d(f59318b, "Unable to skip enough data, type: " + ((int) c10) + ", wanted to skip: " + a10 + ", but actually skipped: " + skip);
        }
        return -1;
    }

    public final int l(Reader reader, byte[] bArr, int i10) throws IOException {
        int b10 = reader.b(bArr, i10);
        if (b10 == i10) {
            if (i(bArr, i10)) {
                return k(new b(bArr, i10));
            }
            if (Log.isLoggable(f59318b, 3)) {
                Log.d(f59318b, "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable(f59318b, 3)) {
            Log.d(f59318b, "Unable to read exif segment data, length: " + i10 + ", actually read: " + b10);
        }
        return -1;
    }
}
