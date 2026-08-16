package com.android.dx.command.annotool;

import com.android.dx.cf.attrib.BaseAnnotations;
import com.android.dx.cf.direct.ClassPathOpener;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.command.annotool.Main;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.util.ByteArray;
import java.io.File;
import java.lang.annotation.ElementType;
import java.util.HashSet;
import java.util.Iterator;

class AnnotationLister {
    private static final String PACKAGE_INFO = "package-info";
    private final Main.Arguments args;
    HashSet<String> matchInnerClassesOf = new HashSet<>();
    HashSet<String> matchPackages = new HashSet<>();

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$android$dx$command$annotool$Main$PrintType;

        static {
            int[] iArr = new int[Main.PrintType.values().length];
            $SwitchMap$com$android$dx$command$annotool$Main$PrintType = iArr;
            try {
                iArr[Main.PrintType.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$command$annotool$Main$PrintType[Main.PrintType.INNERCLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dx$command$annotool$Main$PrintType[Main.PrintType.METHOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$dx$command$annotool$Main$PrintType[Main.PrintType.PACKAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AnnotationLister(Main.Arguments arguments) {
        this.args = arguments;
    }

    public boolean isMatchingInnerClass(String str) {
        do {
            int lastIndexOf = str.lastIndexOf(36);
            if (lastIndexOf <= 0) {
                return false;
            }
            str = str.substring(0, lastIndexOf);
        } while (!this.matchInnerClassesOf.contains(str));
        return true;
    }

    public boolean isMatchingPackage(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        return this.matchPackages.contains(lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf));
    }

    public void printMatch(DirectClassFile directClassFile) {
        Iterator<E> it = this.args.printTypes.iterator();
        while (it.hasNext()) {
            int i10 = AnonymousClass2.$SwitchMap$com$android$dx$command$annotool$Main$PrintType[((Main.PrintType) it.next()).ordinal()];
            if (i10 == 1) {
                System.out.println(directClassFile.getThisClass().getClassType().getClassName().replace('/', '.'));
            } else if (i10 == 2) {
                this.matchInnerClassesOf.add(directClassFile.getThisClass().getClassType().getClassName());
            }
        }
    }

    private void printMatchPackage(String str) {
        Iterator<E> it = this.args.printTypes.iterator();
        while (it.hasNext()) {
            int i10 = AnonymousClass2.$SwitchMap$com$android$dx$command$annotool$Main$PrintType[((Main.PrintType) it.next()).ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3) {
                this.matchPackages.add(str);
            } else if (i10 == 4) {
                System.out.println(str.replace('/', '.'));
            }
        }
    }

    public void visitClassAnnotation(DirectClassFile directClassFile, BaseAnnotations baseAnnotations) {
        if (this.args.eTypes.contains(ElementType.TYPE)) {
            Iterator<Annotation> it = baseAnnotations.getAnnotations().getAnnotations().iterator();
            while (it.hasNext()) {
                if (this.args.aclass.equals(it.next().getType().getClassType().getClassName())) {
                    printMatch(directClassFile);
                }
            }
        }
    }

    public void visitPackageAnnotation(DirectClassFile directClassFile, BaseAnnotations baseAnnotations) {
        if (this.args.eTypes.contains(ElementType.PACKAGE)) {
            String className = directClassFile.getThisClass().getClassType().getClassName();
            int lastIndexOf = className.lastIndexOf(47);
            String substring = lastIndexOf == -1 ? "" : className.substring(0, lastIndexOf);
            Iterator<Annotation> it = baseAnnotations.getAnnotations().getAnnotations().iterator();
            while (it.hasNext()) {
                if (this.args.aclass.equals(it.next().getType().getClassType().getClassName())) {
                    printMatchPackage(substring);
                }
            }
        }
    }

    public void process() {
        for (String str : this.args.files) {
            new ClassPathOpener(str, true, new ClassPathOpener.Consumer() {
                @Override
                public void onException(Exception exc) {
                    throw new RuntimeException(exc);
                }

                @Override
                public void onProcessArchiveStart(File file) {
                }

                @Override
                public boolean processFileBytes(String str2, long j10, byte[] bArr) {
                    if (!str2.endsWith(".class")) {
                        return true;
                    }
                    DirectClassFile directClassFile = new DirectClassFile(new ByteArray(bArr), str2, true);
                    directClassFile.setAttributeFactory(StdAttributeFactory.THE_ONE);
                    AttributeList attributes = directClassFile.getAttributes();
                    String className = directClassFile.getThisClass().getClassType().getClassName();
                    if (className.endsWith(AnnotationLister.PACKAGE_INFO)) {
                        for (Attribute findFirst = attributes.findFirst("RuntimeInvisibleAnnotations"); findFirst != null; findFirst = attributes.findNext(findFirst)) {
                            AnnotationLister.this.visitPackageAnnotation(directClassFile, (BaseAnnotations) findFirst);
                        }
                        for (Attribute findFirst2 = attributes.findFirst("RuntimeVisibleAnnotations"); findFirst2 != null; findFirst2 = attributes.findNext(findFirst2)) {
                            AnnotationLister.this.visitPackageAnnotation(directClassFile, (BaseAnnotations) findFirst2);
                        }
                    } else if (AnnotationLister.this.isMatchingInnerClass(className) || AnnotationLister.this.isMatchingPackage(className)) {
                        AnnotationLister.this.printMatch(directClassFile);
                    } else {
                        for (Attribute findFirst3 = attributes.findFirst("RuntimeInvisibleAnnotations"); findFirst3 != null; findFirst3 = attributes.findNext(findFirst3)) {
                            AnnotationLister.this.visitClassAnnotation(directClassFile, (BaseAnnotations) findFirst3);
                        }
                        for (Attribute findFirst4 = attributes.findFirst("RuntimeVisibleAnnotations"); findFirst4 != null; findFirst4 = attributes.findNext(findFirst4)) {
                            AnnotationLister.this.visitClassAnnotation(directClassFile, (BaseAnnotations) findFirst4);
                        }
                    }
                    return true;
                }
            }).process();
        }
    }
}
