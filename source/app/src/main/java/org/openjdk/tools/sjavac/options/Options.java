package org.openjdk.tools.sjavac.options;

import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringJoiner;
import org.openjdk.tools.sjavac.Transformer;
import org.openjdk.tools.sjavac.Util;

public class Options {
    private Path destDir;
    private Path genSrcDir;
    private Path headerDir;
    private String serverConf;
    private Path sourceReferenceList;
    private Path stateDir;
    private List<SourceLocation> sources = new ArrayList();
    private List<SourceLocation> sourceSearchPaths = new ArrayList();
    private List<SourceLocation> classSearchPaths = new ArrayList();
    private List<SourceLocation> moduleSearchPaths = new ArrayList();
    private String logLevel = "info";
    private Set<String> permitted_artifacts = new HashSet();
    private boolean permitUnidentifiedArtifacts = false;
    private boolean permitSourcesInDefaultPackage = false;
    private int numCores = 4;
    private String implicitPolicy = "none";
    private List<String> javacArgs = new ArrayList();
    private Map<String, Transformer> trRules = new HashMap();
    private boolean startServer = false;

    public class ArgDecoderOptionHelper extends OptionHelper {
        List<String> excludeFiles;
        List<String> excludes;
        boolean genSrcProvided;
        boolean headerProvided;
        List<String> includeFiles;
        List<String> includes;
        boolean stateProvided;

        private ArgDecoderOptionHelper() {
            resetFilters();
            this.headerProvided = false;
            this.genSrcProvided = false;
            this.stateProvided = false;
        }

        private List<SourceLocation> createSourceLocations(List<Path> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<Path> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new SourceLocation(it.next(), this.includes, this.excludes));
            }
            resetFilters();
            return arrayList;
        }

        private void resetFilters() {
            this.includes = new ArrayList();
            this.excludes = new ArrayList();
            this.includeFiles = new ArrayList();
            this.excludeFiles = new ArrayList();
        }

        @Override
        public void addTransformer(String str, Transformer transformer) {
            if (!Options.this.trRules.containsKey(str)) {
                Options.this.trRules.put(str, transformer);
                return;
            }
            reportError("More than one transformer specified for suffix " + str + ".");
        }

        @Override
        public void classpath(List<Path> list) {
            Options.this.classSearchPaths.addAll(createSourceLocations(list));
        }

        @Override
        public void compareFoundSources(Path path) {
            Options.this.sourceReferenceList = path;
        }

        @Override
        public void destDir(Path path) {
            if (Options.this.destDir != null) {
                reportError("Destination directory already specified.");
            } else {
                Options.this.destDir = path.toAbsolutePath();
            }
        }

        @Override
        public void exclude(String str) {
            this.excludes.add(Util.normalizeDriveLetter(str));
        }

        @Override
        public void generatedSourcesDir(Path path) {
            if (this.genSrcProvided) {
                reportError("Directory for generated sources already specified.");
                return;
            }
            this.genSrcProvided = true;
            Options.this.genSrcDir = path.toAbsolutePath();
        }

        @Override
        public void headerDir(Path path) {
            if (this.headerProvided) {
                reportError("Header directory already specified.");
                return;
            }
            this.headerProvided = true;
            Options.this.headerDir = path.toAbsolutePath();
        }

        @Override
        public void implicit(String str) {
            Options.this.implicitPolicy = str;
        }

        @Override
        public void include(String str) {
            this.includes.add(Util.normalizeDriveLetter(str));
        }

        @Override
        public void javacArg(String... strArr) {
            Options.this.javacArgs.addAll(Arrays.asList(strArr));
        }

        @Override
        public void logLevel(String str) {
            Options.this.logLevel = str;
        }

        @Override
        public void modulepath(List<Path> list) {
            Options.this.moduleSearchPaths.addAll(createSourceLocations(list));
        }

        @Override
        public void numCores(int i10) {
            Options.this.numCores = i10;
        }

        @Override
        public void permitArtifact(String str) {
            Options.this.permitted_artifacts.add(str);
        }

        @Override
        public void permitDefaultPackage() {
            Options.this.permitSourcesInDefaultPackage = true;
        }

        @Override
        public void permitUnidentifiedArtifacts() {
            Options.this.permitUnidentifiedArtifacts = true;
        }

        @Override
        public void reportError(String str) {
            throw new IllegalArgumentException(str);
        }

        @Override
        public void serverConf(String str) {
            if (Options.this.serverConf != null) {
                reportError("Can not specify more than one server configuration.");
            } else {
                Options.this.serverConf = str;
            }
        }

        @Override
        public void sourceRoots(List<Path> list) {
            Options.this.sources.addAll(createSourceLocations(list));
        }

        @Override
        public void sourcepath(List<Path> list) {
            Options.this.sourceSearchPaths.addAll(createSourceLocations(list));
        }

        @Override
        public void startServerConf(String str) {
            if (Options.this.serverConf != null) {
                reportError("Can not specify more than one server configuration.");
            } else {
                Options.this.startServer = true;
                Options.this.serverConf = str;
            }
        }

        @Override
        public void stateDir(Path path) {
            if (this.stateProvided) {
                reportError("State directory already specified.");
                return;
            }
            this.stateProvided = true;
            Options.this.stateDir = path.toAbsolutePath();
        }
    }

    private static String concatenateSourceLocations(List<SourceLocation> list) {
        StringJoiner stringJoiner = new StringJoiner(File.pathSeparator);
        Iterator<SourceLocation> it = list.iterator();
        while (it.hasNext()) {
            stringJoiner.add(it.next().getPath().toString());
        }
        return stringJoiner.toString();
    }

    public static Options parseArgs(String... strArr) {
        Options options = new Options();
        new ArgDecoderOptionHelper().traverse(strArr);
        return options;
    }

    public boolean areUnidentifiedArtifactsPermitted() {
        return this.permitUnidentifiedArtifacts;
    }

    public List<SourceLocation> getClassSearchPath() {
        return this.classSearchPaths;
    }

    public Path getDestDir() {
        return this.destDir;
    }

    public Path getGenSrcDir() {
        return this.genSrcDir;
    }

    public Path getHeaderDir() {
        return this.headerDir;
    }

    public String getImplicitPolicy() {
        return this.implicitPolicy;
    }

    public List<String> getJavacArgs() {
        return this.javacArgs;
    }

    public String getLogLevel() {
        return this.logLevel;
    }

    public List<SourceLocation> getModuleSearchPaths() {
        return this.moduleSearchPaths;
    }

    public int getNumCores() {
        return this.numCores;
    }

    public String getServerConf() {
        return this.serverConf;
    }

    public Path getSourceReferenceList() {
        return this.sourceReferenceList;
    }

    public List<SourceLocation> getSourceSearchPaths() {
        return this.sourceSearchPaths;
    }

    public List<SourceLocation> getSources() {
        return this.sources;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.openjdk.tools.sjavac.options.Options$1StateArgs] */
    public String getStateArgsString() {
        ?? r02 = new Object() {
            private List<String> args = new ArrayList();

            public void addAll(Collection<String> collection) {
                this.args.addAll(collection);
            }

            public void addArg(Option option) {
                this.args.add(option.arg);
            }

            public void addSourceLocations(Option option, List<SourceLocation> list) {
                for (SourceLocation sourceLocation : list) {
                    Iterator<String> it = sourceLocation.includes.iterator();
                    while (it.hasNext()) {
                        addArg(Option.I, it.next());
                    }
                    Iterator<String> it2 = sourceLocation.excludes.iterator();
                    while (it2.hasNext()) {
                        addArg(Option.X, it2.next());
                    }
                    addArg(option, sourceLocation.getPath());
                }
            }

            public String getResult() {
                return String.join(" ", this.args);
            }

            public void addArg(Option option, Object obj) {
                addArg(option);
                this.args.add(obj.toString());
            }
        };
        Path path = this.genSrcDir;
        if (path != null) {
            r02.addArg(Option.S, path.normalize());
        }
        Path path2 = this.headerDir;
        if (path2 != null) {
            r02.addArg(Option.H, path2.normalize());
        }
        Path path3 = this.destDir;
        if (path3 != null) {
            r02.addArg(Option.D, path3.normalize());
        }
        Path path4 = this.stateDir;
        if (path4 != null) {
            r02.addArg(Option.STATE_DIR, path4.normalize());
        }
        r02.addSourceLocations(Option.SRC, this.sources);
        r02.addSourceLocations(Option.SOURCE_PATH, this.sourceSearchPaths);
        r02.addSourceLocations(Option.CLASS_PATH, this.classSearchPaths);
        r02.addSourceLocations(Option.MODULE_PATH, this.moduleSearchPaths);
        if (this.permitSourcesInDefaultPackage) {
            r02.addArg(Option.PERMIT_SOURCES_WITHOUT_PACKAGE);
        }
        Iterator<String> it = this.permitted_artifacts.iterator();
        while (it.hasNext()) {
            r02.addArg(Option.PERMIT_ARTIFACT, it.next());
        }
        if (this.permitUnidentifiedArtifacts) {
            r02.addArg(Option.PERMIT_UNIDENTIFIED_ARTIFACTS);
        }
        for (Map.Entry<String, Transformer> entry : this.trRules.entrySet()) {
            r02.addArg(Option.TR, entry.getKey() + "=" + entry.getValue().getClass().getName());
        }
        r02.addAll(this.javacArgs);
        return r02.getResult();
    }

    public Path getStateDir() {
        return this.stateDir;
    }

    public Map<String, Transformer> getTranslationRules() {
        return this.trRules;
    }

    public boolean isDefaultPackagePermitted() {
        return this.permitSourcesInDefaultPackage;
    }

    public boolean isJavaFilesAmongJavacArgs() {
        Iterator<String> it = this.javacArgs.iterator();
        while (it.hasNext()) {
            if (it.next().endsWith(".java")) {
                return true;
            }
        }
        return false;
    }

    public boolean isUnidentifiedArtifactPermitted(String str) {
        return this.permitted_artifacts.contains(str);
    }

    public String[] prepJavacArgs() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("-d");
        arrayList.add(this.destDir.toString());
        if (getGenSrcDir() != null) {
            arrayList.add("-s");
            arrayList.add(this.genSrcDir.toString());
        }
        if (this.headerDir != null) {
            arrayList.add("-h");
            arrayList.add(this.headerDir.toString());
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.sources);
        arrayList2.addAll(this.sourceSearchPaths);
        if (arrayList2.size() > 0) {
            arrayList.add("-sourcepath");
            arrayList.add(concatenateSourceLocations(arrayList2));
        }
        if (this.classSearchPaths.size() > 0) {
            arrayList.add("-classpath");
            arrayList.add(concatenateSourceLocations(this.classSearchPaths));
        }
        arrayList.add("--debug:completionDeps=source,class");
        arrayList.add("-implicit:" + this.implicitPolicy);
        arrayList.addAll(this.javacArgs);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public boolean startServerFlag() {
        return this.startServer;
    }
}
