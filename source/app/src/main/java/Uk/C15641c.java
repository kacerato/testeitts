package uk;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class C15641c extends FilterInputStream {
    public C15641c(InputStream inputStream) {
        super(inputStream);
    }

    @Override
    public int read() throws IOException {
        int i10;
        int i11;
        int read = this.f92730in.read();
        if (read == -1) {
            return -1;
        }
        while (read == 61) {
            int read2 = this.f92730in.read();
            if (read2 == -1) {
                throw new IllegalStateException("Quoted '=' at end of stream");
            }
            if (read2 == 13) {
                read = this.f92730in.read();
                if (read == 10) {
                }
            } else if (read2 != 10) {
                if (read2 >= 48 && read2 <= 57) {
                    i10 = read2 - 48;
                } else {
                    if (read2 < 65 || read2 > 70) {
                        throw new IllegalStateException("Expecting '0123456789ABCDEF after quote that was not immediately followed by LF or CRLF");
                    }
                    i10 = read2 - 55;
                }
                int i12 = i10 << 4;
                int read3 = this.f92730in.read();
                if (read3 >= 48 && read3 <= 57) {
                    i11 = read3 - 48;
                } else {
                    if (read3 < 65 || read3 > 70) {
                        throw new IllegalStateException("Expecting second '0123456789ABCDEF after quote that was not immediately followed by LF or CRLF");
                    }
                    i11 = read3 - 55;
                }
                return i12 | i11;
            }
            read = this.f92730in.read();
        }
        return read;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 != i11) {
            int read = read();
            if (read < 0) {
                break;
            }
            bArr[i12 + i10] = (byte) read;
            i12++;
        }
        if (i12 == 0) {
            return -1;
        }
        return i12;
    }
}
