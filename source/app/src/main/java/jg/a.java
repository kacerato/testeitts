package Jg;

import Tg.C3089c;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class a {

    public final FileChannel f10554a;

    public a(FileChannel fileChannel) {
        this.f10554a = fileChannel;
    }

    public void a(long j10, C3089c c3089c, long j11) throws IOException {
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long transferTo = this.f10554a.transferTo(j10, j11, c3089c);
            j10 += transferTo;
            j11 -= transferTo;
        }
    }

    public void b(long j10, C3089c c3089c, long j11) throws IOException {
        if (j11 < 0 || j11 > c3089c.Q()) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long transferFrom = this.f10554a.transferFrom(c3089c, j10, j11);
            j10 += transferFrom;
            j11 -= transferFrom;
        }
    }
}
