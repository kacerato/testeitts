package org.openjdk.tools.javac.main;

import java.nio.file.Path;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Log;

public abstract class OptionHelper {

    public static class GrumpyHelper extends OptionHelper {
        private final Log log;

        public GrumpyHelper(Log log) {
            this.log = log;
        }

        @Override
        public void addClassName(String str) {
            throw new IllegalArgumentException(str);
        }

        @Override
        public void addFile(Path path) {
            throw new IllegalArgumentException(path.toString());
        }

        @Override
        public String get(Option option) {
            throw new IllegalArgumentException();
        }

        @Override
        public Log getLog() {
            return this.log;
        }

        @Override
        public String getOwnName() {
            throw new IllegalStateException();
        }

        @Override
        public boolean handleFileManagerOption(Option option, String str) {
            throw new IllegalArgumentException();
        }

        @Override
        public void put(String str, String str2) {
            throw new IllegalArgumentException();
        }

        @Override
        public void remove(String str) {
            throw new IllegalArgumentException();
        }
    }

    public abstract void addClassName(String str);

    public abstract void addFile(Path path);

    public abstract String get(Option option);

    public abstract Log getLog();

    public abstract String getOwnName();

    public abstract boolean handleFileManagerOption(Option option, String str);

    public Option.InvalidValueException newInvalidValueException(String str, Object... objArr) {
        return new Option.InvalidValueException(getLog().localize(Log.PrefixKind.JAVAC, str, objArr));
    }

    public abstract void put(String str, String str2);

    public abstract void remove(String str);
}
