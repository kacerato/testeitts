package org.google.googlejavaformat;

import com.google.common.collect.C12534j2;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.OpsBuilder;
import w2.C;
import w2.z;

public abstract class Output extends InputOutput {

    public static final class BreakTag {
        C<Boolean> taken = C.a();

        public void recordBroken(boolean broken) {
            this.taken = C.f(Boolean.valueOf(broken));
        }

        public boolean wasBreakTaken() {
            return this.taken.g(Boolean.FALSE).booleanValue();
        }
    }

    public abstract void append(String text, C12534j2<Integer> range);

    public abstract void blankLine(int k10, OpsBuilder.BlankLineWanted wanted);

    public abstract CommentsHelper getCommentsHelper();

    public abstract void indent(int indent);

    public abstract void markForPartialFormat(Input.Token start, Input.Token end);

    @Override
    public String toString() {
        return z.c(this).f("super", super.toString()).toString();
    }
}
