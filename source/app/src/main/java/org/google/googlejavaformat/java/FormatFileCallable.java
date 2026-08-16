package org.google.googlejavaformat.java;

import com.google.common.collect.C12534j2;
import com.google.common.collect.InterfaceC12546m2;
import com.google.common.collect.c3;
import java.util.concurrent.Callable;

class FormatFileCallable implements Callable<String> {
    private final String input;
    private final JavaFormatterOptions options;
    private final CommandLineOptions parameters;

    public FormatFileCallable(CommandLineOptions parameters, String input, JavaFormatterOptions options) {
        this.input = input;
        this.parameters = parameters;
        this.options = options;
    }

    private InterfaceC12546m2<Integer> characterRanges(String input) {
        c3 r10 = c3.r();
        if (this.parameters.lines().isEmpty() && this.parameters.offsets().isEmpty()) {
            r10.o(C12534j2.g(0, Integer.valueOf(input.length())));
            return r10;
        }
        r10.p(Formatter.lineRangesToCharRanges(input, this.parameters.lines()));
        for (int i10 = 0; i10 < this.parameters.offsets().size(); i10++) {
            Integer num = this.parameters.lengths().get(i10);
            if (num.intValue() == 0) {
                num = 1;
            }
            r10.o(C12534j2.g(this.parameters.offsets().get(i10), Integer.valueOf(this.parameters.offsets().get(i10).intValue() + num.intValue())));
        }
        return r10;
    }

    private String fixImports(String input) throws FormatterException {
        if (this.parameters.removeUnusedImports()) {
            input = RemoveUnusedImports.removeUnusedImports(input);
        }
        return this.parameters.sortImports() ? ImportOrderer.reorderImports(input) : input;
    }

    @Override
    public String call() throws FormatterException {
        if (this.parameters.fixImportsOnly()) {
            return fixImports(this.input);
        }
        Formatter formatter = new Formatter(this.options);
        String str = this.input;
        return fixImports(formatter.formatSource(str, characterRanges(str).m()));
    }
}
