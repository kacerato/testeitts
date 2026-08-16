package D;

import Ti.t;
import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class g extends FilterInputStream {

    public static final int f4505d = 2;

    public static final byte[] f4506e;

    public static final int f4507f;

    public static final int f4508g;

    public final byte f4509b;

    public int f4510c;

    static {
        byte[] bArr = {-1, t.f25309s, 0, 28, Opcodes.OPC_fstore_2, 120, 105, 102, 0, 0, Opcodes.OPC_astore_2, Opcodes.OPC_astore_2, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f4506e = bArr;
        int length = bArr.length;
        f4507f = length;
        f4508g = length + 2;
    }

    public g(InputStream inputStream, int i10) {
        super(inputStream);
        if (i10 >= -1 && i10 <= 8) {
            this.f4509b = (byte) i10;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i10);
    }

    @Override
    public void mark(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public int read() throws IOException {
        int read;
        int i10;
        int i11 = this.f4510c;
        if (i11 < 2 || i11 > (i10 = f4508g)) {
            read = super.read();
        } else if (i11 == i10) {
            read = this.f4509b;
        } else {
            read = f4506e[i11 - 2] & 255;
        }
        if (read != -1) {
            this.f4510c++;
        }
        return read;
    }

    @Override
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public long skip(long j10) throws IOException {
        long skip = super.skip(j10);
        if (skip > 0) {
            this.f4510c = (int) (this.f4510c + skip);
        }
        return skip;
    }

    @Override
    public int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f4510c;
        int i14 = f4508g;
        if (i13 > i14) {
            i12 = super.read(bArr, i10, i11);
        } else if (i13 == i14) {
            bArr[i10] = this.f4509b;
            i12 = 1;
        } else if (i13 < 2) {
            i12 = super.read(bArr, i10, 2 - i13);
        } else {
            int min = Math.min(i14 - i13, i11);
            System.arraycopy(f4506e, this.f4510c - 2, bArr, i10, min);
            i12 = min;
        }
        if (i12 > 0) {
            this.f4510c += i12;
        }
        return i12;
    }
}
