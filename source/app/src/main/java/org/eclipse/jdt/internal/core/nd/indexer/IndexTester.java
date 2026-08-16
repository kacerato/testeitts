package org.eclipse.jdt.internal.core.nd.indexer;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.DoubleConstant;
import org.eclipse.jdt.internal.compiler.impl.FloatConstant;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public class IndexTester {

    public static final class TypeAnnotationWrapper {
        private IBinaryTypeAnnotation annotation;

        public TypeAnnotationWrapper(IBinaryTypeAnnotation iBinaryTypeAnnotation) {
            this.annotation = iBinaryTypeAnnotation;
        }

        public boolean equals(Object obj) {
            if (obj.getClass() != TypeAnnotationWrapper.class) {
                return false;
            }
            IBinaryTypeAnnotation iBinaryTypeAnnotation = ((TypeAnnotationWrapper) obj).annotation;
            if (Arrays.equals(this.annotation.getTypePath(), iBinaryTypeAnnotation.getTypePath()) && this.annotation.getTargetType() == iBinaryTypeAnnotation.getTargetType() && this.annotation.getBoundIndex() == iBinaryTypeAnnotation.getBoundIndex() && this.annotation.getMethodFormalParameterIndex() == iBinaryTypeAnnotation.getMethodFormalParameterIndex() && this.annotation.getSupertypeIndex() == iBinaryTypeAnnotation.getSupertypeIndex() && this.annotation.getThrowsTypeIndex() == iBinaryTypeAnnotation.getThrowsTypeIndex() && this.annotation.getTypeParameterIndex() == iBinaryTypeAnnotation.getTypeParameterIndex()) {
                return IndexTester.isEqual(this.annotation.getAnnotation(), iBinaryTypeAnnotation.getAnnotation());
            }
            return false;
        }

        public int hashCode() {
            return (((Arrays.hashCode(this.annotation.getTypePath()) * 31) + this.annotation.getTargetType()) * 31) + this.annotation.getTypeParameterIndex();
        }

        public String toString() {
            return this.annotation.toString();
        }
    }

    private static <T> void assertEquals(String str, T t10, T t11) {
        if (isEqual(t10, t11)) {
            return;
        }
        throw new IllegalStateException(String.valueOf(str) + ": expected = " + getString(t10) + ", actual = " + getString(t11));
    }

    private static void compareAnnotations(String str, IBinaryAnnotation[] iBinaryAnnotationArr, IBinaryAnnotation[] iBinaryAnnotationArr2) {
        if (iBinaryAnnotationArr == null || iBinaryAnnotationArr.length == 0) {
            if (iBinaryAnnotationArr2 == null || iBinaryAnnotationArr2.length == 0) {
                return;
            }
            throw new IllegalStateException(String.valueOf(str) + ": Expected null for the binary annotations");
        }
        if (iBinaryAnnotationArr2 == null) {
            throw new IllegalStateException(String.valueOf(str) + ": Actual null for the binary annotations");
        }
        if (iBinaryAnnotationArr.length != iBinaryAnnotationArr2.length) {
            throw new IllegalStateException(String.valueOf(str) + ": The expected and actual number of annotations differed. Expected: " + iBinaryAnnotationArr.length + ", actual: " + iBinaryAnnotationArr2.length);
        }
        for (int i10 = 0; i10 < iBinaryAnnotationArr.length; i10++) {
            if (!isEqual(iBinaryAnnotationArr[i10], iBinaryAnnotationArr2[i10])) {
                throw new IllegalStateException(String.valueOf(str) + ": An annotation had an unexpected value");
            }
        }
    }

    private static void compareFields(String str, IBinaryField iBinaryField, IBinaryField iBinaryField2) {
        String str2 = String.valueOf(str) + "." + safeString(iBinaryField.getName());
        compareAnnotations(str2, iBinaryField.getAnnotations(), iBinaryField2.getAnnotations());
        assertEquals(String.valueOf(str2) + ": Constants not equal", iBinaryField.getConstant(), iBinaryField2.getConstant());
        compareGenericSignatures(String.valueOf(str2) + ": The generic signature did not match", iBinaryField.getGenericSignature(), iBinaryField2.getGenericSignature());
        assertEquals(String.valueOf(str2) + ": The modifiers did not match", Integer.valueOf(iBinaryField.getModifiers()), Integer.valueOf(iBinaryField2.getModifiers()));
        assertEquals(String.valueOf(str2) + ": The tag bits did not match", Long.valueOf(iBinaryField.getTagBits()), Long.valueOf(iBinaryField2.getTagBits()));
        assertEquals(String.valueOf(str2) + ": The names did not match", iBinaryField.getName(), iBinaryField2.getName());
        compareTypeAnnotations(str2, iBinaryField.getTypeAnnotations(), iBinaryField2.getTypeAnnotations());
        assertEquals(String.valueOf(str2) + ": The type names did not match", iBinaryField.getTypeName(), iBinaryField2.getTypeName());
    }

    private static void compareGenericSignatures(String str, char[] cArr, char[] cArr2) {
        assertEquals(str, cArr, cArr2);
    }

    private static void compareMethods(String str, IBinaryMethod iBinaryMethod, IBinaryMethod iBinaryMethod2) {
        String str2 = String.valueOf(str) + "." + safeString(iBinaryMethod.getSelector());
        compareAnnotations(str2, iBinaryMethod.getAnnotations(), iBinaryMethod2.getAnnotations());
        assertEquals(String.valueOf(str2) + ": The argument names didn't match.", iBinaryMethod.getArgumentNames(), iBinaryMethod2.getArgumentNames());
        assertEquals(String.valueOf(str2) + ": The default values didn't match.", iBinaryMethod.getDefaultValue(), iBinaryMethod2.getDefaultValue());
        assertEquals(String.valueOf(str2) + ": The exception type names did not match.", iBinaryMethod.getExceptionTypeNames(), iBinaryMethod2.getExceptionTypeNames());
        compareGenericSignatures(String.valueOf(str2) + ": The method's generic signature did not match", iBinaryMethod.getGenericSignature(), iBinaryMethod2.getGenericSignature());
        assertEquals(String.valueOf(str2) + ": The method descriptors did not match.", iBinaryMethod.getMethodDescriptor(), iBinaryMethod2.getMethodDescriptor());
        assertEquals(String.valueOf(str2) + ": The modifiers didn't match.", Integer.valueOf(iBinaryMethod.getModifiers()), Integer.valueOf(iBinaryMethod2.getModifiers()));
        char[] charArray = "".toCharArray();
        int min = Math.min(iBinaryMethod.getAnnotatedParametersCount(), iBinaryMethod2.getAnnotatedParametersCount());
        for (int i10 = 0; i10 < min; i10++) {
            compareAnnotations(str2, iBinaryMethod.getParameterAnnotations(i10, charArray), iBinaryMethod2.getParameterAnnotations(i10, charArray));
        }
        for (int i11 = min; i11 < iBinaryMethod.getAnnotatedParametersCount(); i11++) {
            compareAnnotations(str2, new IBinaryAnnotation[0], iBinaryMethod.getParameterAnnotations(i11, charArray));
        }
        while (min < iBinaryMethod2.getAnnotatedParametersCount()) {
            compareAnnotations(str2, new IBinaryAnnotation[0], iBinaryMethod2.getParameterAnnotations(min, charArray));
            min++;
        }
        assertEquals(String.valueOf(str2) + ": The selectors did not match", iBinaryMethod.getSelector(), iBinaryMethod2.getSelector());
        assertEquals(String.valueOf(str2) + ": The tag bits did not match", Long.valueOf(iBinaryMethod.getTagBits()), Long.valueOf(iBinaryMethod2.getTagBits()));
        compareTypeAnnotations(str2, iBinaryMethod.getTypeAnnotations(), iBinaryMethod2.getTypeAnnotations());
    }

    private static void compareTypeAnnotations(String str, IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr2) {
        if (iBinaryTypeAnnotationArr == null) {
            if (iBinaryTypeAnnotationArr2 == null) {
                return;
            }
            throw new IllegalStateException(String.valueOf(str) + ": Expected null for the annotation list but found: " + iBinaryTypeAnnotationArr2.toString());
        }
        assertEquals(String.valueOf(str) + ": The expected and actual number of type annotations did not match", Integer.valueOf(iBinaryTypeAnnotationArr.length), Integer.valueOf(iBinaryTypeAnnotationArr2.length));
        for (int i10 = 0; i10 < iBinaryTypeAnnotationArr.length; i10++) {
            assertEquals(String.valueOf(str) + ": Type annotation number " + i10 + " did not match", iBinaryTypeAnnotationArr[i10], iBinaryTypeAnnotationArr2[i10]);
        }
    }

    private static String getString(Object obj) {
        return obj instanceof char[] ? new String((char[]) obj) : obj.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> boolean isEqual(T t10, T t11) {
        if (t10 == t11) {
            return true;
        }
        if (t10 == 0 || t11 == 0) {
            return false;
        }
        if (t10 instanceof ClassSignature) {
            if (t11 instanceof ClassSignature) {
                return Arrays.equals(((ClassSignature) t10).getTypeName(), ((ClassSignature) t11).getTypeName());
            }
            return false;
        }
        if (t10 instanceof IBinaryAnnotation) {
            IBinaryElementValuePair[] elementValuePairs = ((IBinaryAnnotation) t10).getElementValuePairs();
            IBinaryElementValuePair[] elementValuePairs2 = ((IBinaryAnnotation) t11).getElementValuePairs();
            if (elementValuePairs.length != elementValuePairs2.length) {
                return false;
            }
            for (int i10 = 0; i10 < elementValuePairs.length; i10++) {
                IBinaryElementValuePair iBinaryElementValuePair = elementValuePairs[i10];
                IBinaryElementValuePair iBinaryElementValuePair2 = elementValuePairs2[i10];
                if (!Arrays.equals(iBinaryElementValuePair.getName(), iBinaryElementValuePair2.getName()) || !isEqual(iBinaryElementValuePair.getValue(), iBinaryElementValuePair2.getValue())) {
                    return false;
                }
            }
            return true;
        }
        if (t10 instanceof IBinaryTypeAnnotation) {
            return new TypeAnnotationWrapper((IBinaryTypeAnnotation) t10).equals(new TypeAnnotationWrapper((IBinaryTypeAnnotation) t11));
        }
        if (t10 instanceof Constant) {
            if (!(t11 instanceof Constant)) {
                return false;
            }
            if ((t10 instanceof DoubleConstant) && (t11 instanceof DoubleConstant)) {
                DoubleConstant doubleConstant = (DoubleConstant) t11;
                if (Double.isNaN(((DoubleConstant) t10).doubleValue()) && Double.isNaN(doubleConstant.doubleValue())) {
                    return true;
                }
            }
            if ((t10 instanceof FloatConstant) && (t11 instanceof FloatConstant)) {
                FloatConstant floatConstant = (FloatConstant) t11;
                if (Float.isNaN(((FloatConstant) t10).floatValue()) && Float.isNaN(floatConstant.floatValue())) {
                    return true;
                }
            }
            return ((Constant) t10).hasSameValue((Constant) t11);
        }
        if (t10 instanceof EnumConstantSignature) {
            if (!(t11 instanceof EnumConstantSignature)) {
                return false;
            }
            EnumConstantSignature enumConstantSignature = (EnumConstantSignature) t10;
            EnumConstantSignature enumConstantSignature2 = (EnumConstantSignature) t11;
            return Arrays.equals(enumConstantSignature.getEnumConstantName(), enumConstantSignature2.getEnumConstantName()) && Arrays.equals(enumConstantSignature.getTypeName(), enumConstantSignature2.getTypeName());
        }
        if (t10 instanceof char[]) {
            return CharArrayUtils.equals((char[]) t10, (char[]) t11);
        }
        if (t10 instanceof char[][]) {
            return CharArrayUtils.equals((char[][]) t10, (char[][]) t11);
        }
        if (t10 instanceof char[][][]) {
            char[][][] cArr = (char[][][]) t10;
            char[][][] cArr2 = (char[][][]) t11;
            if (cArr.length != cArr2.length) {
                return false;
            }
            for (int i11 = 0; i11 < cArr.length; i11++) {
                if (!isEqual(cArr[i11], cArr2[i11])) {
                    return false;
                }
            }
            return true;
        }
        if (!(t10 instanceof Object[])) {
            return t10.equals(t11);
        }
        Object[] objArr = (Object[]) t10;
        Object[] objArr2 = (Object[]) t11;
        if (objArr.length != objArr2.length) {
            return false;
        }
        for (int i12 = 0; i12 < objArr.length; i12++) {
            if (!isEqual(objArr[i12], objArr2[i12])) {
                return false;
            }
        }
        return true;
    }

    private static String safeString(char[] cArr) {
        return cArr == null ? "<unnamed>" : new String(cArr);
    }

    public static void testType(IBinaryType iBinaryType, IBinaryType iBinaryType2) {
        String safeString = safeString(iBinaryType2.getName());
        compareTypeAnnotations(safeString, iBinaryType.getTypeAnnotations(), iBinaryType2.getTypeAnnotations());
        compareAnnotations(safeString, iBinaryType.getAnnotations(), iBinaryType2.getAnnotations());
        compareGenericSignatures(String.valueOf(safeString) + ": The generic signature did not match", iBinaryType.getGenericSignature(), iBinaryType2.getGenericSignature());
        assertEquals(String.valueOf(safeString) + ": The enclosing method name did not match", iBinaryType.getEnclosingMethod(), iBinaryType2.getEnclosingMethod());
        assertEquals(String.valueOf(safeString) + ": The enclosing method name did not match", iBinaryType.getEnclosingTypeName(), iBinaryType2.getEnclosingTypeName());
        IBinaryField[] fields = iBinaryType.getFields();
        IBinaryField[] fields2 = iBinaryType2.getFields();
        if (fields != fields2) {
            if (fields == null && fields2 != null) {
                throw new IllegalStateException(String.valueOf(safeString) + "Expected fields was null -- actual fields were not");
            }
            if (fields.length != fields2.length) {
                throw new IllegalStateException(String.valueOf(safeString) + "The expected and actual number of fields did not match");
            }
            for (int i10 = 0; i10 < fields2.length; i10++) {
                compareFields(safeString, fields[i10], fields2[i10]);
            }
        }
        assertEquals("The file name did not match", iBinaryType.getFileName(), iBinaryType2.getFileName());
        assertEquals("The interface names did not match", iBinaryType.getInterfaceNames(), iBinaryType2.getInterfaceNames());
        IBinaryMethod[] methods = iBinaryType.getMethods();
        IBinaryMethod[] methods2 = iBinaryType2.getMethods();
        if (methods != methods2) {
            if (methods == null || methods2 == null) {
                throw new IllegalStateException("One of the method arrays was null");
            }
            if (methods.length != methods2.length) {
                throw new IllegalStateException("The number of methods didn't match");
            }
            for (int i11 = 0; i11 < methods2.length; i11++) {
                compareMethods(safeString, methods[i11], methods2[i11]);
            }
        }
        assertEquals("The missing type names did not match", iBinaryType.getMissingTypeNames(), iBinaryType2.getMissingTypeNames());
        assertEquals("The modifiers don't match", Integer.valueOf(iBinaryType.getModifiers()), Integer.valueOf(iBinaryType2.getModifiers()));
        assertEquals("The names don't match.", iBinaryType.getName(), iBinaryType2.getName());
        assertEquals("The source name doesn't match", iBinaryType.getSourceName(), iBinaryType2.getSourceName());
        assertEquals("The superclass name doesn't match", iBinaryType.getSuperclassName(), iBinaryType2.getSuperclassName());
        assertEquals("The tag bits don't match.", Long.valueOf(iBinaryType.getTagBits()), Long.valueOf(iBinaryType2.getTagBits()));
        compareTypeAnnotations(safeString, iBinaryType.getTypeAnnotations(), iBinaryType2.getTypeAnnotations());
    }
}
