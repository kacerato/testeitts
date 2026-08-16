package org.openjdk.tools.sjavac.comp;

import ei.C13155a;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.javax.tools.ToolProvider;
import org.openjdk.tools.javac.api.JavacTaskImpl;
import org.openjdk.tools.javac.api.JavacTool;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.Util;
import org.openjdk.tools.sjavac.comp.dependencies.NewDependencyCollector;
import org.openjdk.tools.sjavac.comp.dependencies.PublicApiCollector;
import org.openjdk.tools.sjavac.server.CompilationSubResult;
import org.openjdk.tools.sjavac.server.SysInfo;

public class CompilationService {
    private void logJavacInvocation(String[] strArr) {
        Log.debug("Invoking javac with args");
        Iterator it = Arrays.asList(strArr).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String str2 = C13155a.f85806a + str;
            if (str.matches("\\-(d|cp|classpath|sourcepath|source|target)") && it.hasNext()) {
                str2 = str2 + " " + ((String) it.next());
            }
            Log.debug(str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0147 A[Catch: all -> 0x0101, TryCatch #1 {all -> 0x0101, blocks: (B:55:0x00e2, B:57:0x013b, B:59:0x0147, B:60:0x0149, B:68:0x012b, B:76:0x0122), top: B:43:0x009f }] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.openjdk.tools.sjavac.comp.dependencies.PublicApiCollector, org.openjdk.source.util.TaskListener] */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.openjdk.source.util.TaskListener, org.openjdk.tools.sjavac.comp.dependencies.NewDependencyCollector] */
    /* JADX WARN: Type inference failed for: r18v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7, types: [org.openjdk.javax.tools.JavaFileManager] */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r1v14, types: [org.openjdk.tools.javac.api.JavacTaskImpl, org.openjdk.tools.javac.api.BasicJavacTask] */
    /* JADX WARN: Type inference failed for: r2v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.openjdk.tools.javac.file.JavacFileManager, org.openjdk.javax.tools.StandardJavaFileManager, org.openjdk.javax.tools.JavaFileManager] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompilationSubResult compile(String str, String str2, String[] strArr, List<File> list, Set<URI> set, Set<URI> set2) {
        Throwable th2;
        AutoCloseable autoCloseable;
        ?? r22;
        Main.Result result;
        ?? r12;
        JavacTool javacTool = (JavacTool) ToolProvider.getSystemJavaCompiler();
        try {
            try {
                ?? standardFileManager = javacTool.getStandardFileManager((DiagnosticListener<? super JavaFileObject>) null, (Locale) null, (Charset) null);
                try {
                    SmartFileManager smartFileManager = new SmartFileManager(standardFileManager);
                    Context context = new Context();
                    Dependencies.GraphDependencies.preRegister(context);
                    CompilationSubResult compilationSubResult = new CompilationSubResult(Main.Result.OK);
                    ListBuffer listBuffer = new ListBuffer();
                    Iterator<? extends JavaFileObject> it = standardFileManager.getJavaFileObjectsFromFiles(list).iterator();
                    while (it.hasNext()) {
                        try {
                            listBuffer.append(SmartFileManager.locWrap(it.next(), (JavaFileManager.Location) StandardLocation.SOURCE_PATH));
                        } catch (Throwable th3) {
                            th2 = th3;
                            autoCloseable = standardFileManager;
                            try {
                                throw th2;
                            } finally {
                            }
                        }
                    }
                    ListBuffer listBuffer2 = new ListBuffer();
                    Iterator<URI> it2 = set.iterator();
                    while (it2.hasNext()) {
                        listBuffer2.append(new File(it2.next()));
                    }
                    Iterator<? extends JavaFileObject> it3 = standardFileManager.getJavaFileObjectsFromFiles(listBuffer2).iterator();
                    while (it3.hasNext()) {
                        listBuffer.append(SmartFileManager.locWrap(it3.next(), (JavaFileManager.Location) StandardLocation.SOURCE_PATH));
                    }
                    StringWriter stringWriter = new StringWriter();
                    ?? publicApiCollector = new PublicApiCollector(context, listBuffer);
                    PathAndPackageVerifier pathAndPackageVerifier = new PathAndPackageVerifier();
                    ?? newDependencyCollector = new NewDependencyCollector(context, listBuffer);
                    try {
                        try {
                            r22 = listBuffer.size();
                            try {
                                if (r22 > 0) {
                                    smartFileManager.setVisibleSources(set2);
                                    smartFileManager.cleanArtifacts();
                                    str = standardFileManager;
                                    boolean z10 = false;
                                    try {
                                        try {
                                            r12 = (JavacTaskImpl) javacTool.getTask(new PrintWriter(stringWriter), smartFileManager, null, Arrays.asList(strArr), null, listBuffer, context);
                                            r22 = 1;
                                            r22 = 1;
                                        } catch (Exception e10) {
                                            e = e10;
                                            r22 = 1;
                                            standardFileManager = z10;
                                            str = str;
                                        }
                                        try {
                                            smartFileManager.setSymbolFileEnabled(!Options.instance(context).isSet("ignore.symbol.file"));
                                            r12.addTaskListener(newDependencyCollector);
                                            r12.addTaskListener(publicApiCollector);
                                            r12.addTaskListener(pathAndPackageVerifier);
                                            logJavacInvocation(strArr);
                                            result = r12.doCall();
                                            Log.debug("javac result: " + ((Object) result));
                                            smartFileManager.flush();
                                            standardFileManager = z10;
                                            str = str;
                                        } catch (Exception e11) {
                                            e = e11;
                                            standardFileManager = z10;
                                            str = str;
                                            Log.error(Util.getStackTrace(e));
                                            stringWriter.append((CharSequence) Util.getStackTrace(e));
                                            result = Main.Result.ERROR;
                                            compilationSubResult.packageArtifacts = smartFileManager.getPackageArtifacts();
                                            if (pathAndPackageVerifier.errorsDiscovered()) {
                                            }
                                            compilationSubResult.packageDependencies = newDependencyCollector.getDependencies(standardFileManager);
                                            compilationSubResult.packageCpDependencies = newDependencyCollector.getDependencies(r22);
                                            compilationSubResult.packagePubapis = publicApiCollector.getPubApis(r22);
                                            compilationSubResult.dependencyPubapis = publicApiCollector.getPubApis(standardFileManager);
                                            compilationSubResult.stderr = stringWriter.toString();
                                            compilationSubResult.result = result;
                                            str.close();
                                            return compilationSubResult;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        th2 = th;
                                        autoCloseable = str;
                                        throw th2;
                                    }
                                } else {
                                    r22 = 1;
                                    str = standardFileManager;
                                    standardFileManager = 0;
                                    result = Main.Result.ERROR;
                                }
                            } catch (Exception e12) {
                                e = e12;
                                r22 = r22;
                                standardFileManager = standardFileManager;
                                str = str;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Exception e13) {
                        e = e13;
                        r22 = 1;
                        str = standardFileManager;
                        standardFileManager = 0;
                    }
                    compilationSubResult.packageArtifacts = smartFileManager.getPackageArtifacts();
                    if (pathAndPackageVerifier.errorsDiscovered()) {
                        result = Main.Result.ERROR;
                    }
                    compilationSubResult.packageDependencies = newDependencyCollector.getDependencies(standardFileManager);
                    compilationSubResult.packageCpDependencies = newDependencyCollector.getDependencies(r22);
                    compilationSubResult.packagePubapis = publicApiCollector.getPubApis(r22);
                    compilationSubResult.dependencyPubapis = publicApiCollector.getPubApis(standardFileManager);
                    compilationSubResult.stderr = stringWriter.toString();
                    compilationSubResult.result = result;
                    str.close();
                    return compilationSubResult;
                } catch (Throwable th6) {
                    th = th6;
                    str = standardFileManager;
                }
            } catch (IOException e14) {
                e = e14;
                throw new Error(e);
            }
        } catch (IOException e15) {
            e = e15;
            throw new Error(e);
        }
    }

    public SysInfo getSysInfo() {
        return new SysInfo(Runtime.getRuntime().availableProcessors(), Runtime.getRuntime().maxMemory());
    }
}
