package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class ClasspathDirectory extends ClasspathLocation {
    private Hashtable directoryCache;
    private String encoding;
    private String[] missingPackageHolder;
    private int mode;
    Map options;
    private Hashtable<String, Hashtable<String, String>> packageSecondaryTypes;

    public ClasspathDirectory(File file, String str, int i10, AccessRuleSet accessRuleSet, String str2, Map map) {
        super(accessRuleSet, str2);
        this.missingPackageHolder = new String[1];
        this.packageSecondaryTypes = null;
        this.mode = i10;
        this.options = map;
        try {
            this.path = file.getCanonicalPath();
        } catch (IOException unused) {
            this.path = file.getAbsolutePath();
        }
        String str3 = this.path;
        String str4 = File.separator;
        if (!str3.endsWith(str4)) {
            this.path = String.valueOf(this.path) + str4;
        }
        this.directoryCache = new Hashtable(11);
        this.encoding = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NameEnvironmentAnswer findClassInternal(char[] cArr, String str, String str2, boolean z10) {
        boolean z11;
        if (!isPackage(str, null)) {
            return null;
        }
        String str3 = new String(cArr);
        if ((this.mode & 2) != 0) {
            if (doesFileExist(str3 + ".class", str)) {
                z11 = true;
                if ((1 & this.mode) != 0) {
                    if (doesFileExist(str3 + ".java", str) && !z10) {
                        String str4 = String.valueOf(this.path) + str2.substring(0, str2.length() - 6) + ".java";
                        CompilationUnit compilationUnit = new CompilationUnit(null, str4, this.encoding, this.destinationPath);
                        IModule iModule = this.module;
                        compilationUnit.module = iModule == null ? null : iModule.name();
                        if (!z11) {
                            return new NameEnvironmentAnswer(compilationUnit, fetchAccessRestriction(str2));
                        }
                        if (new File(str4).lastModified() > new File(String.valueOf(this.path) + str2).lastModified()) {
                            return new NameEnvironmentAnswer(compilationUnit, fetchAccessRestriction(str2));
                        }
                    }
                }
                if (z11) {
                    try {
                        ClassFileReader read = ClassFileReader.read(String.valueOf(this.path) + str2);
                        if (str.length() > 0) {
                            str3 = String.valueOf(str.replace(File.separatorChar, '/')) + "/" + str3;
                        }
                        if (!CharOperation.equals(read.getName(), str3.toCharArray())) {
                            read = null;
                        }
                        if (read != null) {
                            char[] cArr2 = read.moduleName;
                            if (cArr2 == null) {
                                IModule iModule2 = this.module;
                                cArr2 = iModule2 != null ? iModule2.name() : null;
                            }
                            return new NameEnvironmentAnswer(read, fetchAccessRestriction(str2), cArr2);
                        }
                    } catch (IOException | ClassFormatException unused) {
                    }
                }
                return null;
            }
        }
        z11 = false;
        if ((1 & this.mode) != 0) {
        }
        if (z11) {
        }
        return null;
    }

    private NameEnvironmentAnswer findSourceSecondaryType(String str, String str2, String str3) {
        if (this.packageSecondaryTypes == null) {
            this.packageSecondaryTypes = new Hashtable<>();
        }
        Hashtable<String, String> hashtable = this.packageSecondaryTypes.get(str2);
        if (hashtable == null) {
            hashtable = getSecondaryTypes(str2);
            this.packageSecondaryTypes.put(str2, hashtable);
        }
        String str4 = hashtable.get(str);
        if (str4 != null) {
            return new NameEnvironmentAnswer(new CompilationUnit(null, str4, this.encoding, this.destinationPath), fetchAccessRestriction(str3));
        }
        return null;
    }

    private Hashtable<String, String> getSecondaryTypes(String str) {
        String absolutePath;
        Hashtable<String, String> hashtable = new Hashtable<>();
        String[] strArr = (String[]) this.directoryCache.get(str);
        if (strArr == this.missingPackageHolder || strArr == null) {
            return hashtable;
        }
        File file = new File(String.valueOf(this.path) + str);
        File[] listFiles = file.isDirectory() ? file.listFiles() : null;
        if (listFiles == null) {
            return hashtable;
        }
        for (File file2 : listFiles) {
            if (!file2.isDirectory() && (absolutePath = file2.getAbsolutePath()) != null && (absolutePath.endsWith(".java") || absolutePath.endsWith(SuffixConstants.SUFFIX_STRING_JAVA))) {
                CompilationUnit compilationUnit = new CompilationUnit(null, absolutePath, this.encoding, this.destinationPath);
                CompilationResult compilationResult = new CompilationResult(absolutePath.toCharArray(), 1, 1, 10);
                Parser parser = new Parser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), new CompilerOptions(this.options), new DefaultProblemFactory()), false);
                parser.reportSyntaxErrorIsRequired = false;
                CompilationUnitDeclaration parse = parser.parse(compilationUnit, compilationResult);
                TypeDeclaration[] typeDeclarationArr = parse != null ? parse.types : null;
                if (typeDeclarationArr != null) {
                    for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
                        char[] cArr = typeDeclaration.isSecondary() ? typeDeclaration.name : null;
                        if (cArr != null) {
                            hashtable.put(new String(cArr), absolutePath);
                        }
                    }
                }
            }
        }
        return hashtable;
    }

    public boolean lambda$0(String str, Function function, String str2) {
        String lowerCase = str2.toLowerCase();
        String str3 = String.valueOf(this.path) + str + "/" + str2;
        if (lowerCase.endsWith(".class")) {
            return true;
        }
        String str4 = lowerCase.endsWith(".java") ? (String) function.apply(new CompilationUnit(null, str3, this.encoding)) : null;
        return str4 != null && str4.equals(str.replace(File.separatorChar, '.'));
    }

    public String[] directoryList(String str) {
        String[] strArr = (String[]) this.directoryCache.get(str);
        if (strArr == this.missingPackageHolder) {
            return null;
        }
        if (strArr != null) {
            return strArr;
        }
        File file = new File(String.valueOf(this.path) + str);
        if (file.isDirectory()) {
            int length = str.length();
            int lastIndexOf = str.lastIndexOf(File.separatorChar);
            do {
                length--;
                if (length <= lastIndexOf) {
                    break;
                }
            } while (!ScannerHelper.isUpperCase(str.charAt(length)));
            if (length <= lastIndexOf || (lastIndexOf != -1 ? doesFileExist(str.substring(lastIndexOf + 1), str.substring(0, lastIndexOf)) : doesFileExist(str, Util.EMPTY_STRING))) {
                String[] list = file.list();
                if (list == null) {
                    list = CharOperation.NO_STRINGS;
                }
                this.directoryCache.put(str, list);
                return list;
            }
        }
        this.directoryCache.put(str, this.missingPackageHolder);
        return null;
    }

    public boolean doesFileExist(String str, String str2) {
        String[] directoryList = directoryList(str2);
        if (directoryList == null) {
            return false;
        }
        int length = directoryList.length;
        do {
            length--;
            if (length < 0) {
                return false;
            }
        } while (!str.equals(directoryList[length]));
        return true;
    }

    @Override
    public List fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter) {
        return null;
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3) {
        return findClass(cArr, str, str2, str3, false);
    }

    public NameEnvironmentAnswer findSecondaryInClass(char[] cArr, String str, String str2) {
        if (CharOperation.equals(TypeConstants.PACKAGE_INFO_NAME, cArr)) {
            return null;
        }
        String str3 = new String(cArr);
        IModule iModule = this.module;
        String valueOf = iModule != null ? String.valueOf(iModule.name()) : null;
        if (this.options != null && isPackage(str, valueOf) && (this.mode & 1) != 0) {
            if (doesFileExist(str3 + ".java", str)) {
                return null;
            }
        }
        return findSourceSecondaryType(str3, str, str2);
    }

    @Override
    public char[][][] findTypeNames(String str, String str2) {
        String[] list;
        int length;
        if (!isPackage(str, str2)) {
            return null;
        }
        File file = new File(String.valueOf(this.path) + str);
        if (!file.exists() || !file.isDirectory() || (list = file.list(new FilenameFilter() {
            @Override
            public boolean accept(File file2, String str3) {
                String lowerCase = str3.toLowerCase();
                return lowerCase.endsWith(".class") || lowerCase.endsWith(".java");
            }
        })) == null || (length = list.length) == 0) {
            return null;
        }
        Set<String> o10 = getSecondaryTypes(str).o();
        char[][][] cArr = new char[o10.size() + length][];
        char[][] splitOn = CharOperation.splitOn(File.separatorChar, str.toCharArray());
        for (int i10 = 0; i10 < length; i10++) {
            String str3 = list[i10];
            int indexOf = str3.indexOf(46);
            if (indexOf > 0) {
                str3 = str3.substring(0, indexOf);
            }
            cArr[i10] = CharOperation.arrayConcat(splitOn, str3.toCharArray());
        }
        if (o10.size() > 0) {
            Iterator<String> it = o10.iterator();
            while (it.hasNext()) {
                cArr[length] = CharOperation.arrayConcat(splitOn, it.next().toCharArray());
                length++;
            }
        }
        return cArr;
    }

    @Override
    public int getMode() {
        return this.mode;
    }

    @Override
    public IModule getModule() {
        if (!this.isAutoModule || this.module != null) {
            return this.module;
        }
        IModule createAutomatic = IModule.createAutomatic(this.path, false, null);
        this.module = createAutomatic;
        return createAutomatic;
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        char c10 = File.separatorChar;
        if (c10 != '/') {
            str = str.replace('/', c10);
        }
        return singletonModuleNameIf(directoryList(str) != null);
    }

    @Override
    public String getPath() {
        return this.path;
    }

    @Override
    public boolean hasAnnotationFileFor(String str) {
        int i10;
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf == -1 || (i10 = lastIndexOf + 1) >= str.length()) {
            return false;
        }
        return doesFileExist(String.valueOf(str.substring(i10)) + ExternalAnnotationProvider.ANNOTATION_FILE_SUFFIX, str.substring(0, lastIndexOf));
    }

    @Override
    public boolean hasCUDeclaringPackage(final String str, final Function<CompilationUnit, String> function) {
        char c10 = File.separatorChar;
        if (c10 != '/') {
            str = str.replace('/', c10);
        }
        return Stream.of((Object[]) directoryList(str)).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$0;
                lambda$0 = ClasspathDirectory.this.lambda$0(str, function, (String) obj);
                return lambda$0;
            }
        });
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        char c10 = File.separatorChar;
        if (c10 != '/') {
            str = str.replace('/', c10);
        }
        String[] directoryList = directoryList(str);
        if (directoryList != null) {
            for (String str3 : directoryList) {
                String lowerCase = str3.toLowerCase();
                if (lowerCase.endsWith(".java") || lowerCase.endsWith(".class")) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void initialize() throws IOException {
    }

    @Override
    public char[] normalizedPath() {
        if (this.normalizedPath == null) {
            char[] charArray = this.path.toCharArray();
            this.normalizedPath = charArray;
            if (File.separatorChar == '\\') {
                CharOperation.replace(charArray, JavaElement.JEM_ESCAPE, '/');
            }
        }
        return this.normalizedPath;
    }

    @Override
    public void reset() {
        super.reset();
        this.directoryCache = new Hashtable(11);
    }

    public String toString() {
        return "ClasspathDirectory " + this.path;
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        char c10 = File.separatorChar;
        if (c10 == '/') {
            return findClassInternal(cArr, str, str3, z10);
        }
        return findClassInternal(cArr, str.replace('/', c10), str3.replace('/', c10), z10);
    }
}
