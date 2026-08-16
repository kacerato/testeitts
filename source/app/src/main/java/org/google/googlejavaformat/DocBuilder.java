package org.google.googlejavaformat;

import android.test.InstrumentationTestRunner;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import org.google.googlejavaformat.Doc;
import org.google.googlejavaformat.Indent;
import w2.z;

public final class DocBuilder {
    private Doc.Level appendLevel;
    private final Doc.Level base;
    private final ArrayDeque<Doc.Level> stack;

    public DocBuilder() {
        Doc.Level make = Doc.Level.make(Indent.Const.ZERO);
        this.base = make;
        ArrayDeque<Doc.Level> arrayDeque = new ArrayDeque<>();
        this.stack = arrayDeque;
        this.appendLevel = make;
        arrayDeque.addLast(make);
    }

    public void add(Doc doc) {
        this.appendLevel.add(doc);
    }

    public void breakDoc(Doc.Break breakDoc) {
        Doc.Level peekLast = this.stack.peekLast();
        this.appendLevel = peekLast;
        peekLast.add(breakDoc);
    }

    public Doc build() {
        return this.base;
    }

    public void close() {
        this.stack.peekLast().add(this.stack.removeLast());
    }

    public void open(Indent plusIndent) {
        this.stack.addLast(Doc.Level.make(plusIndent));
    }

    public String toString() {
        return z.c(this).f("base", this.base).f(InstrumentationTestRunner.REPORT_KEY_STACK, this.stack).f("appendLevel", this.appendLevel).toString();
    }

    public DocBuilder withOps(List<Op> ops) {
        Iterator<Op> it = ops.iterator();
        while (it.hasNext()) {
            it.next().add(this);
        }
        return this;
    }
}
