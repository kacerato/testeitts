package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12561q1;
import java.util.Optional;

final class CommandLineOptions {
    private final boolean aosp;
    private final Optional<String> assumeFilename;
    private final boolean dryRun;
    private final AbstractC12521g1<String> files;
    private final boolean fixImportsOnly;
    private final boolean help;
    private final boolean inPlace;
    private final AbstractC12521g1<Integer> lengths;
    private final C12561q1<Integer> lines;
    private final AbstractC12521g1<Integer> offsets;
    private final boolean removeUnusedImports;
    private final boolean setExitIfChanged;
    private final boolean sortImports;
    private final boolean stdin;
    private final boolean version;

    public static class Builder {
        private final AbstractC12521g1.a<String> files = AbstractC12521g1.m();
        private final C12561q1.d<Integer> lines = C12561q1.w();
        private final AbstractC12521g1.a<Integer> offsets = AbstractC12521g1.m();
        private final AbstractC12521g1.a<Integer> lengths = AbstractC12521g1.m();
        private boolean inPlace = false;
        private boolean aosp = false;
        private boolean version = false;
        private boolean help = false;
        private boolean stdin = false;
        private boolean fixImportsOnly = false;
        private boolean sortImports = true;
        private boolean removeUnusedImports = true;
        private boolean dryRun = false;
        private boolean setExitIfChanged = false;
        private Optional<String> assumeFilename = Optional.empty();

        public Builder addLength(Integer length) {
            this.lengths.a(length);
            return this;
        }

        public Builder addOffset(Integer offset) {
            this.offsets.a(offset);
            return this;
        }

        public Builder aosp(boolean aosp) {
            this.aosp = aosp;
            return this;
        }

        public Builder assumeFilename(String assumeFilename) {
            this.assumeFilename = Optional.of(assumeFilename);
            return this;
        }

        public CommandLineOptions build() {
            return new CommandLineOptions(this.files.e(), this.inPlace, this.lines.d(), this.offsets.e(), this.lengths.e(), this.aosp, this.version, this.help, this.stdin, this.fixImportsOnly, this.sortImports, this.removeUnusedImports, this.dryRun, this.setExitIfChanged, this.assumeFilename);
        }

        public Builder dryRun(boolean dryRun) {
            this.dryRun = dryRun;
            return this;
        }

        public AbstractC12521g1.a<String> filesBuilder() {
            return this.files;
        }

        public Builder fixImportsOnly(boolean fixImportsOnly) {
            this.fixImportsOnly = fixImportsOnly;
            return this;
        }

        public Builder help(boolean help) {
            this.help = help;
            return this;
        }

        public Builder inPlace(boolean inPlace) {
            this.inPlace = inPlace;
            return this;
        }

        public C12561q1.d<Integer> linesBuilder() {
            return this.lines;
        }

        public Builder removeUnusedImports(boolean removeUnusedImports) {
            this.removeUnusedImports = removeUnusedImports;
            return this;
        }

        public Builder setExitIfChanged(boolean setExitIfChanged) {
            this.setExitIfChanged = setExitIfChanged;
            return this;
        }

        public Builder sortImports(boolean sortImports) {
            this.sortImports = sortImports;
            return this;
        }

        public Builder stdin(boolean stdin) {
            this.stdin = stdin;
            return this;
        }

        public Builder version(boolean version) {
            this.version = version;
            return this;
        }
    }

    public CommandLineOptions(AbstractC12521g1<String> files, boolean inPlace, C12561q1<Integer> lines, AbstractC12521g1<Integer> offsets, AbstractC12521g1<Integer> lengths, boolean aosp, boolean version, boolean help, boolean stdin, boolean fixImportsOnly, boolean sortImports, boolean removeUnusedImports, boolean dryRun, boolean setExitIfChanged, Optional<String> assumeFilename) {
        this.files = files;
        this.inPlace = inPlace;
        this.lines = lines;
        this.offsets = offsets;
        this.lengths = lengths;
        this.aosp = aosp;
        this.version = version;
        this.help = help;
        this.stdin = stdin;
        this.fixImportsOnly = fixImportsOnly;
        this.sortImports = sortImports;
        this.removeUnusedImports = removeUnusedImports;
        this.dryRun = dryRun;
        this.setExitIfChanged = setExitIfChanged;
        this.assumeFilename = assumeFilename;
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean aosp() {
        return this.aosp;
    }

    public Optional<String> assumeFilename() {
        return this.assumeFilename;
    }

    public boolean dryRun() {
        return this.dryRun;
    }

    public AbstractC12521g1<String> files() {
        return this.files;
    }

    public boolean fixImportsOnly() {
        return this.fixImportsOnly;
    }

    public boolean help() {
        return this.help;
    }

    public boolean inPlace() {
        return this.inPlace;
    }

    public boolean isSelection() {
        return (lines().isEmpty() && offsets().isEmpty() && lengths().isEmpty()) ? false : true;
    }

    public AbstractC12521g1<Integer> lengths() {
        return this.lengths;
    }

    public C12561q1<Integer> lines() {
        return this.lines;
    }

    public AbstractC12521g1<Integer> offsets() {
        return this.offsets;
    }

    public boolean removeUnusedImports() {
        return this.removeUnusedImports;
    }

    public boolean setExitIfChanged() {
        return this.setExitIfChanged;
    }

    public boolean sortImports() {
        return this.sortImports;
    }

    public boolean stdin() {
        return this.stdin;
    }

    public boolean version() {
        return this.version;
    }
}
