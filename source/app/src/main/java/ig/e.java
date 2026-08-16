package Ig;

import Tg.C3089c;
import Tg.h;
import Tg.x;
import java.io.IOException;

public class e extends h {

    public boolean f9428c;

    public e(x xVar) {
        super(xVar);
    }

    @Override
    public void close() throws IOException {
        if (this.f9428c) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.f9428c = true;
            d(e10);
        }
    }

    public void d(IOException iOException) {
    }

    @Override
    public void flush() throws IOException {
        if (this.f9428c) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.f9428c = true;
            d(e10);
        }
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        if (this.f9428c) {
            c3089c.skip(j10);
            return;
        }
        try {
            super.h0(c3089c, j10);
        } catch (IOException e10) {
            this.f9428c = true;
            d(e10);
        }
    }
}
