package kotlin.io;

import Xf.InterfaceC3312m;
import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class s implements InterfaceC3312m<String> {

    @NotNull
    public final BufferedReader f95687a;

    public static final class a implements Iterator<String>, Nf.a {

        public String f95688b;

        public boolean f95689c;

        public a() {
        }

        @Override
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.f95688b;
            this.f95688b = null;
            M.m(str);
            return str;
        }

        @Override
        public boolean hasNext() {
            if (this.f95688b == null && !this.f95689c) {
                String readLine = s.this.f95687a.readLine();
                this.f95688b = readLine;
                if (readLine == null) {
                    this.f95689c = true;
                }
            }
            return this.f95688b != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public s(@NotNull BufferedReader reader) {
        M.p(reader, "reader");
        this.f95687a = reader;
    }

    @Override
    @NotNull
    public Iterator<String> iterator() {
        return new a();
    }
}
