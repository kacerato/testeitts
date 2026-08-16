package org.eclipse.jdt.internal.compiler.classfmt;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class ExternalAnnotationDecorator implements IBinaryType {
    private ExternalAnnotationProvider annotationProvider;
    private IBinaryType inputType;
    private boolean isFromSource;

    public interface ZipFileProducer {
        ZipFile produce() throws IOException;
    }

    public ExternalAnnotationDecorator(IBinaryType iBinaryType, ExternalAnnotationProvider externalAnnotationProvider) {
        if (iBinaryType != null) {
            this.inputType = iBinaryType;
            this.annotationProvider = externalAnnotationProvider;
            return;
        }
        throw new NullPointerException("toDecorate");
    }

    public static IBinaryType create(IBinaryType iBinaryType, String str, String str2, ZipFile zipFile) throws IOException {
        ExternalAnnotationProvider externalAnnotationProvider = externalAnnotationProvider(str, str2, zipFile);
        return externalAnnotationProvider == null ? iBinaryType : new ExternalAnnotationDecorator(iBinaryType, externalAnnotationProvider);
    }

    public static ExternalAnnotationProvider externalAnnotationProvider(String str, String str2, ZipFile zipFile) throws IOException {
        String str3 = String.valueOf(str2) + ExternalAnnotationProvider.ANNOTATION_FILE_SUFFIX;
        if (zipFile == null) {
            File file = new File(str);
            if (file.isDirectory()) {
                try {
                    return new ExternalAnnotationProvider(new FileInputStream(String.valueOf(file.getAbsolutePath()) + '/' + str3), str2);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        } else {
            ZipEntry entry = zipFile.getEntry(str3);
            if (entry != null) {
                return new ExternalAnnotationProvider(zipFile.getInputStream(entry), str2);
            }
        }
        return null;
    }

    public static ZipFile getAnnotationZipFile(String str, ZipFileProducer zipFileProducer) throws IOException {
        File file = new File(str);
        if (file.isFile()) {
            return zipFileProducer != null ? zipFileProducer.produce() : new ZipFile(file);
        }
        return null;
    }

    @Override
    public ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment) {
        ExternalAnnotationProvider externalAnnotationProvider;
        if (iTypeAnnotationWalker != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER || (externalAnnotationProvider = this.annotationProvider) == null) {
            return iTypeAnnotationWalker;
        }
        if (obj == null) {
            return externalAnnotationProvider.forTypeHeader(lookupEnvironment);
        }
        if (obj instanceof IBinaryField) {
            IBinaryField iBinaryField = (IBinaryField) obj;
            char[] genericSignature = iBinaryField.getGenericSignature();
            if (genericSignature == null) {
                genericSignature = iBinaryField.getTypeName();
            }
            return this.annotationProvider.forField(iBinaryField.getName(), genericSignature, lookupEnvironment);
        }
        if (!(obj instanceof IBinaryMethod)) {
            return iTypeAnnotationWalker;
        }
        IBinaryMethod iBinaryMethod = (IBinaryMethod) obj;
        char[] genericSignature2 = iBinaryMethod.getGenericSignature();
        if (genericSignature2 == null) {
            genericSignature2 = iBinaryMethod.getMethodDescriptor();
        }
        return this.annotationProvider.forMethod(iBinaryMethod.isConstructor() ? TypeConstants.INIT : iBinaryMethod.getSelector(), genericSignature2, lookupEnvironment);
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.inputType.getAnnotations();
    }

    @Override
    public char[] getEnclosingMethod() {
        return this.inputType.getEnclosingMethod();
    }

    @Override
    public char[] getEnclosingTypeName() {
        return this.inputType.getEnclosingTypeName();
    }

    @Override
    public BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus() {
        return this.annotationProvider == null ? this.isFromSource ? BinaryTypeBinding.ExternalAnnotationStatus.FROM_SOURCE : BinaryTypeBinding.ExternalAnnotationStatus.NO_EEA_FILE : BinaryTypeBinding.ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
    }

    @Override
    public IBinaryField[] getFields() {
        return this.inputType.getFields();
    }

    @Override
    public char[] getFileName() {
        return this.inputType.getFileName();
    }

    @Override
    public char[] getGenericSignature() {
        return this.inputType.getGenericSignature();
    }

    @Override
    public char[][] getInterfaceNames() {
        return this.inputType.getInterfaceNames();
    }

    @Override
    public IBinaryNestedType[] getMemberTypes() {
        return this.inputType.getMemberTypes();
    }

    @Override
    public IBinaryMethod[] getMethods() {
        return this.inputType.getMethods();
    }

    @Override
    public char[][][] getMissingTypeNames() {
        return this.inputType.getMissingTypeNames();
    }

    @Override
    public int getModifiers() {
        return this.inputType.getModifiers();
    }

    @Override
    public char[] getModule() {
        return this.inputType.getModule();
    }

    @Override
    public char[] getName() {
        return this.inputType.getName();
    }

    @Override
    public char[] getSourceName() {
        return this.inputType.getSourceName();
    }

    @Override
    public char[] getSuperclassName() {
        return this.inputType.getSuperclassName();
    }

    @Override
    public long getTagBits() {
        return this.inputType.getTagBits();
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return this.inputType.getTypeAnnotations();
    }

    @Override
    public boolean isAnonymous() {
        return this.inputType.isAnonymous();
    }

    @Override
    public boolean isBinaryType() {
        return this.inputType.isBinaryType();
    }

    @Override
    public boolean isLocal() {
        return this.inputType.isLocal();
    }

    @Override
    public boolean isMember() {
        return this.inputType.isMember();
    }

    @Override
    public char[] sourceFileName() {
        return this.inputType.sourceFileName();
    }

    public ExternalAnnotationDecorator(IBinaryType iBinaryType, boolean z10) {
        if (iBinaryType != null) {
            this.isFromSource = z10;
            this.inputType = iBinaryType;
            return;
        }
        throw new NullPointerException("toDecorate");
    }
}
