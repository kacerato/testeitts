package com.android.multidex;

import com.android.dx.cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.cf.iface.HasAttribute;
import com.android.dx.cf.iface.MethodList;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class MainDexListBuilder {
    private static final String CLASS_EXTENSION = ".class";
    private static final String DISABLE_ANNOTATION_RESOLUTION_WORKAROUND = "--disable-annotation-resolution-workaround";
    private static final String EOL;
    private static final int STATUS_ERROR = 1;
    private static String USAGE_MESSAGE;
    private Set<String> filesToKeep = new HashSet();

    static {
        String property = System.getProperty("line.separator");
        EOL = property;
        USAGE_MESSAGE = "Usage:" + property + property + "Short version: Don't use this." + property + property + "Slightly longer version: This tool is used by mainDexClasses script to build" + property + "the main dex list." + property;
    }

    public MainDexListBuilder(boolean z10, String str, String str2) throws IOException {
        Path path;
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(str);
                try {
                    path = new Path(str2);
                    try {
                        ClassReferenceListBuilder classReferenceListBuilder = new ClassReferenceListBuilder(path);
                        classReferenceListBuilder.addRoots(zipFile2);
                        for (String str3 : classReferenceListBuilder.getClassNames()) {
                            this.filesToKeep.add(str3 + ".class");
                        }
                        if (z10) {
                            keepAnnotated(path);
                        }
                        try {
                            zipFile2.close();
                        } catch (IOException unused) {
                        }
                        Iterator<ClassPathElement> it = path.elements.iterator();
                        while (it.hasNext()) {
                            try {
                                it.next().close();
                            } catch (IOException unused2) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = zipFile2;
                        try {
                            zipFile.close();
                        } catch (IOException unused3) {
                        }
                        if (path == null) {
                            throw th;
                        }
                        Iterator<ClassPathElement> it2 = path.elements.iterator();
                        while (it2.hasNext()) {
                            try {
                                it2.next().close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    path = null;
                }
            } catch (IOException e10) {
                throw new IOException(JavadocConstants.ANCHOR_PREFIX_END + str + "\" can not be read as a zip archive. (" + e10.getMessage() + ")", e10);
            }
        } catch (Throwable th4) {
            th = th4;
            path = null;
        }
    }

    private boolean hasRuntimeVisibleAnnotation(HasAttribute hasAttribute) {
        Attribute findFirst = hasAttribute.getAttributes().findFirst("RuntimeVisibleAnnotations");
        return findFirst != null && ((AttRuntimeVisibleAnnotations) findFirst).getAnnotations().size() > 0;
    }

    private void keepAnnotated(Path path) throws FileNotFoundException {
        Iterator<ClassPathElement> it = path.getElements().iterator();
        while (it.hasNext()) {
            for (String str : it.next().list()) {
                if (str.endsWith(".class")) {
                    DirectClassFile directClassFile = path.getClass(str);
                    if (hasRuntimeVisibleAnnotation(directClassFile)) {
                        this.filesToKeep.add(str);
                    } else {
                        MethodList methods = directClassFile.getMethods();
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= methods.size()) {
                                FieldList fields = directClassFile.getFields();
                                while (true) {
                                    if (i10 >= fields.size()) {
                                        break;
                                    }
                                    if (hasRuntimeVisibleAnnotation(fields.get(i10))) {
                                        this.filesToKeep.add(str);
                                        break;
                                    }
                                    i10++;
                                }
                            } else {
                                if (hasRuntimeVisibleAnnotation(methods.get(i11))) {
                                    this.filesToKeep.add(str);
                                    break;
                                }
                                i11++;
                            }
                        }
                    }
                }
            }
        }
    }

    public static void main(String[] strArr) {
        int i10 = 0;
        boolean z10 = true;
        while (i10 < strArr.length - 2) {
            if (strArr[i10].equals(DISABLE_ANNOTATION_RESOLUTION_WORKAROUND)) {
                z10 = false;
            } else {
                System.err.println("Invalid option " + strArr[i10]);
                printUsage();
                System.exit(1);
            }
            i10++;
        }
        if (strArr.length - i10 != 2) {
            printUsage();
            System.exit(1);
        }
        try {
            printList(new MainDexListBuilder(z10, strArr[i10], strArr[i10 + 1]).getMainDexList());
        } catch (IOException e10) {
            System.err.println("A fatal error occured: " + e10.getMessage());
            System.exit(1);
        }
    }

    private static void printList(Set<String> set) {
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }
    }

    private static void printUsage() {
        System.err.print(USAGE_MESSAGE);
    }

    public Set<String> getMainDexList() {
        return this.filesToKeep;
    }
}
