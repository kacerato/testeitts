package Ag;

import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.exception.ZipException;

public class d extends OutputStream implements g {

    public OutputStream f547b;

    public long f548c = 0;

    public d(OutputStream outputStream) {
        this.f547b = outputStream;
    }

    public boolean a(int i10) throws ZipException {
        if (h()) {
            return ((h) this.f547b).a(i10);
        }
        return false;
    }

    @Override
    public long c() throws IOException {
        OutputStream outputStream = this.f547b;
        return outputStream instanceof h ? ((h) outputStream).c() : this.f548c;
    }

    @Override
    public void close() throws IOException {
        this.f547b.close();
    }

    @Override
    public int d() {
        if (h()) {
            return ((h) this.f547b).d();
        }
        return 0;
    }

    public long e() throws IOException {
        OutputStream outputStream = this.f547b;
        return outputStream instanceof h ? ((h) outputStream).c() : this.f548c;
    }

    public long f() throws IOException {
        OutputStream outputStream = this.f547b;
        return outputStream instanceof h ? ((h) outputStream).c() : this.f548c;
    }

    public long g() {
        if (h()) {
            return ((h) this.f547b).e();
        }
        return 0L;
    }

    public boolean h() {
        OutputStream outputStream = this.f547b;
        return (outputStream instanceof h) && ((h) outputStream).h();
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f547b.write(bArr, i10, i11);
        this.f548c += i11;
    }
}
