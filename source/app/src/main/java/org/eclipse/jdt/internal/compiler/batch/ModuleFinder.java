package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.PackageExportImpl;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ModuleFinder {

    public static class AddExport {
        public final IModule.IPackageExport export;
        public final String sourceModuleName;

        public AddExport(String str, IModule.IPackageExport iPackageExport) {
            this.sourceModuleName = str;
            this.export = iPackageExport;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AddExport extractAddonExport(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/");
        ArrayList arrayList = new ArrayList();
        if (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken("/");
            if (stringTokenizer.hasMoreTokens()) {
                String nextToken2 = stringTokenizer.nextToken("/=");
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(stringTokenizer.nextToken("=,"));
                }
                PackageExportImpl packageExportImpl = new PackageExportImpl();
                packageExportImpl.pack = nextToken2.toCharArray();
                packageExportImpl.exportedTo = new char[arrayList.size()];
                int i10 = 0;
                while (true) {
                    char[][] cArr = packageExportImpl.exportedTo;
                    if (i10 >= cArr.length) {
                        return new AddExport(nextToken, packageExportImpl);
                    }
                    cArr[i10] = ((String) arrayList.get(i10)).toCharArray();
                    i10++;
                }
            }
        }
        return null;
    }

    public static String[] extractAddonRead(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "=");
        if (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (stringTokenizer.hasMoreTokens()) {
                return new String[]{nextToken, stringTokenizer.nextToken()};
            }
        }
        return null;
    }

    private static IModule extractModuleFromArchive(File file, FileSystem.Classpath classpath, String str, String str2) {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            zipFile = new ZipFile(file);
            if (str2 != null) {
                try {
                    String str3 = "META-INF/versions/" + str2 + "/" + str;
                    if (zipFile.getEntry(str3) != null) {
                        str = str3;
                    }
                } catch (IOException | ClassFormatException unused) {
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    zipFile2 = zipFile;
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            }
            ClassFileReader read = ClassFileReader.read(zipFile, str);
            if (getModule(read) == null) {
                try {
                    zipFile.close();
                } catch (IOException unused4) {
                }
                return null;
            }
            IBinaryModule moduleDeclaration = read.getModuleDeclaration();
            try {
                zipFile.close();
            } catch (IOException unused5) {
            }
            return moduleDeclaration;
        } catch (IOException | ClassFormatException unused6) {
            zipFile = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static IModule extractModuleFromClass(File file, FileSystem.Classpath classpath) {
        try {
            ClassFileReader read = ClassFileReader.read(file);
            if (getModule(read) != null) {
                return read.getModuleDeclaration();
            }
            return null;
        } catch (IOException | ClassFormatException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static IModule extractModuleFromSource(File file, Parser parser, FileSystem.Classpath classpath) {
        CompilationUnit compilationUnit = new CompilationUnit(null, file.getAbsolutePath(), null, classpath.getDestinationPath());
        CompilationUnitDeclaration parse = parser.parse(compilationUnit, new CompilationResult(compilationUnit, 0, 1, 10));
        if (!parse.isModuleInfo() || parse.moduleDeclaration == null) {
            return null;
        }
        return new BasicModule(parse.moduleDeclaration, classpath);
    }

    public static FileSystem.Classpath findModule(File file, String str, Parser parser, Map<String, String> map, boolean z10, String str2) {
        String str3;
        String absolutePath = file.getAbsolutePath();
        boolean z11 = !z10;
        if (str == null) {
            str3 = null;
        } else {
            str3 = str + File.separator + file.getName();
        }
        FileSystem.Classpath classpath = FileSystem.getClasspath(absolutePath, null, z11, null, str3, map, str2);
        if (classpath != null) {
            scanForModule(classpath, file, parser, z10, str2);
        }
        return classpath;
    }

    public static List<FileSystem.Classpath> findModules(File file, String str, Parser parser, Map<String, String> map, boolean z10, String str2) {
        ArrayList arrayList = new ArrayList();
        scanForModules(str, parser, map, z10, false, arrayList, file, str2);
        return arrayList;
    }

    private static String getFileName(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    private static Manifest getManifest(File file) {
        Throwable th2;
        if (getModulePathForArchive(file) == null) {
            return null;
        }
        try {
            JarFile jarFile = new JarFile(file);
            try {
                Manifest manifest = jarFile.getManifest();
                jarFile.close();
                return manifest;
            } catch (Throwable th3) {
                try {
                    jarFile.close();
                    throw th3;
                } catch (Throwable th4) {
                    th2 = th3;
                    th = th4;
                    if (th2 == null) {
                        throw th;
                    }
                    if (th2 != th) {
                        try {
                            th2.addSuppressed(th);
                        } catch (IOException unused) {
                            return null;
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            th2 = null;
        }
    }

    private static IModule getModule(ClassFileReader classFileReader) {
        if (classFileReader != null) {
            return classFileReader.getModuleDeclaration();
        }
        return null;
    }

    private static String getModulePathForArchive(File file) {
        int archiveFormat = Util.archiveFormat(file.getAbsolutePath());
        if (archiveFormat == 0) {
            return "module-info.class";
        }
        if (archiveFormat == 1) {
            return "classes/module-info.class";
        }
        return null;
    }

    public static IModule scanForModule(FileSystem.Classpath classpath, final File file, Parser parser, boolean z10, String str) {
        IModule iModule = null;
        if (file.isDirectory()) {
            String[] list = file.list(new FilenameFilter() {
                @Override
                public boolean accept(File file2, String str2) {
                    if (file2 == File.this) {
                        return str2.equalsIgnoreCase("module-info.class") || str2.equalsIgnoreCase("module-info.java");
                    }
                    return false;
                }
            });
            if (list.length > 0) {
                String str2 = list[0];
                int hashCode = str2.hashCode();
                if (hashCode != -563279303) {
                    if (hashCode == 1921690945 && str2.equals("module-info.java")) {
                        IModule extractModuleFromSource = extractModuleFromSource(new File(file, str2), parser, classpath);
                        if (extractModuleFromSource == null) {
                            return null;
                        }
                        String str3 = new String(extractModuleFromSource.name());
                        if (!str3.equals(file.getName())) {
                            throw new IllegalArgumentException("module name " + str3 + " does not match expected name " + file.getName());
                        }
                        iModule = extractModuleFromSource;
                    }
                } else if (str2.equals("module-info.class")) {
                    iModule = extractModuleFromClass(new File(file, str2), classpath);
                }
            }
        } else {
            String modulePathForArchive = getModulePathForArchive(file);
            if (modulePathForArchive != null) {
                iModule = extractModuleFromArchive(file, classpath, modulePathForArchive, str);
            }
        }
        if (z10 && iModule == null && !(classpath instanceof ClasspathJrt)) {
            iModule = IModule.createAutomatic(getFileName(file), file.isFile(), getManifest(file));
        }
        if (iModule != null) {
            classpath.acceptModule(iModule);
        }
        return iModule;
    }

    public static void scanForModules(String str, Parser parser, Map<String, String> map, boolean z10, boolean z11, List<FileSystem.Classpath> list, File file, String str2) {
        FileSystem.Classpath classpath = FileSystem.getClasspath(file.getAbsolutePath(), null, !z10, null, str == null ? null : str + File.separator + file.getName(), map, str2);
        if (classpath != null) {
            if (scanForModule(classpath, file, parser, z11, str2) != null) {
                list.add(classpath);
                return;
            }
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    scanForModules(str, parser, map, z10, z10, list, file2, str2);
                }
            }
        }
    }
}
