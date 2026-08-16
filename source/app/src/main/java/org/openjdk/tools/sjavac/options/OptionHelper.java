package org.openjdk.tools.sjavac.options;

import b3.s;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.main.CommandLine;
import org.openjdk.tools.sjavac.Transformer;

public abstract class OptionHelper {
    public static String unescapeCmdArg(String str) {
        return str.replaceAll("%20", " ").replaceAll("%2C", DocLint.SEPARATOR);
    }

    public abstract void addTransformer(String str, Transformer transformer);

    public abstract void classpath(List<Path> list);

    public abstract void compareFoundSources(Path path);

    public abstract void destDir(Path path);

    public abstract void exclude(String str);

    public abstract void generatedSourcesDir(Path path);

    public abstract void headerDir(Path path);

    public abstract void implicit(String str);

    public abstract void include(String str);

    public abstract void javacArg(String... strArr);

    public abstract void logLevel(String str);

    public abstract void modulepath(List<Path> list);

    public abstract void numCores(int i10);

    public abstract void permitArtifact(String str);

    public abstract void permitDefaultPackage();

    public abstract void permitUnidentifiedArtifacts();

    public abstract void reportError(String str);

    public abstract void serverConf(String str);

    public abstract void sourceRoots(List<Path> list);

    public abstract void sourcepath(List<Path> list);

    public abstract void startServerConf(String str);

    public abstract void stateDir(Path path);

    public void traverse(String[] strArr) {
        try {
            ArgumentIterator argumentIterator = new ArgumentIterator(Arrays.asList(CommandLine.parse(strArr)));
            while (argumentIterator.hasNext()) {
                String next = argumentIterator.next();
                if (next.startsWith("-")) {
                    Option[] values = Option.values();
                    int length = values.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            javacArg(next);
                            for (org.openjdk.tools.javac.main.Option option : org.openjdk.tools.javac.main.Option.values()) {
                                if (option.matches(next)) {
                                    boolean hasArg = option.hasArg();
                                    boolean z10 = (next.contains(s.f32937c) || next.contains("=")) ? false : true;
                                    if (hasArg && z10) {
                                        javacArg(argumentIterator.next());
                                    }
                                }
                            }
                        } else if (values[i10].processCurrent(argumentIterator, this)) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                } else {
                    sourceRoots(Arrays.asList(Paths.get(next, new String[0])));
                }
            }
        } catch (IOException e10) {
            throw new IllegalArgumentException("Problem reading @" + e10.getMessage());
        }
    }
}
