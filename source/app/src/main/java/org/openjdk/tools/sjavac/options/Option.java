package org.openjdk.tools.sjavac.options;

import b3.s;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.openjdk.tools.sjavac.CopyFile;
import org.openjdk.tools.sjavac.Transformer;

public enum Option {
    SRC("-src", "Location of source files to be compiled") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            List<Path> fileListArg = getFileListArg(argumentIterator, optionHelper);
            if (fileListArg != null) {
                optionHelper.sourceRoots(fileListArg);
            }
        }
    },
    SOURCE_PATH("--source-path", "Specify search path for sources.") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            List<Path> fileListArg = getFileListArg(argumentIterator, optionHelper);
            if (fileListArg != null) {
                optionHelper.sourcepath(fileListArg);
            }
        }
    },
    SOURCEPATH("-sourcepath", "An alias for -sourcepath") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Option.SOURCE_PATH.processMatching(argumentIterator, optionHelper);
        }
    },
    MODULE_PATH("--module-path", "Specify search path for modules.") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            List<Path> fileListArg = getFileListArg(argumentIterator, optionHelper);
            if (fileListArg != null) {
                optionHelper.modulepath(fileListArg);
            }
        }
    },
    P("-p", "An alias for --module-path") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Option.MODULE_PATH.processMatching(argumentIterator, optionHelper);
        }
    },
    CLASS_PATH("--class-path", "Specify search path for classes.") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            List<Path> fileListArg = getFileListArg(argumentIterator, optionHelper);
            if (fileListArg != null) {
                optionHelper.classpath(fileListArg);
            }
        }
    },
    CLASSPATH("-classpath", "An alias for -classpath.") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Option.CLASS_PATH.processMatching(argumentIterator, optionHelper);
        }
    },
    CP("-cp", "An alias for -classpath") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Option.CLASS_PATH.processMatching(argumentIterator, optionHelper);
        }
    },
    X("-x", "Exclude files matching the given pattern") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            String filePatternArg = getFilePatternArg(argumentIterator, optionHelper);
            if (filePatternArg != null) {
                optionHelper.exclude(filePatternArg);
            }
        }
    },
    I("-i", "Include only files matching the given pattern") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            String filePatternArg = getFilePatternArg(argumentIterator, optionHelper);
            if (filePatternArg != null) {
                optionHelper.include(filePatternArg);
            }
        }
    },
    TR("-tr", "Translate resources") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            if (!argumentIterator.hasNext()) {
                optionHelper.reportError(this.arg + " must be followed by a translation rule");
                return;
            }
            String next = argumentIterator.next();
            Matcher matcher = Pattern.compile("(?<suffix>\\.[a-zA-Z_][a-zA-Z0-9_]*)=(?<class>[a-zA-Z_][a-zA-Z0-9_]*(\\.[a-zA-Z_][a-zA-Z0-9_]*)*)(?<extra>,.*)?").matcher(next);
            if (!matcher.matches()) {
                optionHelper.reportError("The string \"" + next + "\" is not a valid translate pattern");
                return;
            }
            String group = matcher.group("suffix");
            String group2 = matcher.group("class");
            String group3 = matcher.group("extra");
            if (group.matches("\\.(class|java)")) {
                optionHelper.reportError("You cannot have a translator for " + group + " files!");
                return;
            }
            try {
                Transformer transformer = (Transformer) Class.forName(group2).getConstructor(null).newInstance(null);
                transformer.setExtra(group3);
                optionHelper.addTransformer(group, transformer);
            } catch (Exception e10) {
                optionHelper.reportError("Cannot use " + group2 + " as a translator: " + e10.getMessage());
            }
        }
    },
    COPY("-copy", "Copy resources") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            if (!argumentIterator.hasNext()) {
                optionHelper.reportError(this.arg + " must be followed by a resource type");
                return;
            }
            String next = argumentIterator.next();
            if (next.matches("\\.[a-zA-Z_][a-zA-Z0-9_]*")) {
                optionHelper.addTransformer(next, new CopyFile());
                return;
            }
            optionHelper.reportError("The string \"" + next + "\" is not a valid resource type.");
        }
    },
    J("-j", "Number of cores") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            if (argumentIterator.hasNext() && argumentIterator.peek().matches("\\d+")) {
                optionHelper.numCores(Integer.parseInt(argumentIterator.next()));
                return;
            }
            optionHelper.reportError(this.arg + " must be followed by an integer");
        }
    },
    SERVER("--server:", "Specify server configuration file of running server") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.serverConf(argumentIterator.current().substring(this.arg.length()));
        }
    },
    STARTSERVER("--startserver:", "Start server and use the given configuration file") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.startServerConf(argumentIterator.current().substring(this.arg.length()));
        }
    },
    IMPLICIT("-implicit:", "Specify how to treat implicitly referenced source code") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.implicit(argumentIterator.current().substring(this.arg.length()));
        }
    },
    LOG("--log=", "Specify logging level") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.logLevel(argumentIterator.current().substring(this.arg.length()));
        }
    },
    VERBOSE("-verbose", "Set verbosity level to \"info\"") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.logLevel("info");
        }
    },
    PERMIT_ARTIFACT("--permit-artifact=", "Allow this artifact in destination directory") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.permitArtifact(Paths.get(argumentIterator.current().substring(this.arg.length()), new String[0]).toFile().getAbsolutePath());
        }
    },
    PERMIT_UNIDENTIFIED_ARTIFACTS("--permit-unidentified-artifacts", "Allow unidentified artifacts in destination directory") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.permitUnidentifiedArtifacts();
        }
    },
    PERMIT_SOURCES_WITHOUT_PACKAGE("--permit-sources-without-package", "Permit sources in the default package") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.permitDefaultPackage();
        }
    },
    COMPARE_FOUND_SOURCES("--compare-found-sources", "Compare found sources with given sources") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Path fileArg = getFileArg(argumentIterator, optionHelper, true, false);
            if (fileArg != null) {
                optionHelper.compareFoundSources(fileArg);
            }
        }
    },
    D("-d", "Output destination directory") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Path fileArg = getFileArg(argumentIterator, optionHelper, false, true);
            if (fileArg != null) {
                optionHelper.destDir(fileArg);
            }
        }
    },
    S("-s", "Directory for generated sources") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Path fileArg = getFileArg(argumentIterator, optionHelper, false, true);
            if (fileArg != null) {
                optionHelper.generatedSourcesDir(fileArg);
            }
        }
    },
    H("-h", "Directory for header files") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            Path fileArg = getFileArg(argumentIterator, optionHelper, false, true);
            if (fileArg != null) {
                optionHelper.headerDir(fileArg);
            }
        }
    },
    STATE_DIR("--state-dir=", "Directory used to store sjavac state and log files.") {
        @Override
        public void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
            optionHelper.stateDir(Paths.get(argumentIterator.current().substring(this.arg.length()), new String[0]));
        }
    };

    public final String arg;
    final String description;

    public Path getFileArg(ArgumentIterator argumentIterator, OptionHelper optionHelper, boolean z10, boolean z11) {
        String str;
        if (argumentIterator.hasNext()) {
            return Paths.get(argumentIterator.next(), new String[0]);
        }
        String str2 = this.arg + " must be followed by ";
        if (z10 && z11) {
            str = str2 + "a file or directory.";
        } else if (z10) {
            str = str2 + "a file.";
        } else {
            if (!z11) {
                throw new IllegalArgumentException("File or directory must be acceptable.");
            }
            str = str2 + "a directory.";
        }
        optionHelper.reportError(str);
        return null;
    }

    public List<Path> getFileListArg(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
        if (!argumentIterator.hasNext()) {
            optionHelper.reportError(this.arg + " must be followed by a list of files separated by " + File.pathSeparator);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : argumentIterator.next().split(File.pathSeparator)) {
            arrayList.add(Paths.get(str, new String[0]));
        }
        return arrayList;
    }

    public String getFilePatternArg(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
        if (argumentIterator.hasNext()) {
            return argumentIterator.next();
        }
        optionHelper.reportError(this.arg + " must be followed by a glob pattern.");
        return null;
    }

    public boolean hasOption() {
        return this.arg.endsWith(s.f32937c) || this.arg.endsWith("=");
    }

    public final boolean processCurrent(ArgumentIterator argumentIterator, OptionHelper optionHelper) {
        String current = argumentIterator.current();
        if (hasOption()) {
            if (!current.startsWith(this.arg)) {
                return false;
            }
        } else if (!current.equals(this.arg)) {
            return false;
        }
        processMatching(argumentIterator, optionHelper);
        return true;
    }

    public abstract void processMatching(ArgumentIterator argumentIterator, OptionHelper optionHelper);

    Option(String str, String str2) {
        this.arg = str;
        this.description = str2;
    }
}
