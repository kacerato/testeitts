package org.openjdk.tools.sjavac.comp;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.sjavac.JavacState;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.Module;
import org.openjdk.tools.sjavac.ProblemException;
import org.openjdk.tools.sjavac.Source;
import org.openjdk.tools.sjavac.Util;
import org.openjdk.tools.sjavac.options.Option;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.options.SourceLocation;
import org.openjdk.tools.sjavac.server.Sjavac;

public class SjavacImpl implements Sjavac {
    private static boolean createIfMissing(Path path) {
        if (Files.isDirectory(path, new LinkOption[0])) {
            return true;
        }
        if (Files.exists(path, new LinkOption[0])) {
            Log.error(((Object) path) + " is not a directory.");
            return false;
        }
        try {
            Files.createDirectories(path, new FileAttribute[0]);
            return true;
        } catch (IOException e10) {
            Log.error("Could not create directory: " + e10.getMessage());
            return false;
        }
    }

    public static void findSourceFiles(List<SourceLocation> list, Set<String> set, Map<String, Source> map, Map<String, Module> map2, Module module, boolean z10, boolean z11) throws IOException {
        Iterator<SourceLocation> it = list.iterator();
        while (it.hasNext()) {
            it.next().findSourceFiles(set, map, map2, module, z10, z11);
        }
    }

    private static boolean isOverlapping(Path path, Path path2) {
        Path normalize = path.toAbsolutePath().normalize();
        Path normalize2 = path2.toAbsolutePath().normalize();
        return normalize.startsWith(normalize2) || normalize2.startsWith(normalize);
    }

    public static boolean lambda$compile$0(String str) {
        return !str.startsWith(Option.SERVER.arg);
    }

    public static String[] lambda$compile$1(int i10) {
        return new String[i10];
    }

    private static void printRound(int i10) {
        Log.debug("****************************************");
        Log.debug("* Round " + i10 + "                              *");
        Log.debug("****************************************");
    }

    private static boolean srcDstOverlap(List<SourceLocation> list, Path path) {
        for (SourceLocation sourceLocation : list) {
            if (isOverlapping(sourceLocation.getPath(), path)) {
                Log.error("Source location " + ((Object) sourceLocation.getPath()) + " overlaps with destination " + ((Object) path));
                return true;
            }
        }
        return false;
    }

    private static boolean validateOptions(Options options) {
        String str = options.getDestDir() == null ? "Please specify output directory." : options.isJavaFilesAmongJavacArgs() ? "Sjavac does not handle explicit compilation of single .java files." : !options.getImplicitPolicy().equals("none") ? "The only allowed setting for sjavac is -implicit:none" : (!options.getSources().isEmpty() || options.getStateDir() == null) ? (options.getTranslationRules().size() <= 1 || options.getGenSrcDir() != null) ? null : "You have translators but no gensrc dir (-s) specified!" : "You have to specify -src when using --state-dir.";
        if (str != null) {
            Log.error(str);
        }
        return str == null;
    }

    @Override
    public Main.Result compile(String[] strArr) {
        try {
            Options parseArgs = Options.parseArgs(strArr);
            if (validateOptions(parseArgs) && !srcDstOverlap(parseArgs.getSources(), parseArgs.getDestDir())) {
                if (!createIfMissing(parseArgs.getDestDir())) {
                    return Main.Result.ERROR;
                }
                Path stateDir = parseArgs.getStateDir();
                if (stateDir != null && !createIfMissing(parseArgs.getStateDir())) {
                    return Main.Result.ERROR;
                }
                Path genSrcDir = parseArgs.getGenSrcDir();
                if (genSrcDir != null && !createIfMissing(genSrcDir)) {
                    return Main.Result.ERROR;
                }
                Path headerDir = parseArgs.getHeaderDir();
                if (headerDir != null && !createIfMissing(headerDir)) {
                    return Main.Result.ERROR;
                }
                if (stateDir == null) {
                    Context context = new Context();
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    org.openjdk.tools.javac.util.Log.preRegister(context, printWriter);
                    JavacFileManager.preRegister(context);
                    Main.Result compile = new Main("javac", printWriter).compile((String[]) Stream.of((Object[]) strArr).filter(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean lambda$compile$0;
                            lambda$compile$0 = SjavacImpl.lambda$compile$0((String) obj);
                            return lambda$compile$0;
                        }
                    }).toArray(new IntFunction() {
                        @Override
                        public final Object apply(int i10) {
                            String[] lambda$compile$1;
                            lambda$compile$1 = SjavacImpl.lambda$compile$1(i10);
                            return lambda$compile$1;
                        }
                    }), context);
                    printWriter.flush();
                    Util.getLines(stringWriter.toString()).forEach(new org.openjdk.tools.sjavac.f());
                    JavaFileManager javaFileManager = (JavaFileManager) context.get(JavaFileManager.class);
                    if (javaFileManager instanceof JavacFileManager) {
                        try {
                            ((JavacFileManager) javaFileManager).close();
                        } catch (IOException e10) {
                            throw new UncheckedIOException(e10);
                        }
                    }
                    return compile;
                }
                JavacState load = JavacState.load(parseArgs);
                HashMap hashMap = new HashMap();
                hashMap.putAll(load.getJavaSuffixRule());
                hashMap.putAll(parseArgs.getTranslationRules());
                HashMap hashMap2 = new HashMap();
                Module module = new Module("", "");
                hashMap2.put("", module);
                try {
                    HashMap hashMap3 = new HashMap();
                    findSourceFiles(parseArgs.getSources(), hashMap.o(), hashMap3, hashMap2, module, parseArgs.isDefaultPackagePermitted(), false);
                    if (hashMap3.isEmpty()) {
                        Log.error("Found nothing to compile!");
                        return Main.Result.ERROR;
                    }
                    HashMap hashMap4 = new HashMap();
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(parseArgs.getSources());
                    arrayList.addAll(parseArgs.getSourceSearchPaths());
                    findSourceFiles(arrayList, Collections.singleton(".java"), hashMap4, hashMap2, module, parseArgs.isDefaultPackagePermitted(), true);
                    load.now().flattenPackagesSourcesAndArtifacts(hashMap2);
                    load.now().checkInternalState("checking sources", false, hashMap3);
                    load.now().checkInternalState("checking linked sources", true, hashMap4);
                    load.setVisibleSources(hashMap4);
                    printRound(0);
                    load.checkSourceStatus(false);
                    load.findAllArtifacts();
                    if (!parseArgs.areUnidentifiedArtifactsPermitted()) {
                        load.removeUnidentifiedArtifacts();
                    }
                    load.taintPackagesThatMissArtifacts();
                    load.taintPackagesDependingOnChangedClasspathPackages();
                    load.deleteClassArtifactsInTaintedPackages();
                    load.performCopying(Util.pathToFile(parseArgs.getDestDir()), hashMap);
                    load.performTranslation(Util.pathToFile(genSrcDir), hashMap);
                    Source.scanRoot(Util.pathToFile(parseArgs.getGenSrcDir()), Util.set(".java"), Collections.emptyList(), Collections.emptyList(), new HashMap(), hashMap2, module, false, true, false);
                    load.now().flattenPackagesSourcesAndArtifacts(hashMap2);
                    load.checkSourceStatus(true);
                    load.compareWithMakefileList(Util.pathToFile(parseArgs.getSourceReferenceList()));
                    HashSet hashSet = new HashSet();
                    boolean[] zArr = new boolean[1];
                    CompilationService compilationService = new CompilationService();
                    int i10 = 0;
                    while (true) {
                        if (i10 > 0) {
                            printRound(i10);
                        }
                        load.deleteClassArtifactsInTaintedPackages();
                        boolean performJavaCompilations = load.performJavaCompilations(compilationService, parseArgs, hashSet, zArr);
                        if (!zArr[0]) {
                            Log.debug("Compilation failed.");
                            break;
                        }
                        if (!performJavaCompilations) {
                            Log.debug("Nothing left to do.");
                        }
                        i10++;
                        if (!performJavaCompilations) {
                            break;
                        }
                    }
                    Log.debug("No need to do another round.");
                    if (zArr[0]) {
                        load.save();
                        load.now().flattenArtifacts(hashMap2);
                        load.removeSuperfluousArtifacts(hashSet);
                    }
                    return zArr[0] ? Main.Result.OK : Main.Result.ERROR;
                } catch (ProblemException e11) {
                    Log.error(e11.getMessage());
                    Log.debug(e11);
                    return Main.Result.ERROR;
                } catch (Exception e12) {
                    Log.error(e12);
                    return Main.Result.ERROR;
                }
            }
            return Main.Result.CMDERR;
        } catch (IllegalArgumentException e13) {
            Log.error(e13.getMessage());
            return Main.Result.CMDERR;
        }
    }

    @Override
    public void shutdown() {
    }
}
