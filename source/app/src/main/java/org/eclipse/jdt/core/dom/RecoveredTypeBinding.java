package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class RecoveredTypeBinding implements ITypeBinding {
    private org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding;
    private Type currentType;
    private int dimensions;
    private RecoveredTypeBinding innerTypeBinding;
    private BindingResolver resolver;
    private ITypeBinding[] typeArguments;
    private VariableDeclaration variableDeclaration;

    public RecoveredTypeBinding(BindingResolver bindingResolver, VariableDeclaration variableDeclaration) {
        this.variableDeclaration = variableDeclaration;
        this.resolver = bindingResolver;
        this.currentType = getType();
        this.dimensions = variableDeclaration.getExtraDimensions();
        if (this.currentType.isArrayType()) {
            this.dimensions += ((ArrayType) this.currentType).getDimensions();
        }
    }

    private String getInternalName() {
        RecoveredTypeBinding recoveredTypeBinding = this.innerTypeBinding;
        if (recoveredTypeBinding != null) {
            return recoveredTypeBinding.getInternalName();
        }
        ReferenceBinding referenceBinding = getReferenceBinding();
        if (referenceBinding == null) {
            return getTypeNameFrom(getType());
        }
        return new String(referenceBinding.compoundName[r0.length - 1]);
    }

    private ReferenceBinding getReferenceBinding() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding == null) {
            RecoveredTypeBinding recoveredTypeBinding = this.innerTypeBinding;
            if (recoveredTypeBinding != null) {
                return recoveredTypeBinding.getReferenceBinding();
            }
            return null;
        }
        if (typeBinding.isArrayType()) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2 = ((ArrayBinding) this.binding).leafComponentType;
            if (typeBinding2 instanceof ReferenceBinding) {
                return (ReferenceBinding) typeBinding2;
            }
            return null;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding3 = this.binding;
        if (typeBinding3 instanceof ReferenceBinding) {
            return (ReferenceBinding) typeBinding3;
        }
        return null;
    }

    private Type getType() {
        Type type = this.currentType;
        if (type != null) {
            return type;
        }
        VariableDeclaration variableDeclaration = this.variableDeclaration;
        if (variableDeclaration == null) {
            return null;
        }
        if (variableDeclaration.getNodeType() == 44) {
            return ((SingleVariableDeclaration) this.variableDeclaration).getType();
        }
        ASTNode parent = this.variableDeclaration.getParent();
        int nodeType = parent.getNodeType();
        if (nodeType == 23) {
            return ((FieldDeclaration) parent).getType();
        }
        if (nodeType == 58) {
            return ((VariableDeclarationExpression) parent).getType();
        }
        if (nodeType != 60) {
            return null;
        }
        return ((VariableDeclarationStatement) parent).getType();
    }

    private String getTypeNameFrom(Type type) {
        if (type == null) {
            return Util.EMPTY_STRING;
        }
        int nodeType0 = type.getNodeType0();
        if (nodeType0 == 5) {
            return getTypeNameFrom(((ArrayType) type).getElementType());
        }
        if (nodeType0 == 39) {
            return ((PrimitiveType) type).getPrimitiveTypeCode().toString();
        }
        if (nodeType0 == 43) {
            Name name = ((SimpleType) type).getName();
            return name.isQualifiedName() ? ((QualifiedName) name).getName().getIdentifier() : ((SimpleName) name).getIdentifier();
        }
        if (nodeType0 == 88) {
            return ((NameQualifiedType) type).getName().getIdentifier();
        }
        if (nodeType0 != 74) {
            return nodeType0 != 75 ? Util.EMPTY_STRING : ((QualifiedType) type).getName().getIdentifier();
        }
        StringBuffer stringBuffer = new StringBuffer(getTypeNameFrom(((ParameterizedType) type).getType()));
        ITypeBinding[] typeArguments = getTypeArguments();
        int length = typeArguments.length;
        if (length != 0) {
            stringBuffer.append('<');
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(typeArguments[i10].getName());
            }
            stringBuffer.append('>');
        }
        return String.valueOf(stringBuffer);
    }

    @Override
    public ITypeBinding createArrayType(int i10) {
        return this.resolver.getTypeBinding(this, i10);
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    @Override
    public String getBinaryName() {
        return null;
    }

    @Override
    public ITypeBinding getBound() {
        return null;
    }

    @Override
    public ITypeBinding getComponentType() {
        if (this.dimensions == 0) {
            return null;
        }
        return this.resolver.getTypeBinding(this, -1);
    }

    @Override
    public IVariableBinding[] getDeclaredFields() {
        return TypeBinding.NO_VARIABLE_BINDINGS;
    }

    @Override
    public IMethodBinding[] getDeclaredMethods() {
        return TypeBinding.NO_METHOD_BINDINGS;
    }

    @Override
    public int getDeclaredModifiers() {
        return 0;
    }

    @Override
    public ITypeBinding[] getDeclaredTypes() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    @Override
    public ITypeBinding getDeclaringClass() {
        return null;
    }

    @Override
    public IBinding getDeclaringMember() {
        return null;
    }

    @Override
    public IMethodBinding getDeclaringMethod() {
        return null;
    }

    @Override
    public int getDimensions() {
        return this.dimensions;
    }

    @Override
    public ITypeBinding getElementType() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding != null) {
            if (!typeBinding.isArrayType()) {
                return new RecoveredTypeBinding(this.resolver, this.binding);
            }
            return new RecoveredTypeBinding(this.resolver, ((ArrayBinding) this.binding).leafComponentType);
        }
        RecoveredTypeBinding recoveredTypeBinding = this.innerTypeBinding;
        if (recoveredTypeBinding != null) {
            return recoveredTypeBinding.getElementType();
        }
        Type type = this.currentType;
        if (type != null && type.isArrayType()) {
            return this.resolver.getTypeBinding(((ArrayType) this.currentType).getElementType());
        }
        VariableDeclaration variableDeclaration = this.variableDeclaration;
        if (variableDeclaration == null || variableDeclaration.getExtraDimensions() == 0) {
            return null;
        }
        return this.resolver.getTypeBinding(getType());
    }

    @Override
    public ITypeBinding getErasure() {
        return this;
    }

    @Override
    public IMethodBinding getFunctionalInterfaceMethod() {
        return null;
    }

    @Override
    public ITypeBinding getGenericTypeOfWildcardType() {
        return null;
    }

    @Override
    public ITypeBinding[] getInterfaces() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    @Override
    public IJavaElement getJavaElement() {
        IJavaElement javaElement;
        IPackageBinding iPackageBinding = getPackage();
        if (iPackageBinding == null || (javaElement = iPackageBinding.getJavaElement()) == null || javaElement.getElementType() != 4) {
            return null;
        }
        return ((PackageFragment) javaElement).getCompilationUnit(String.valueOf(getInternalName()) + ".java").getType(getName());
    }

    @Override
    public String getKey() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Recovered#");
        if (this.innerTypeBinding != null) {
            stringBuffer.append("innerTypeBinding");
            stringBuffer.append(this.innerTypeBinding.getKey());
        } else if (this.currentType != null) {
            stringBuffer.append("currentType");
            stringBuffer.append(this.currentType.toString());
        } else if (this.binding != null) {
            stringBuffer.append("typeBinding");
            stringBuffer.append(this.binding.computeUniqueKey());
        } else if (this.variableDeclaration != null) {
            stringBuffer.append("variableDeclaration");
            stringBuffer.append((Object) this.variableDeclaration.getClass());
            stringBuffer.append(this.variableDeclaration.getName().getIdentifier());
            stringBuffer.append(this.variableDeclaration.getExtraDimensions());
        }
        stringBuffer.append(getDimensions());
        if (this.typeArguments != null) {
            stringBuffer.append('<');
            int length = this.typeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 != 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.typeArguments[i10].getKey());
            }
            stringBuffer.append('>');
        }
        return String.valueOf(stringBuffer);
    }

    @Override
    public int getKind() {
        return 2;
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public IModuleBinding getModule() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding != null) {
            int kind = typeBinding.kind();
            if (kind == 68 || kind == 132 || kind == 516 || kind == 4100 || kind == 8196) {
                return null;
            }
            return getModule(this.binding.getPackage());
        }
        CompilationUnitScope scope = this.resolver.scope();
        if (scope != null) {
            return getModule(scope.getCurrentPackage());
        }
        return null;
    }

    @Override
    public String getName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        StringBuffer stringBuffer = new StringBuffer(getInternalName());
        stringBuffer.append(cArr);
        return String.valueOf(stringBuffer);
    }

    @Override
    public IPackageBinding getPackage() {
        CompilationUnitScope scope;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding != null) {
            int kind = typeBinding.kind();
            if (kind == 68 || kind == 132 || kind == 516 || kind == 4100 || kind == 8196) {
                return null;
            }
            IPackageBinding packageBinding = this.resolver.getPackageBinding(this.binding.getPackage());
            if (packageBinding != null) {
                return packageBinding;
            }
        }
        if ((this.innerTypeBinding == null || this.dimensions <= 0) && (scope = this.resolver.scope()) != null) {
            return this.resolver.getPackageBinding(scope.getCurrentPackage());
        }
        return null;
    }

    @Override
    public String getQualifiedName() {
        ReferenceBinding referenceBinding = getReferenceBinding();
        if (referenceBinding == null) {
            return getName();
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        stringBuffer.append(CharOperation.toString(referenceBinding.compoundName));
        stringBuffer.append(cArr);
        return String.valueOf(stringBuffer);
    }

    @Override
    public int getRank() {
        return -1;
    }

    @Override
    public ITypeBinding getSuperclass() {
        if (getQualifiedName().equals("java.lang.Object")) {
            return null;
        }
        return this.resolver.resolveWellKnownType("java.lang.Object");
    }

    @Override
    public IAnnotationBinding[] getTypeAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    @Override
    public ITypeBinding[] getTypeArguments() {
        if (this.binding != null) {
            ITypeBinding[] iTypeBindingArr = TypeBinding.NO_TYPE_BINDINGS;
            this.typeArguments = iTypeBindingArr;
            return iTypeBindingArr;
        }
        ITypeBinding[] iTypeBindingArr2 = this.typeArguments;
        if (iTypeBindingArr2 != null) {
            return iTypeBindingArr2;
        }
        RecoveredTypeBinding recoveredTypeBinding = this.innerTypeBinding;
        if (recoveredTypeBinding != null) {
            return recoveredTypeBinding.getTypeArguments();
        }
        if (!this.currentType.isParameterizedType()) {
            ITypeBinding[] iTypeBindingArr3 = TypeBinding.NO_TYPE_BINDINGS;
            this.typeArguments = iTypeBindingArr3;
            return iTypeBindingArr3;
        }
        List typeArguments = ((ParameterizedType) this.currentType).typeArguments();
        int size = typeArguments.size();
        ITypeBinding[] iTypeBindingArr4 = new ITypeBinding[size];
        for (int i10 = 0; i10 < size; i10++) {
            ITypeBinding resolveBinding = ((Type) typeArguments.get(i10)).resolveBinding();
            if (resolveBinding == null) {
                ITypeBinding[] iTypeBindingArr5 = TypeBinding.NO_TYPE_BINDINGS;
                this.typeArguments = iTypeBindingArr5;
                return iTypeBindingArr5;
            }
            iTypeBindingArr4[i10] = resolveBinding;
        }
        this.typeArguments = iTypeBindingArr4;
        return iTypeBindingArr4;
    }

    @Override
    public ITypeBinding[] getTypeBounds() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    @Override
    public ITypeBinding getTypeDeclaration() {
        return this;
    }

    @Override
    public ITypeBinding[] getTypeParameters() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    @Override
    public ITypeBinding getWildcard() {
        return null;
    }

    @Override
    public boolean isAnnotation() {
        return false;
    }

    @Override
    public boolean isAnonymous() {
        return false;
    }

    @Override
    public boolean isArray() {
        return false;
    }

    @Override
    public boolean isAssignmentCompatible(ITypeBinding iTypeBinding) {
        if ("java.lang.Object".equals(iTypeBinding.getQualifiedName())) {
            return true;
        }
        return isEqualTo(iTypeBinding);
    }

    @Override
    public boolean isCapture() {
        return false;
    }

    @Override
    public boolean isCastCompatible(ITypeBinding iTypeBinding) {
        if ("java.lang.Object".equals(iTypeBinding.getQualifiedName())) {
            return true;
        }
        return isEqualTo(iTypeBinding);
    }

    @Override
    public boolean isClass() {
        return true;
    }

    @Override
    public boolean isDeprecated() {
        return false;
    }

    @Override
    public boolean isEnum() {
        return false;
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding.isRecovered() && iBinding.getKind() == 2) {
            return getKey().equals(iBinding.getKey());
        }
        return false;
    }

    @Override
    public boolean isFromSource() {
        return false;
    }

    @Override
    public boolean isGenericType() {
        return false;
    }

    @Override
    public boolean isInterface() {
        return false;
    }

    @Override
    public boolean isIntersectionType() {
        return false;
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
    public boolean isNested() {
        return false;
    }

    @Override
    public boolean isNullType() {
        return false;
    }

    @Override
    public boolean isParameterizedType() {
        RecoveredTypeBinding recoveredTypeBinding = this.innerTypeBinding;
        if (recoveredTypeBinding != null) {
            return recoveredTypeBinding.isParameterizedType();
        }
        Type type = this.currentType;
        if (type != null) {
            return type.isParameterizedType();
        }
        return false;
    }

    @Override
    public boolean isPrimitive() {
        return false;
    }

    @Override
    public boolean isRawType() {
        return false;
    }

    @Override
    public boolean isRecovered() {
        return true;
    }

    @Override
    public boolean isSubTypeCompatible(ITypeBinding iTypeBinding) {
        if ("java.lang.Object".equals(iTypeBinding.getQualifiedName())) {
            return true;
        }
        return isEqualTo(iTypeBinding);
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public boolean isTopLevel() {
        return true;
    }

    @Override
    public boolean isTypeVariable() {
        return false;
    }

    @Override
    public boolean isUpperbound() {
        return false;
    }

    @Override
    public boolean isWildcardType() {
        return false;
    }

    private IModuleBinding getModule(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        IPackageBinding packageBinding2 = this.resolver.getPackageBinding(packageBinding);
        if (packageBinding2 != null) {
            return packageBinding2.getModule();
        }
        return null;
    }

    public RecoveredTypeBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        this.resolver = bindingResolver;
        this.dimensions = typeBinding.dimensions();
        this.binding = typeBinding;
    }

    public RecoveredTypeBinding(BindingResolver bindingResolver, Type type) {
        this.currentType = type;
        this.resolver = bindingResolver;
        this.dimensions = 0;
        if (type.isArrayType()) {
            this.dimensions += ((ArrayType) type).getDimensions();
        }
    }

    public RecoveredTypeBinding(BindingResolver bindingResolver, RecoveredTypeBinding recoveredTypeBinding, int i10) {
        this.innerTypeBinding = recoveredTypeBinding;
        this.dimensions = recoveredTypeBinding.getDimensions() + i10;
        this.resolver = bindingResolver;
    }
}
