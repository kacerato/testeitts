package org.eclipse.jdt.internal.eval;

import java.lang.constant.ConstantDescs;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.core.util.Util;

public class CodeSnippetSkeleton implements IBinaryType, EvaluationConstants {
    IBinaryMethod[] methods = {new BinaryMethodSkeleton(ConstantDescs.INIT_NAME.toCharArray(), "()V".toCharArray(), new char[0], true), new BinaryMethodSkeleton("run".toCharArray(), "()V".toCharArray(), new char[][]{"java/lang/Throwable".toCharArray()}, false), new BinaryMethodSkeleton("setResult".toCharArray(), "(Ljava/lang/Object;Ljava/lang/Class;)V".toCharArray(), new char[0], false)};

    public static class BinaryMethodSkeleton implements IBinaryMethod {
        char[][] exceptionTypeNames;
        boolean isConstructor;
        char[] methodDescriptor;
        char[] selector;

        public BinaryMethodSkeleton(char[] cArr, char[] cArr2, char[][] cArr3, boolean z10) {
            this.selector = cArr;
            this.methodDescriptor = cArr2;
            this.exceptionTypeNames = cArr3;
            this.isConstructor = z10;
        }

        @Override
        public int getAnnotatedParametersCount() {
            return 0;
        }

        @Override
        public IBinaryAnnotation[] getAnnotations() {
            return null;
        }

        @Override
        public char[][] getArgumentNames() {
            return null;
        }

        @Override
        public Object getDefaultValue() {
            return null;
        }

        @Override
        public char[][] getExceptionTypeNames() {
            return this.exceptionTypeNames;
        }

        @Override
        public char[] getGenericSignature() {
            return null;
        }

        @Override
        public char[] getMethodDescriptor() {
            return this.methodDescriptor;
        }

        @Override
        public int getModifiers() {
            return 1;
        }

        @Override
        public IBinaryAnnotation[] getParameterAnnotations(int i10, char[] cArr) {
            return null;
        }

        @Override
        public char[] getSelector() {
            return this.selector;
        }

        @Override
        public long getTagBits() {
            return 0L;
        }

        @Override
        public IBinaryTypeAnnotation[] getTypeAnnotations() {
            return null;
        }

        @Override
        public boolean isClinit() {
            return false;
        }

        @Override
        public boolean isConstructor() {
            return this.isConstructor;
        }
    }

    @Override
    public ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment) {
        return iTypeAnnotationWalker;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    @Override
    public char[] getEnclosingMethod() {
        return null;
    }

    @Override
    public char[] getEnclosingTypeName() {
        return null;
    }

    @Override
    public BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus() {
        return BinaryTypeBinding.ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
    }

    @Override
    public IBinaryField[] getFields() {
        return null;
    }

    @Override
    public char[] getFileName() {
        return CharOperation.concat(EvaluationConstants.CODE_SNIPPET_NAME, Util.defaultJavaExtension().toCharArray());
    }

    @Override
    public char[] getGenericSignature() {
        return null;
    }

    @Override
    public char[][] getInterfaceNames() {
        return null;
    }

    public String getJavadocContents() {
        return null;
    }

    @Override
    public IBinaryNestedType[] getMemberTypes() {
        return null;
    }

    @Override
    public IBinaryMethod[] getMethods() {
        return this.methods;
    }

    @Override
    public char[][][] getMissingTypeNames() {
        return null;
    }

    @Override
    public int getModifiers() {
        return 1;
    }

    @Override
    public char[] getModule() {
        return null;
    }

    @Override
    public char[] getName() {
        return EvaluationConstants.CODE_SNIPPET_NAME;
    }

    @Override
    public char[] getSourceName() {
        return EvaluationConstants.ROOT_CLASS_NAME;
    }

    @Override
    public char[] getSuperclassName() {
        return null;
    }

    @Override
    public long getTagBits() {
        return 0L;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return null;
    }

    public String getURLContents(String str, String str2) {
        return null;
    }

    @Override
    public boolean isAnonymous() {
        return false;
    }

    @Override
    public boolean isBinaryType() {
        return true;
    }

    @Override
    public boolean isLocal() {
        return false;
    }

    @Override
    public boolean isMember() {
        return false;
    }

    @Override
    public char[] sourceFileName() {
        return null;
    }

    public String getJavadocContents(IProgressMonitor iProgressMonitor, String str) throws JavaModelException {
        return null;
    }
}
