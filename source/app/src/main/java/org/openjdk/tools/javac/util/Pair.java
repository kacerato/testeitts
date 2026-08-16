package org.openjdk.tools.javac.util;

import java.util.Objects;
import org.openjdk.tools.doclint.DocLint;

public class Pair<A, B> {
    public final A fst;
    public final B snd;

    public Pair(A a10, B b10) {
        this.fst = a10;
        this.snd = b10;
    }

    public static <A, B> Pair<A, B> of(A a10, B b10) {
        return new Pair<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (Objects.equals(this.fst, pair.fst) && Objects.equals(this.snd, pair.snd)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        A a10 = this.fst;
        if (a10 != null) {
            return this.snd == null ? a10.hashCode() + 2 : (a10.hashCode() * 17) + this.snd.hashCode();
        }
        B b10 = this.snd;
        if (b10 == null) {
            return 0;
        }
        return b10.hashCode() + 1;
    }

    public String toString() {
        return "Pair[" + ((Object) this.fst) + DocLint.SEPARATOR + ((Object) this.snd) + "]";
    }
}
