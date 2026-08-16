package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;

public interface IBinaryType extends IGenericType {
    public static final char[][] NoInterface = CharOperation.NO_CHAR_CHAR;
    public static final IBinaryNestedType[] NoNestedType = new IBinaryNestedType[0];
    public static final IBinaryField[] NoField = new IBinaryField[0];
    public static final IBinaryMethod[] NoMethod = new IBinaryMethod[0];

    ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment);

    IBinaryAnnotation[] getAnnotations();

    char[] getEnclosingMethod();

    char[] getEnclosingTypeName();

    BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus();

    IBinaryField[] getFields();

    char[] getGenericSignature();

    char[][] getInterfaceNames();

    IBinaryNestedType[] getMemberTypes();

    IBinaryMethod[] getMethods();

    char[][][] getMissingTypeNames();

    char[] getModule();

    char[] getName();

    char[] getSourceName();

    char[] getSuperclassName();

    long getTagBits();

    IBinaryTypeAnnotation[] getTypeAnnotations();

    boolean isAnonymous();

    boolean isLocal();

    boolean isMember();

    char[] sourceFileName();
}
