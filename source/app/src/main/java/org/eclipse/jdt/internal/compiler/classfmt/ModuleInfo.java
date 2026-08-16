package org.eclipse.jdt.internal.compiler.classfmt;

import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class ModuleInfo extends ClassFileStruct implements IBinaryModule {
    protected AnnotationInfo[] annotations;
    protected PackageExportInfo[] exports;
    protected int exportsCount;
    protected int flags;
    protected char[] name;
    protected PackageExportInfo[] opens;
    protected int opensCount;
    IModule.IService[] provides;
    protected int providesCount;
    protected ModuleReferenceInfo[] requires;
    protected int requiresCount;
    private long tagBits;
    char[][] uses;
    protected int usesCount;
    protected char[] version;

    public class ModuleReferenceInfo implements IModule.IModuleReference {
        boolean isTransitive = false;
        int modifiers;
        char[] refName;
        char[] required_version;

        public ModuleReferenceInfo() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IModule.IModuleReference)) {
                return false;
            }
            IModule.IModuleReference iModuleReference = (IModule.IModuleReference) obj;
            if (this.modifiers != iModuleReference.getModifiers()) {
                return false;
            }
            return CharOperation.equals(this.refName, iModuleReference.name(), false);
        }

        @Override
        public int getModifiers() {
            return this.modifiers;
        }

        public int hashCode() {
            return CharOperation.hashCode(this.refName);
        }

        @Override
        public boolean isTransitive() {
            return this.isTransitive;
        }

        @Override
        public char[] name() {
            return this.refName;
        }
    }

    public class PackageExportInfo implements IModule.IPackageExport {
        char[][] exportedTo;
        int exportedToCount;
        int modifiers;
        char[] packageName;

        public PackageExportInfo() {
        }

        @Override
        public char[] name() {
            return this.packageName;
        }

        @Override
        public char[][] targets() {
            return this.exportedTo;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            toStringContent(stringBuffer);
            return stringBuffer.toString();
        }

        public void toStringContent(StringBuffer stringBuffer) {
            stringBuffer.append(this.packageName);
            if (this.exportedToCount > 0) {
                stringBuffer.append(" to ");
                for (int i10 = 0; i10 < this.exportedToCount; i10++) {
                    stringBuffer.append(this.exportedTo[i10]);
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(C15883c.f126249O);
                }
            }
            stringBuffer.append(';');
            stringBuffer.append('\n');
        }
    }

    public class ServiceInfo implements IModule.IService {
        char[] serviceName;
        char[][] with;

        public ServiceInfo() {
        }

        @Override
        public char[] name() {
            return this.serviceName;
        }

        @Override
        public char[][] with() {
            return this.with;
        }
    }

    public ModuleInfo(byte[] bArr, int[] iArr, int i10) {
        super(bArr, iArr, i10);
    }

    public static ModuleInfo createModule(byte[] bArr, int[] iArr, int i10) {
        ModuleInfo moduleInfo = new ModuleInfo(bArr, iArr, 0);
        moduleInfo.readModuleAttribute(i10 + 6);
        return moduleInfo;
    }

    private void readModuleAttribute(int i10) {
        int i11 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i10)] + 1)];
        char[] utf8At = utf8At(i11 + 3, u2At(i11 + 1));
        this.name = utf8At;
        CharOperation.replace(utf8At, '/', '.');
        this.flags = u2At(i10 + 2);
        int u2At = u2At(i10 + 4);
        if (u2At > 0) {
            int i12 = this.constantPoolOffsets[u2At];
            this.version = utf8At(i12 + 3, u2At(i12 + 1));
        }
        int u2At2 = u2At(i10 + 6);
        this.requiresCount = u2At2;
        this.requires = new ModuleReferenceInfo[u2At2];
        int i13 = i10 + 8;
        for (int i14 = 0; i14 < u2At2; i14++) {
            int i15 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i13)] + 1)];
            char[] utf8At2 = utf8At(i15 + 3, u2At(i15 + 1));
            this.requires[i14] = new ModuleReferenceInfo();
            CharOperation.replace(utf8At2, '/', '.');
            this.requires[i14].refName = utf8At2;
            int u2At3 = u2At(i13 + 2);
            ModuleReferenceInfo moduleReferenceInfo = this.requires[i14];
            moduleReferenceInfo.modifiers = u2At3;
            moduleReferenceInfo.isTransitive = (u2At3 & 32) != 0;
            int u2At4 = u2At(i13 + 4);
            if (u2At4 > 0) {
                int i16 = this.constantPoolOffsets[u2At4];
                this.requires[i14].required_version = utf8At(i16 + 3, u2At(i16 + 1));
            }
            i13 += 6;
        }
        int u2At5 = u2At(i13);
        int i17 = i13 + 2;
        this.exportsCount = u2At5;
        this.exports = new PackageExportInfo[u2At5];
        for (int i18 = 0; i18 < u2At5; i18++) {
            int i19 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i17)] + 1)];
            char[] utf8At3 = utf8At(i19 + 3, u2At(i19 + 1));
            CharOperation.replace(utf8At3, '/', '.');
            PackageExportInfo packageExportInfo = new PackageExportInfo();
            this.exports[i18] = packageExportInfo;
            packageExportInfo.packageName = utf8At3;
            packageExportInfo.modifiers = u2At(i17 + 2);
            int u2At6 = u2At(i17 + 4);
            i17 += 6;
            if (u2At6 > 0) {
                packageExportInfo.exportedTo = new char[u2At6];
                packageExportInfo.exportedToCount = u2At6;
                for (int i20 = 0; i20 < u2At6; i20++) {
                    int i21 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i17)] + 1)];
                    char[] utf8At4 = utf8At(i21 + 3, u2At(i21 + 1));
                    CharOperation.replace(utf8At4, '/', '.');
                    packageExportInfo.exportedTo[i20] = utf8At4;
                    i17 += 2;
                }
            }
        }
        int u2At7 = u2At(i17);
        int i22 = i17 + 2;
        this.opensCount = u2At7;
        this.opens = new PackageExportInfo[u2At7];
        for (int i23 = 0; i23 < u2At7; i23++) {
            int i24 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i22)] + 1)];
            char[] utf8At5 = utf8At(i24 + 3, u2At(i24 + 1));
            CharOperation.replace(utf8At5, '/', '.');
            PackageExportInfo packageExportInfo2 = new PackageExportInfo();
            this.opens[i23] = packageExportInfo2;
            packageExportInfo2.packageName = utf8At5;
            packageExportInfo2.modifiers = u2At(i22 + 2);
            int u2At8 = u2At(i22 + 4);
            i22 += 6;
            if (u2At8 > 0) {
                packageExportInfo2.exportedTo = new char[u2At8];
                packageExportInfo2.exportedToCount = u2At8;
                for (int i25 = 0; i25 < u2At8; i25++) {
                    int i26 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i22)] + 1)];
                    char[] utf8At6 = utf8At(i26 + 3, u2At(i26 + 1));
                    CharOperation.replace(utf8At6, '/', '.');
                    packageExportInfo2.exportedTo[i25] = utf8At6;
                    i22 += 2;
                }
            }
        }
        int u2At9 = u2At(i22);
        int i27 = i22 + 2;
        this.usesCount = u2At9;
        this.uses = new char[u2At9];
        for (int i28 = 0; i28 < u2At9; i28++) {
            int i29 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i27)] + 1)];
            char[] utf8At7 = utf8At(i29 + 3, u2At(i29 + 1));
            CharOperation.replace(utf8At7, '/', '.');
            this.uses[i28] = utf8At7;
            i27 += 2;
        }
        int u2At10 = u2At(i27);
        int i30 = i27 + 2;
        this.providesCount = u2At10;
        this.provides = new ServiceInfo[u2At10];
        for (int i31 = 0; i31 < u2At10; i31++) {
            int i32 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i30)] + 1)];
            char[] utf8At8 = utf8At(i32 + 3, u2At(i32 + 1));
            CharOperation.replace(utf8At8, '/', '.');
            ServiceInfo serviceInfo = new ServiceInfo();
            this.provides[i31] = serviceInfo;
            serviceInfo.serviceName = utf8At8;
            int u2At11 = u2At(i30 + 2);
            i30 += 4;
            serviceInfo.with = new char[u2At11];
            if (u2At11 > 0) {
                serviceInfo.with = new char[u2At11];
                for (int i33 = 0; i33 < u2At11; i33++) {
                    int i34 = this.constantPoolOffsets[u2At(this.constantPoolOffsets[u2At(i30)] + 1)];
                    char[] utf8At9 = utf8At(i34 + 3, u2At(i34 + 1));
                    CharOperation.replace(utf8At9, '/', '.');
                    serviceInfo.with[i33] = utf8At9;
                    i30 += 2;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IModule)) {
            return false;
        }
        IModule iModule = (IModule) obj;
        if (CharOperation.equals(this.name, iModule.name())) {
            return Arrays.equals(this.requires, iModule.requires());
        }
        return false;
    }

    @Override
    public IModule.IPackageExport[] exports() {
        return this.exports;
    }

    public int exportsCount() {
        return this.exportsCount;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public long getTagBits() {
        return this.tagBits;
    }

    public int hashCode() {
        return ((527 + CharOperation.hashCode(this.name)) * 31) + Arrays.hashCode(this.requires);
    }

    @Override
    public boolean isOpen() {
        return (this.flags & 32) != 0;
    }

    @Override
    public char[] name() {
        return this.name;
    }

    @Override
    public IModule.IPackageExport[] opens() {
        return this.opens;
    }

    @Override
    public IModule.IService[] provides() {
        return this.provides;
    }

    public int providesCount() {
        return this.providesCount;
    }

    @Override
    public IModule.IModuleReference[] requires() {
        return this.requires;
    }

    public int requiresCount() {
        return this.requiresCount;
    }

    public void setAnnotations(AnnotationInfo[] annotationInfoArr, long j10, boolean z10) {
        this.annotations = annotationInfoArr;
        this.tagBits = j10;
        if (z10) {
            for (AnnotationInfo annotationInfo : annotationInfoArr) {
                annotationInfo.initialize();
            }
        }
    }

    public void setName(char[] cArr) {
        this.name = cArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringContent(StringBuffer stringBuffer) {
        stringBuffer.append("\nmodule ");
        stringBuffer.append(this.name);
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append('\n');
        if (this.requiresCount > 0) {
            for (int i10 = 0; i10 < this.requiresCount; i10++) {
                stringBuffer.append("\trequires ");
                if (this.requires[i10].isTransitive) {
                    stringBuffer.append(" public ");
                }
                stringBuffer.append(this.requires[i10].refName);
                stringBuffer.append(';');
                stringBuffer.append('\n');
            }
        }
        if (this.exportsCount > 0) {
            stringBuffer.append('\n');
            for (int i11 = 0; i11 < this.exportsCount; i11++) {
                stringBuffer.append("\texports ");
                stringBuffer.append(this.exports[i11].toString());
            }
        }
        stringBuffer.append('\n');
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }

    @Override
    public char[][] uses() {
        return this.uses;
    }

    public int usesCount() {
        return this.usesCount;
    }
}
