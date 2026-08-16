package org.eclipse.jdt.internal.compiler;

import java.util.HashMap;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public interface ISourceElementRequestor {

    public static class FieldInfo {
        public Annotation[] annotations;
        public char[][] categories;
        public int declarationStart;
        public int modifiers;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
        public FieldDeclaration node;
        public char[] type;
        public boolean typeAnnotated;
    }

    public static class MethodInfo {
        public Annotation[] annotations;
        public char[][] categories;
        public int declarationStart;
        public char[] declaringPackageName;
        public int declaringTypeModifiers;
        public TypeDeclaration enclosingType;
        public char[][] exceptionTypes;
        public int extraFlags;
        public boolean isAnnotation;
        public boolean isConstructor;
        public int modifiers;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
        public AbstractMethodDeclaration node;
        public ParameterInfo[] parameterInfos;
        public char[][] parameterNames;
        public char[][] parameterTypes;
        public char[] returnType;
        public boolean typeAnnotated;
        public TypeParameterInfo[] typeParameters;
    }

    public static class ModuleInfo {
        public Annotation[] annotations;
        public char[][] categories;
        public int declarationStart;
        public PackageExportInfo[] exports;
        public int modifiers;
        public char[] moduleName;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
        public ModuleDeclaration node;
        public PackageExportInfo[] opens;
        public RequiresInfo[] requires;
        public ServicesInfo[] services;
        public char[][] usedServices;
    }

    public static class PackageExportInfo {
        public char[] pkgName;
        public char[][] targets;
    }

    public static class ParameterInfo {
        public int declarationEnd;
        public int declarationStart;
        public int modifiers;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
    }

    public static class RequiresInfo {
        public int modifiers;
        public char[] moduleName;
    }

    public static class ServicesInfo {
        public char[][] implNames;
        public char[] serviceName;
    }

    public static class TypeInfo {
        public Annotation[] annotations;
        public boolean anonymousMember;
        public char[][] categories;
        public HashMap childrenCategories = new HashMap();
        public int declarationStart;
        public int extraFlags;
        public int modifiers;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
        public TypeDeclaration node;
        public boolean secondary;
        public char[] superclass;
        public char[][] superinterfaces;
        public boolean typeAnnotated;
        public TypeParameterInfo[] typeParameters;
    }

    public static class TypeParameterInfo {
        public char[][] bounds;
        public int declarationEnd;
        public int declarationStart;
        public char[] name;
        public int nameSourceEnd;
        public int nameSourceStart;
        public boolean typeAnnotated;
    }

    void acceptAnnotationTypeReference(char[] cArr, int i10);

    void acceptAnnotationTypeReference(char[][] cArr, int i10, int i11);

    void acceptConstructorReference(char[] cArr, int i10, int i11);

    void acceptFieldReference(char[] cArr, int i10);

    void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14);

    void acceptLineSeparatorPositions(int[] iArr);

    void acceptMethodReference(char[] cArr, int i10, int i11);

    void acceptPackage(ImportReference importReference);

    void acceptProblem(CategorizedProblem categorizedProblem);

    void acceptTypeReference(char[] cArr, int i10);

    void acceptTypeReference(char[][] cArr, int i10, int i11);

    void acceptUnknownReference(char[] cArr, int i10);

    void acceptUnknownReference(char[][] cArr, int i10, int i11);

    void enterCompilationUnit();

    void enterConstructor(MethodInfo methodInfo);

    void enterField(FieldInfo fieldInfo);

    void enterInitializer(int i10, int i11);

    void enterMethod(MethodInfo methodInfo);

    default void enterModule(ModuleInfo moduleInfo) {
    }

    void enterType(TypeInfo typeInfo);

    void exitCompilationUnit(int i10);

    void exitConstructor(int i10);

    void exitField(int i10, int i11, int i12);

    void exitInitializer(int i10);

    void exitMethod(int i10, Expression expression);

    default void exitModule(int i10) {
    }

    void exitType(int i10);
}
