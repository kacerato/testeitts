package org.openjdk.tools.sjavac;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;
import org.openjdk.tools.sjavac.server.CompilationSubResult;
import org.openjdk.tools.sjavac.server.SysInfo;

public class CompileJavaPackages implements Transformer {
    static final int limitOnConcurrency = 3;
    Options args;

    public CompilationSubResult lambda$transform$0(Log log, CompilationService compilationService, String str, CompileChunk compileChunk, Set set, Object obj) throws Exception {
        Log.setLogForCurrentThread(log);
        CompilationSubResult compile = compilationService.compile("n/a", str, this.args.prepJavacArgs(), Collections.emptyList(), compileChunk.srcs, set);
        synchronized (obj) {
            Util.getLines(compile.stdout).forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    Log.info((String) obj2);
                }
            });
            Util.getLines(compile.stderr).forEach(new f());
        }
        return compile;
    }

    public CompileChunk[] createCompileChunks(Map<String, Set<URI>> map, Map<String, Set<String>> map2, int i10, int i11) {
        CompileChunk[] compileChunkArr = new CompileChunk[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            compileChunkArr[i12] = new CompileChunk();
        }
        String[] strArr = (String[]) map.o().toArray(new String[0]);
        Arrays.sort(strArr);
        int i13 = 0;
        String str = null;
        for (String str2 : strArr) {
            CompileChunk compileChunk = compileChunkArr[i13];
            Set<URI> set = map.get(str2);
            if (compileChunk.srcs.size() + set.size() > i11 && i13 < i10 - 1) {
                i13++;
                compileChunk = compileChunkArr[i13];
                str = null;
            }
            compileChunk.numPackages++;
            compileChunk.srcs.addAll(set);
            String justPackageName = Util.justPackageName(str2);
            Set<String> set2 = map2.get(str2);
            if (set2 != null) {
                compileChunk.numDependents += set2.size();
            }
            if (str == null || str.trim().equals("")) {
                str = justPackageName;
            }
            compileChunk.pkgNames.append(justPackageName + "(" + set.size() + ") ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" to ");
            sb2.append(justPackageName);
            compileChunk.pkgFromTos = sb2.toString();
        }
        Arrays.sort(compileChunkArr);
        return compileChunkArr;
    }

    @Override
    public void setExtra(String str) {
    }

    @Override
    public boolean transform(final CompilationService compilationService, Map<String, Set<URI>> map, final Set<URI> set, Map<String, Set<String>> map2, URI uri, Map<String, Set<URI>> map3, Map<String, Map<String, Set<String>>> map4, Map<String, Map<String, Set<String>>> map5, Map<String, PubApi> map6, Map<String, PubApi> map7, int i10, boolean z10, int i11) {
        boolean z11;
        int i12;
        int i13 = i11;
        Log.debug("Performing CompileJavaPackages transform...");
        String valueOf = String.valueOf(new Random().nextInt());
        SysInfo sysInfo = compilationService.getSysInfo();
        int i14 = (int) (sysInfo.maxMemory / TagBits.HasNullTypeAnnotation);
        Log.debug("Server reports " + i14 + "MiB of memory and " + sysInfo.numCores + " cores");
        if (i13 <= 0) {
            i13 = sysInfo.numCores;
            Log.debug("Number of jobs not explicitly set, defaulting to " + sysInfo.numCores);
        } else if (sysInfo.numCores < i13) {
            Log.debug("Limiting jobs from explicitly set " + i13 + " to cores available on server: " + sysInfo.numCores);
            i13 = sysInfo.numCores;
        } else {
            Log.debug("Number of jobs explicitly set to " + i13);
        }
        if (i13 > 3) {
            i13 = 3;
        }
        Iterator<String> it = map.o().iterator();
        int i15 = 0;
        while (it.hasNext()) {
            i15 += map.get(it.next()).size();
        }
        int i16 = i15 / i13;
        String property = System.getProperty("os.arch");
        int i17 = "32".equals(System.getProperty("sun.arch.data.model")) ? 119 : 175;
        int i18 = (i17 * i15) / 1024;
        Log.debug("For os.arch " + property + " the empirically determined heap required per file is " + i17 + "KiB");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Server has ");
        sb2.append(i14);
        sb2.append("MiB of heap.");
        Log.debug(sb2.toString());
        Log.debug("Heuristics say that we need " + i18 + "MiB of heap for all source files.");
        if (i14 < i18) {
            if (i15 < 500) {
                Log.debug("Compiling as a single source code chunk to stay within heap size limitations!");
                i16 = i15;
                i13 = 1;
            } else if (i16 > 500) {
                i13 = i15 / 500;
                i16 = i15 / i13;
                Log.debug("Compiling source as " + i13 + " code chunks serially to stay within heap size limitations!");
            }
            z11 = false;
        } else {
            if (i13 > 1) {
                float f10 = i18;
                float f11 = i13;
                int i19 = (int) ((f10 / (0.7f * f11)) * f11);
                Log.debug("Heuristics say that for " + i13 + " concurrent compiles we need " + i19 + "MiB");
                if (i19 > i14) {
                    Log.debug("Limiting compile to a single thread to stay within heap size limitations!");
                    i16 = i15;
                    i13 = 1;
                    z11 = true;
                }
            }
            z11 = true;
        }
        Log.debug("Compiling sources in " + i13 + " chunk(s)");
        CompileChunk[] createCompileChunks = createCompileChunks(map, map2, i13, i16);
        if (Log.isDebugging()) {
            int i20 = 1;
            for (CompileChunk compileChunk : createCompileChunks) {
                Log.debug("Chunk " + i20 + " for " + valueOf + " ---------------");
                i20++;
                Iterator<URI> it2 = compileChunk.srcs.iterator();
                while (it2.hasNext()) {
                    Log.debug("" + ((Object) it2.next()));
                }
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        final Object obj = new Object();
        int i21 = 0;
        while (i21 < i13) {
            final CompileChunk compileChunk2 = createCompileChunks[i21];
            if (compileChunk2.srcs.isEmpty()) {
                i12 = i21;
            } else {
                final String str = valueOf + "-" + String.valueOf(i21);
                final Log log = Log.get();
                i12 = i21;
                arrayList.add(new Callable() {
                    @Override
                    public final Object call() {
                        CompilationSubResult lambda$transform$0;
                        lambda$transform$0 = CompileJavaPackages.this.lambda$transform$0(log, compilationService, str, compileChunk2, set, obj);
                        return lambda$transform$0;
                    }
                });
            }
            i21 = i12 + 1;
        }
        ArrayList<CompilationSubResult> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(z11 ? arrayList.size() : 1);
        Iterator<E> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(newFixedThreadPool.submit((Callable) it3.next()));
        }
        Iterator<E> it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            try {
                arrayList2.add(((Future) it4.next()).get());
            } catch (InterruptedException e10) {
                Log.error("Compilation interrupted: " + e10.getMessage());
                Log.error(e10);
                Thread.currentThread().interrupt();
            } catch (ExecutionException e11) {
                Log.error("Compilation failed: " + e11.getMessage());
                Log.error(e11);
            }
        }
        newFixedThreadPool.shutdownNow();
        boolean z12 = true;
        for (CompilationSubResult compilationSubResult : arrayList2) {
            for (String str2 : compilationSubResult.packageArtifacts.o()) {
                map3.merge(str2, compilationSubResult.packageArtifacts.get(str2), new b());
            }
            for (String str3 : compilationSubResult.packageDependencies.o()) {
                map4.putIfAbsent(str3, new HashMap());
                map4.get(str3).putAll(compilationSubResult.packageDependencies.get(str3));
            }
            for (String str4 : compilationSubResult.packageCpDependencies.o()) {
                map5.putIfAbsent(str4, new HashMap());
                map5.get(str4).putAll(compilationSubResult.packageCpDependencies.get(str4));
            }
            for (String str5 : compilationSubResult.packagePubapis.o()) {
                map6.merge(str5, compilationSubResult.packagePubapis.get(str5), new BiFunction() {
                    @Override
                    public final Object apply(Object obj2, Object obj3) {
                        return PubApi.mergeTypes((PubApi) obj2, (PubApi) obj3);
                    }
                });
            }
            for (String str6 : compilationSubResult.dependencyPubapis.o()) {
                map7.merge(str6, compilationSubResult.dependencyPubapis.get(str6), new BiFunction() {
                    @Override
                    public final Object apply(Object obj2, Object obj3) {
                        return PubApi.mergeTypes((PubApi) obj2, (PubApi) obj3);
                    }
                });
            }
            if (compilationSubResult.result != Main.Result.OK) {
                z12 = false;
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        long j10 = currentTimeMillis2 / 60000;
        Log.debug("Compilation of " + i15 + " source files took " + j10 + "m " + ((currentTimeMillis2 - (60000 * j10)) / 1000) + "s");
        return z12;
    }

    @Override
    public void setExtra(Options options) {
        this.args = options;
    }
}
