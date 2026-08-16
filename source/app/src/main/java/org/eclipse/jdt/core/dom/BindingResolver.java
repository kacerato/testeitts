package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;

public class BindingResolver {
    public ASTNode findDeclaringNode(String str) {
        return null;
    }

    public IAnnotationBinding getAnnotationInstance(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding) {
        return null;
    }

    public org.eclipse.jdt.internal.compiler.ast.ASTNode getCorrespondingNode(ASTNode aSTNode) {
        return null;
    }

    public IMemberValuePairBinding getMemberValuePairBinding(ElementValuePair elementValuePair) {
        return null;
    }

    public IMethodBinding getMethodBinding(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding) {
        return null;
    }

    public IModuleBinding getModuleBinding(org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding) {
        return null;
    }

    public IPackageBinding getPackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        return null;
    }

    public ITypeBinding getTypeBinding(RecoveredTypeBinding recoveredTypeBinding, int i10) {
        return null;
    }

    public IVariableBinding getVariableBinding(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding) {
        return null;
    }

    public WorkingCopyOwner getWorkingCopyOwner() {
        return null;
    }

    public boolean isResolvedTypeInferredFromExpectedType(ClassInstanceCreation classInstanceCreation) {
        return false;
    }

    public LookupEnvironment lookupEnvironment() {
        return null;
    }

    public void recordScope(ASTNode aSTNode, BlockScope blockScope) {
    }

    public IAnnotationBinding resolveAnnotation(Annotation annotation) {
        return null;
    }

    public ITypeBinding resolveArrayType(ITypeBinding iTypeBinding, int i10) {
        return null;
    }

    public boolean resolveBoxing(Expression expression) {
        return false;
    }

    public Object resolveConstantExpressionValue(Expression expression) {
        return null;
    }

    public IMethodBinding resolveConstructor(ClassInstanceCreation classInstanceCreation) {
        return null;
    }

    public ITypeBinding resolveExpressionType(Expression expression) {
        return null;
    }

    public IVariableBinding resolveField(FieldAccess fieldAccess) {
        return null;
    }

    public IBinding resolveImport(ImportDeclaration importDeclaration) {
        return null;
    }

    public IMethodBinding resolveMember(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        return null;
    }

    public IMemberValuePairBinding resolveMemberValuePair(MemberValuePair memberValuePair) {
        return null;
    }

    public IMethodBinding resolveMethod(LambdaExpression lambdaExpression) {
        return null;
    }

    public IModuleBinding resolveModule(ModuleDeclaration moduleDeclaration) {
        return null;
    }

    public IBinding resolveName(Name name) {
        return null;
    }

    public IPackageBinding resolvePackage(PackageDeclaration packageDeclaration) {
        return null;
    }

    public IBinding resolveReference(MemberRef memberRef) {
        return null;
    }

    public ITypeBinding resolveType(AnnotationTypeDeclaration annotationTypeDeclaration) {
        return null;
    }

    public ITypeBinding resolveTypeParameter(TypeParameter typeParameter) {
        return null;
    }

    public boolean resolveUnboxing(Expression expression) {
        return false;
    }

    public IVariableBinding resolveVariable(EnumConstantDeclaration enumConstantDeclaration) {
        return null;
    }

    public ITypeBinding resolveWellKnownType(String str) {
        return null;
    }

    public CompilationUnitScope scope() {
        return null;
    }

    public void store(ASTNode aSTNode, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode2) {
    }

    public void updateKey(ASTNode aSTNode, ASTNode aSTNode2) {
    }

    public ASTNode findDeclaringNode(IAnnotationBinding iAnnotationBinding) {
        return null;
    }

    public ITypeBinding getTypeBinding(Type type) {
        return null;
    }

    public boolean isResolvedTypeInferredFromExpectedType(MethodInvocation methodInvocation) {
        return false;
    }

    public IMethodBinding resolveConstructor(ConstructorInvocation constructorInvocation) {
        return null;
    }

    public IVariableBinding resolveField(SuperFieldAccess superFieldAccess) {
        return null;
    }

    public IMethodBinding resolveMethod(MethodDeclaration methodDeclaration) {
        return null;
    }

    public IBinding resolveReference(MethodRef methodRef) {
        return null;
    }

    public ITypeBinding resolveType(AnonymousClassDeclaration anonymousClassDeclaration) {
        return null;
    }

    public IVariableBinding resolveVariable(VariableDeclaration variableDeclaration) {
        return null;
    }

    public ASTNode findDeclaringNode(IBinding iBinding) {
        return null;
    }

    public ITypeBinding getTypeBinding(VariableDeclaration variableDeclaration) {
        return null;
    }

    public boolean isResolvedTypeInferredFromExpectedType(SuperMethodInvocation superMethodInvocation) {
        return false;
    }

    public IMethodBinding resolveConstructor(EnumConstantDeclaration enumConstantDeclaration) {
        return null;
    }

    public IMethodBinding resolveMethod(MethodInvocation methodInvocation) {
        return null;
    }

    public ITypeBinding resolveType(EnumDeclaration enumDeclaration) {
        return null;
    }

    public ITypeBinding getTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        return null;
    }

    public IMethodBinding resolveConstructor(SuperConstructorInvocation superConstructorInvocation) {
        return null;
    }

    public IMethodBinding resolveMethod(MethodReference methodReference) {
        return null;
    }

    public ITypeBinding resolveType(Type type) {
        return null;
    }

    public IMethodBinding resolveMethod(SuperMethodInvocation superMethodInvocation) {
        return null;
    }

    public ITypeBinding resolveType(TypeDeclaration typeDeclaration) {
        return null;
    }
}
