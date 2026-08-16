package org.google.googlejavaformat;

import B0.C2324i;
import android.service.notification.Condition;
import org.google.googlejavaformat.Output;
import w2.z;

public abstract class Indent {

    public static final class Const extends Indent {
        public static final Const ZERO = new Const(0);

        private final int f102702n;

        private Const(int n10) {
            this.f102702n = n10;
        }

        public static Const make(int n10, int indentMultiplier) {
            return new Const(n10 * indentMultiplier);
        }

        @Override
        public int eval() {
            return this.f102702n;
        }

        public String toString() {
            return z.c(this).d(C2324i.f1246e, this.f102702n).toString();
        }
    }

    public static final class If extends Indent {
        private final Output.BreakTag condition;
        private final Indent elseIndent;
        private final Indent thenIndent;

        private If(Output.BreakTag condition, Indent thenIndent, Indent elseIndent) {
            this.condition = condition;
            this.thenIndent = thenIndent;
            this.elseIndent = elseIndent;
        }

        public static If make(Output.BreakTag condition, Indent thenIndent, Indent elseIndent) {
            return new If(condition, thenIndent, elseIndent);
        }

        @Override
        public int eval() {
            return (this.condition.wasBreakTaken() ? this.thenIndent : this.elseIndent).eval();
        }

        public String toString() {
            return z.c(this).f(Condition.SCHEME, this.condition).f("thenIndent", this.thenIndent).f("elseIndent", this.elseIndent).toString();
        }
    }

    public abstract int eval();
}
