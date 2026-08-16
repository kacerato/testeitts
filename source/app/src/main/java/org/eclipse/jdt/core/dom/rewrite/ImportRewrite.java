package org.eclipse.jdt.core.dom.rewrite;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.v;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotatableType;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.Dimension;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.core.dom.rewrite.imports.ImportRewriteAnalyzer;
import org.eclipse.jdt.internal.core.dom.rewrite.imports.ImportRewriteConfiguration;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

public final class ImportRewrite {
    private static final int JLS8_INTERNAL = 8;
    private static final char NORMAL_PREFIX = 'n';
    private static final char STATIC_PREFIX = 's';
    private List<String> addedImports;
    private final CompilationUnit astRoot;
    private final ICompilationUnit compilationUnit;
    private String[] createdImports;
    private String[] createdStaticImports;
    private final ImportRewriteContext defaultContext;
    private final List existingImports;
    private boolean filterImplicitImports;
    private int importOnDemandThreshold;
    private String[] importOrder;
    private final Map importsKindMap;
    private List<String> removedImports;
    private final boolean restoreExistingImports;
    private Set<String> staticExplicitSimpleNames;
    private int staticImportOnDemandThreshold;
    private Set<String> typeExplicitSimpleNames;
    private boolean useContextToFilterImplicitImports;

    public static abstract class ImportRewriteContext {
        public static final int KIND_STATIC_FIELD = 2;
        public static final int KIND_STATIC_METHOD = 3;
        public static final int KIND_TYPE = 1;
        public static final int RES_NAME_CONFLICT = 3;
        public static final int RES_NAME_FOUND = 1;
        public static final int RES_NAME_UNKNOWN = 2;
        public static final int RES_NAME_UNKNOWN_NEEDS_EXPLICIT_IMPORT = 4;

        public abstract int findInContext(String str, String str2, int i10);

        public IAnnotationBinding[] removeRedundantTypeAnnotations(IAnnotationBinding[] iAnnotationBindingArr, TypeLocation typeLocation, ITypeBinding iTypeBinding) {
            return iAnnotationBindingArr;
        }
    }

    public enum TypeLocation {
        PARAMETER,
        RETURN_TYPE,
        FIELD,
        TYPE_PARAMETER,
        TYPE_BOUND,
        TYPE_ARGUMENT,
        ARRAY_CONTENTS,
        LOCAL_VARIABLE,
        CAST,
        INSTANCEOF,
        NEW,
        RECEIVER,
        EXCEPTION,
        OTHER,
        UNKNOWN;

        public static TypeLocation[] valuesCustom() {
            TypeLocation[] valuesCustom = values();
            int length = valuesCustom.length;
            TypeLocation[] typeLocationArr = new TypeLocation[length];
            System.arraycopy(valuesCustom, 0, typeLocationArr, 0, length);
            return typeLocationArr;
        }
    }

    private ImportRewrite(ICompilationUnit iCompilationUnit, CompilationUnit compilationUnit, List list) {
        this.compilationUnit = iCompilationUnit;
        this.astRoot = compilationUnit;
        if (list != null) {
            this.existingImports = list;
            this.restoreExistingImports = !list.isEmpty();
        } else {
            this.existingImports = new ArrayList();
            this.restoreExistingImports = false;
        }
        this.filterImplicitImports = true;
        this.useContextToFilterImplicitImports = false;
        this.defaultContext = new ImportRewriteContext() {
            @Override
            public int findInContext(String str, String str2, int i10) {
                return ImportRewrite.this.findInImports(str, str2, i10);
            }
        };
        this.addedImports = new ArrayList();
        this.removedImports = new ArrayList();
        this.typeExplicitSimpleNames = new HashSet();
        this.staticExplicitSimpleNames = new HashSet();
        this.createdImports = null;
        this.createdStaticImports = null;
        this.importOrder = CharOperation.NO_STRINGS;
        this.importOnDemandThreshold = 99;
        this.staticImportOnDemandThreshold = 99;
        this.importsKindMap = new HashMap();
    }

    private void addEntry(String str) {
        this.existingImports.add(str);
        if (this.removedImports.remove(str)) {
            return;
        }
        this.addedImports.add(str);
    }

    private void annotateList(List list, IAnnotationBinding[] iAnnotationBindingArr, AST ast, ImportRewriteContext importRewriteContext, TypeLocation typeLocation, ITypeBinding iTypeBinding) {
        if (importRewriteContext == null) {
            importRewriteContext = this.defaultContext;
        }
        IAnnotationBinding[] removeRedundantTypeAnnotations = importRewriteContext.removeRedundantTypeAnnotations(iAnnotationBindingArr, typeLocation, iTypeBinding);
        for (IAnnotationBinding iAnnotationBinding : removeRedundantTypeAnnotations) {
            Annotation addAnnotation = addAnnotation(iAnnotationBinding, ast, importRewriteContext);
            if (addAnnotation != null) {
                list.add(addAnnotation);
            }
        }
    }

    private Type annotateType(ITypeBinding iTypeBinding, AST ast, ImportRewriteContext importRewriteContext, Type type, TypeLocation typeLocation) {
        IAnnotationBinding[] typeAnnotations = iTypeBinding.getTypeAnnotations();
        if (typeAnnotations != null && typeAnnotations.length > 0 && (type instanceof AnnotatableType)) {
            annotateList(((AnnotatableType) type).annotations(), typeAnnotations, ast, importRewriteContext, typeLocation, iTypeBinding);
        }
        return type;
    }

    private ImportRewriteConfiguration buildImportRewriteConfiguration() {
        ImportRewriteConfiguration.Builder preservingOriginalImports = this.restoreExistingImports ? ImportRewriteConfiguration.Builder.preservingOriginalImports() : ImportRewriteConfiguration.Builder.discardingOriginalImports();
        preservingOriginalImports.setImportOrder(Arrays.asList(this.importOrder));
        preservingOriginalImports.setTypeOnDemandThreshold(this.importOnDemandThreshold);
        preservingOriginalImports.setStaticOnDemandThreshold(this.staticImportOnDemandThreshold);
        preservingOriginalImports.setTypeContainerSorting(this.useContextToFilterImplicitImports ? ImportRewriteConfiguration.ImportContainerSorting.BY_PACKAGE : ImportRewriteConfiguration.ImportContainerSorting.BY_PACKAGE_AND_CONTAINING_TYPE);
        preservingOriginalImports.setStaticContainerSorting(ImportRewriteConfiguration.ImportContainerSorting.BY_PACKAGE_AND_CONTAINING_TYPE);
        preservingOriginalImports.setImplicitImportIdentification(this.filterImplicitImports ? ImportRewriteConfiguration.ImplicitImportIdentification.JAVA_LANG_AND_CU_PACKAGE : ImportRewriteConfiguration.ImplicitImportIdentification.NONE);
        return preservingOriginalImports.build();
    }

    private Type buildType(ITypeBinding iTypeBinding, ITypeBinding iTypeBinding2, AST ast, ImportRewriteContext importRewriteContext, Type type, TypeLocation typeLocation) {
        if (iTypeBinding.equals(iTypeBinding2)) {
            return type;
        }
        return internalAddImport(iTypeBinding, ast, importRewriteContext, iTypeBinding.isMember() ? buildType(iTypeBinding.getDeclaringClass(), iTypeBinding2, ast, importRewriteContext, type, TypeLocation.OTHER) : null, false, typeLocation);
    }

    private ITypeBinding checkAnnotationAndGenerics(ITypeBinding iTypeBinding) {
        ITypeBinding iTypeBinding2 = null;
        while (iTypeBinding != null) {
            IAnnotationBinding[] typeAnnotations = iTypeBinding.getTypeAnnotations();
            ITypeBinding[] typeArguments = iTypeBinding.getTypeArguments();
            if ((typeAnnotations != null && typeAnnotations.length > 0) || (typeArguments != null && typeArguments.length > 0)) {
                iTypeBinding2 = iTypeBinding;
            }
            if (!iTypeBinding.isMember()) {
                break;
            }
            iTypeBinding = iTypeBinding.getDeclaringClass();
        }
        return iTypeBinding2;
    }

    private static int compareImport(char c10, String str, String str2, String str3) {
        if (str3.charAt(0) != c10 || !str3.endsWith(str2)) {
            return 2;
        }
        String substring = str3.substring(1);
        if (substring.length() == str2.length()) {
            return str.length() == 0 ? 1 : 3;
        }
        int length = (substring.length() - str2.length()) - 1;
        if (substring.charAt(length) != '.') {
            return 2;
        }
        return (str.length() == length && substring.startsWith(str)) ? 1 : 3;
    }

    private boolean containsNestedCapture(ITypeBinding iTypeBinding, boolean z10) {
        if (iTypeBinding == null || iTypeBinding.isPrimitive() || iTypeBinding.isTypeVariable()) {
            return false;
        }
        if (iTypeBinding.isCapture()) {
            if (z10) {
                return true;
            }
            return containsNestedCapture(iTypeBinding.getWildcard(), true);
        }
        if (iTypeBinding.isWildcardType()) {
            return containsNestedCapture(iTypeBinding.getBound(), true);
        }
        if (iTypeBinding.isArray()) {
            return containsNestedCapture(iTypeBinding.getElementType(), true);
        }
        for (ITypeBinding iTypeBinding2 : iTypeBinding.getTypeArguments()) {
            if (containsNestedCapture(iTypeBinding2, true)) {
                return true;
            }
        }
        return false;
    }

    public static ImportRewrite create(ICompilationUnit iCompilationUnit, boolean z10) throws JavaModelException {
        ArrayList arrayList;
        if (iCompilationUnit != null) {
            if (z10) {
                arrayList = new ArrayList();
                for (IImportDeclaration iImportDeclaration : iCompilationUnit.getImports()) {
                    arrayList.add(String.valueOf(Flags.isStatic(iImportDeclaration.getFlags()) ? STATIC_PREFIX : NORMAL_PREFIX) + iImportDeclaration.getElementName());
                }
            } else {
                arrayList = null;
            }
            return new ImportRewrite(iCompilationUnit, null, arrayList);
        }
        throw new IllegalArgumentException("Compilation unit must not be null");
    }

    private Type createBaseType(AST ast, ImportRewriteContext importRewriteContext, ITypeBinding iTypeBinding, TypeLocation typeLocation) {
        IAnnotationBinding[] typeAnnotations = iTypeBinding.getTypeAnnotations();
        boolean z10 = typeAnnotations != null && typeAnnotations.length > 0;
        String rawQualifiedName = getRawQualifiedName(iTypeBinding);
        String internalAddImport = rawQualifiedName.length() > 0 ? internalAddImport(rawQualifiedName, importRewriteContext) : getRawName(iTypeBinding);
        if (!z10) {
            return ast.newSimpleType(ast.newName(internalAddImport));
        }
        int lastIndexOf = internalAddImport != null ? internalAddImport.lastIndexOf(46) : -1;
        AnnotatableType newNameQualifiedType = lastIndexOf > 0 ? ast.newNameQualifiedType(ast.newName(internalAddImport.substring(0, lastIndexOf)), ast.newSimpleName(internalAddImport.substring(lastIndexOf + 1))) : ast.newSimpleType(ast.newName(internalAddImport));
        annotateList(newNameQualifiedType.annotations(), typeAnnotations, ast, importRewriteContext, typeLocation, iTypeBinding);
        return newNameQualifiedType;
    }

    private static String[] filterFromList(List<String> list, char c10) {
        if (list == null) {
            return CharOperation.NO_STRINGS;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (c10 == str.charAt(0)) {
                arrayList.add(str.substring(1));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private Type getArrayType(Type type, AST ast, ImportRewriteContext importRewriteContext, ITypeBinding iTypeBinding, TypeLocation typeLocation) {
        int dimensions = iTypeBinding.getDimensions();
        ArrayType newArrayType = ast.newArrayType(type, dimensions);
        if (ast.apiLevel() >= 8) {
            int i10 = 0;
            while (i10 < dimensions) {
                IAnnotationBinding[] typeAnnotations = iTypeBinding.getTypeAnnotations();
                if (typeAnnotations.length > 0) {
                    annotateList(((Dimension) newArrayType.dimensions().get(i10)).annotations(), typeAnnotations, ast, importRewriteContext, i10 == 0 ? typeLocation : TypeLocation.ARRAY_CONTENTS, iTypeBinding);
                }
                iTypeBinding = iTypeBinding.getComponentType();
                i10++;
            }
        }
        return newArrayType;
    }

    private static String getRawName(ITypeBinding iTypeBinding) {
        return iTypeBinding.getTypeDeclaration().getName();
    }

    private static String getRawQualifiedName(ITypeBinding iTypeBinding) {
        return iTypeBinding.getTypeDeclaration().getQualifiedName();
    }

    private String internalAddImport(String str, ImportRewriteContext importRewriteContext) {
        String str2;
        String str3;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            str2 = str.substring(0, lastIndexOf);
            str3 = str.substring(lastIndexOf + 1);
        } else {
            str2 = "";
            str3 = str;
        }
        if (str2.length() == 0 && PrimitiveType.toCode(str3) != null) {
            return str;
        }
        if (importRewriteContext == null) {
            importRewriteContext = this.defaultContext;
        }
        int findInContext = importRewriteContext.findInContext(str2, str3, 1);
        if (findInContext == 3) {
            return str;
        }
        if (findInContext == 2) {
            addEntry(String.valueOf(NORMAL_PREFIX) + str);
        }
        if (findInContext == 4) {
            addEntry(String.valueOf(NORMAL_PREFIX) + str);
            this.typeExplicitSimpleNames.add(str3);
        }
        return str3;
    }

    private static ITypeBinding normalizeTypeBinding(ITypeBinding iTypeBinding) {
        if (iTypeBinding == null || iTypeBinding.isNullType() || "void".equals(iTypeBinding.getName())) {
            return null;
        }
        if (!iTypeBinding.isAnonymous()) {
            return iTypeBinding.isCapture() ? iTypeBinding.getWildcard() : iTypeBinding;
        }
        ITypeBinding[] interfaces = iTypeBinding.getInterfaces();
        return interfaces.length > 0 ? interfaces[0] : iTypeBinding.getSuperclass();
    }

    private boolean removeEntry(String str) {
        if (!this.existingImports.remove(str)) {
            return false;
        }
        if (this.addedImports.remove(str)) {
            return true;
        }
        this.removedImports.add(str);
        return true;
    }

    public Annotation addAnnotation(IAnnotationBinding iAnnotationBinding, AST ast, ImportRewriteContext importRewriteContext) {
        Name newName;
        Type addImport = addImport(iAnnotationBinding.getAnnotationType(), ast, importRewriteContext, TypeLocation.OTHER);
        if (addImport instanceof SimpleType) {
            SimpleType simpleType = (SimpleType) addImport;
            newName = simpleType.getName();
            simpleType.setName(ast.newName("a"));
        } else {
            newName = ast.newName("invalid");
        }
        IMemberValuePairBinding[] declaredMemberValuePairs = iAnnotationBinding.getDeclaredMemberValuePairs();
        if (declaredMemberValuePairs.length == 0) {
            MarkerAnnotation newMarkerAnnotation = ast.newMarkerAnnotation();
            newMarkerAnnotation.setTypeName(newName);
            return newMarkerAnnotation;
        }
        if (declaredMemberValuePairs.length == 1 && "value".equals(declaredMemberValuePairs[0].getName())) {
            SingleMemberAnnotation newSingleMemberAnnotation = ast.newSingleMemberAnnotation();
            newSingleMemberAnnotation.setTypeName(newName);
            Object value = declaredMemberValuePairs[0].getValue();
            if (value != null) {
                newSingleMemberAnnotation.setValue(addAnnotation(ast, value, importRewriteContext));
            }
            return newSingleMemberAnnotation;
        }
        NormalAnnotation newNormalAnnotation = ast.newNormalAnnotation();
        newNormalAnnotation.setTypeName(newName);
        for (IMemberValuePairBinding iMemberValuePairBinding : declaredMemberValuePairs) {
            MemberValuePair newMemberValuePair = ast.newMemberValuePair();
            newMemberValuePair.setName(ast.newSimpleName(iMemberValuePairBinding.getName()));
            Object value2 = iMemberValuePairBinding.getValue();
            if (value2 != null) {
                newMemberValuePair.setValue(addAnnotation(ast, value2, importRewriteContext));
            }
            newNormalAnnotation.values().add(newMemberValuePair);
        }
        return newNormalAnnotation;
    }

    public String addImport(ITypeBinding iTypeBinding) {
        return addImport(iTypeBinding, this.defaultContext);
    }

    public Type addImportFromSignature(String str, AST ast) {
        return addImportFromSignature(str, ast, this.defaultContext);
    }

    public String addStaticImport(IBinding iBinding) {
        return addStaticImport(iBinding, this.defaultContext);
    }

    public final int findInImports(String str, String str2, int i10) {
        int i11 = 0;
        int i12 = 1;
        boolean z10 = i10 == 3 || (str2.length() == 1 && str2.charAt(0) == '*');
        List list = this.existingImports;
        char c10 = i10 == 1 ? NORMAL_PREFIX : 's';
        int size = list.size() - 1;
        while (size >= 0) {
            String str3 = (String) list.get(size);
            int compareImport = compareImport(c10, str, str2, str3);
            if (compareImport != 2 && (!z10 || compareImport == i12)) {
                if (c10 != 's') {
                    return compareImport;
                }
                Object obj = this.importsKindMap.get(str3.substring(i12));
                if (obj != null) {
                    if (obj.equals(this.importsKindMap.get(String.valueOf(str) + '.' + str2))) {
                        return compareImport;
                    }
                } else {
                    continue;
                }
            }
            size--;
            i11 = 0;
            i12 = 1;
        }
        String elementName = this.compilationUnit.getParent().getElementName();
        if (i10 == i12 && this.filterImplicitImports && this.useContextToFilterImplicitImports) {
            String concatenateName = Util.concatenateName(elementName, JavaCore.removeJavaLikeExtension(this.compilationUnit.getElementName()), '.');
            if (str.equals(elementName) || concatenateName.equals(Util.concatenateName(str, str2, '.'))) {
                return i12;
            }
            CompilationUnit compilationUnit = this.astRoot;
            if (compilationUnit != null) {
                List types = compilationUnit.types();
                int size2 = types.size();
                while (i11 < size2) {
                    if (((AbstractTypeDeclaration) types.get(i11)).getName().getIdentifier().equals(str2)) {
                        if (str.equals(elementName)) {
                            return i12;
                        }
                        return 3;
                    }
                    i11++;
                }
            } else {
                try {
                    IType[] types2 = this.compilationUnit.getTypes();
                    int length = types2.length;
                    while (i11 < length) {
                        if (types2[i11].getElementName().equals(str2)) {
                            if (str.equals(elementName)) {
                                return i12;
                            }
                            return 3;
                        }
                        i11++;
                    }
                } catch (JavaModelException unused) {
                }
            }
        }
        return 2;
    }

    public String[] getAddedImports() {
        return filterFromList(this.addedImports, NORMAL_PREFIX);
    }

    public String[] getAddedStaticImports() {
        return filterFromList(this.addedImports, STATIC_PREFIX);
    }

    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public String[] getCreatedImports() {
        return this.createdImports;
    }

    public String[] getCreatedStaticImports() {
        return this.createdStaticImports;
    }

    public ImportRewriteContext getDefaultImportRewriteContext() {
        return this.defaultContext;
    }

    public String[] getRemovedImports() {
        return filterFromList(this.removedImports, NORMAL_PREFIX);
    }

    public String[] getRemovedStaticImports() {
        return filterFromList(this.removedImports, STATIC_PREFIX);
    }

    public boolean hasRecordedChanges() {
        return (this.restoreExistingImports && this.addedImports.isEmpty() && this.removedImports.isEmpty()) ? false : true;
    }

    public boolean removeImport(String str) {
        return removeEntry(String.valueOf(NORMAL_PREFIX) + str);
    }

    public boolean removeStaticImport(String str) {
        return removeEntry(String.valueOf(STATIC_PREFIX) + str);
    }

    public final TextEdit rewriteImports(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.bind(Messages.importRewrite_processDescription), 2);
        if (!hasRecordedChanges()) {
            String[] strArr = CharOperation.NO_STRINGS;
            this.createdImports = strArr;
            this.createdStaticImports = strArr;
            return new MultiTextEdit();
        }
        CompilationUnit compilationUnit = this.astRoot;
        if (compilationUnit == null) {
            ASTParser newParser = ASTParser.newParser(11);
            newParser.setSource(this.compilationUnit);
            newParser.setFocalPosition(0);
            newParser.setResolveBindings(false);
            compilationUnit = (CompilationUnit) newParser.createAST(convert.split(1));
        }
        ImportRewriteAnalyzer importRewriteAnalyzer = new ImportRewriteAnalyzer(this.compilationUnit, compilationUnit, buildImportRewriteConfiguration());
        for (String str : this.addedImports) {
            importRewriteAnalyzer.addImport('s' == str.charAt(0), str.substring(1));
        }
        for (String str2 : this.removedImports) {
            importRewriteAnalyzer.removeImport('s' == str2.charAt(0), str2.substring(1));
        }
        Iterator<String> it = this.typeExplicitSimpleNames.iterator();
        while (it.hasNext()) {
            importRewriteAnalyzer.requireExplicitImport(false, it.next());
        }
        Iterator<String> it2 = this.staticExplicitSimpleNames.iterator();
        while (it2.hasNext()) {
            importRewriteAnalyzer.requireExplicitImport(true, it2.next());
        }
        ImportRewriteAnalyzer.RewriteResult analyzeRewrite = importRewriteAnalyzer.analyzeRewrite(convert.split(1));
        this.createdImports = analyzeRewrite.getCreatedImports();
        this.createdStaticImports = analyzeRewrite.getCreatedStaticImports();
        return analyzeRewrite.getTextEdit();
    }

    public void setFilterImplicitImports(boolean z10) {
        this.filterImplicitImports = z10;
    }

    public void setImportOrder(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException("Order must not be null");
        }
        this.importOrder = strArr;
    }

    public void setOnDemandImportThreshold(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Threshold must be positive.");
        }
        this.importOnDemandThreshold = i10;
    }

    public void setStaticOnDemandImportThreshold(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Threshold must be positive.");
        }
        this.staticImportOnDemandThreshold = i10;
    }

    public void setUseContextToFilterImplicitImports(boolean z10) {
        this.useContextToFilterImplicitImports = z10;
    }

    public String addImport(ITypeBinding iTypeBinding, ImportRewriteContext importRewriteContext) {
        if (!iTypeBinding.isPrimitive() && !iTypeBinding.isTypeVariable() && !iTypeBinding.isRecovered()) {
            ITypeBinding normalizeTypeBinding = normalizeTypeBinding(iTypeBinding);
            if (normalizeTypeBinding == null) {
                return "invalid";
            }
            if (normalizeTypeBinding.isWildcardType()) {
                StringBuffer stringBuffer = new StringBuffer("?");
                ITypeBinding bound = normalizeTypeBinding.getBound();
                if (bound != null && !bound.isWildcardType() && !bound.isCapture()) {
                    if (normalizeTypeBinding.isUpperbound()) {
                        stringBuffer.append(" extends ");
                    } else {
                        stringBuffer.append(" super ");
                    }
                    stringBuffer.append(addImport(bound, importRewriteContext));
                }
                return stringBuffer.toString();
            }
            if (normalizeTypeBinding.isArray()) {
                StringBuffer stringBuffer2 = new StringBuffer(addImport(normalizeTypeBinding.getElementType(), importRewriteContext));
                for (int dimensions = normalizeTypeBinding.getDimensions(); dimensions > 0; dimensions--) {
                    stringBuffer2.append(v.f99450n);
                }
                return stringBuffer2.toString();
            }
            String rawQualifiedName = getRawQualifiedName(normalizeTypeBinding);
            if (rawQualifiedName.length() > 0) {
                String internalAddImport = internalAddImport(rawQualifiedName, importRewriteContext);
                ITypeBinding[] typeArguments = normalizeTypeBinding.getTypeArguments();
                if (typeArguments.length <= 0) {
                    return internalAddImport;
                }
                StringBuffer stringBuffer3 = new StringBuffer(internalAddImport);
                stringBuffer3.append('<');
                for (int i10 = 0; i10 < typeArguments.length; i10++) {
                    if (i10 > 0) {
                        stringBuffer3.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    ITypeBinding iTypeBinding2 = typeArguments[i10];
                    if (containsNestedCapture(iTypeBinding2, false)) {
                        stringBuffer3.append('?');
                    } else {
                        stringBuffer3.append(addImport(iTypeBinding2, importRewriteContext));
                    }
                }
                stringBuffer3.append('>');
                return stringBuffer3.toString();
            }
            return getRawName(normalizeTypeBinding);
        }
        return iTypeBinding.getName();
    }

    public Type addImportFromSignature(String str, AST ast, ImportRewriteContext importRewriteContext) {
        if (str != null && str.length() != 0) {
            switch (Signature.getTypeSignatureKind(str)) {
                case 1:
                    String typeErasure = Signature.getTypeErasure(str);
                    String signature = Signature.toString(typeErasure);
                    if (typeErasure.charAt(0) == 'L') {
                        signature = internalAddImport(signature, importRewriteContext);
                    }
                    SimpleType newSimpleType = ast.newSimpleType(ast.newName(signature));
                    String[] typeArguments = Signature.getTypeArguments(str);
                    if (typeArguments.length <= 0) {
                        return newSimpleType;
                    }
                    ParameterizedType newParameterizedType = ast.newParameterizedType(newSimpleType);
                    List typeArguments2 = newParameterizedType.typeArguments();
                    for (String str2 : typeArguments) {
                        if (containsNestedCapture(str2)) {
                            typeArguments2.add(ast.newWildcardType());
                        } else {
                            typeArguments2.add(addImportFromSignature(str2, ast, importRewriteContext));
                        }
                    }
                    return newParameterizedType;
                case 2:
                    return ast.newPrimitiveType(PrimitiveType.toCode(Signature.toString(str)));
                case 3:
                    return ast.newSimpleType(ast.newSimpleName(Signature.toString(str)));
                case 4:
                    return ast.newArrayType(addImportFromSignature(Signature.getElementType(str), ast, importRewriteContext), Signature.getArrayCount(str));
                case 5:
                    WildcardType newWildcardType = ast.newWildcardType();
                    char charAt = str.charAt(0);
                    if (charAt != '*') {
                        newWildcardType.setBound(addImportFromSignature(str.substring(1), ast, importRewriteContext), charAt == '+');
                    }
                    return newWildcardType;
                case 6:
                    return addImportFromSignature(str.substring(1), ast, importRewriteContext);
                default:
                    throw new IllegalArgumentException("Unknown type signature kind: " + str);
            }
        }
        throw new IllegalArgumentException("Invalid type signature: empty or null");
    }

    public String addStaticImport(IBinding iBinding, ImportRewriteContext importRewriteContext) {
        if (Modifier.isStatic(iBinding.getModifiers())) {
            if (iBinding instanceof IVariableBinding) {
                IVariableBinding iVariableBinding = (IVariableBinding) iBinding;
                if (iVariableBinding.isField()) {
                    return addStaticImport(getRawQualifiedName(iVariableBinding.getDeclaringClass()), iBinding.getName(), true, importRewriteContext);
                }
            } else if (iBinding instanceof IMethodBinding) {
                return addStaticImport(getRawQualifiedName(((IMethodBinding) iBinding).getDeclaringClass()), iBinding.getName(), false, importRewriteContext);
            }
        }
        throw new IllegalArgumentException("Binding must be a static field or method.");
    }

    public static ImportRewrite create(CompilationUnit compilationUnit, boolean z10) {
        ArrayList arrayList;
        if (compilationUnit != null) {
            ITypeRoot typeRoot = compilationUnit.getTypeRoot();
            if (typeRoot instanceof ICompilationUnit) {
                if (z10) {
                    arrayList = new ArrayList();
                    List imports = compilationUnit.imports();
                    for (int i10 = 0; i10 < imports.size(); i10++) {
                        ImportDeclaration importDeclaration = (ImportDeclaration) imports.get(i10);
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(importDeclaration.isStatic() ? STATIC_PREFIX : NORMAL_PREFIX);
                        stringBuffer.append(importDeclaration.getName().getFullyQualifiedName());
                        if (importDeclaration.isOnDemand()) {
                            if (stringBuffer.length() > 1) {
                                stringBuffer.append('.');
                            }
                            stringBuffer.append('*');
                        }
                        arrayList.add(stringBuffer.toString());
                    }
                } else {
                    arrayList = null;
                }
                return new ImportRewrite((ICompilationUnit) typeRoot, compilationUnit, arrayList);
            }
            throw new IllegalArgumentException("AST must have been constructed from a Java element");
        }
        throw new IllegalArgumentException("AST must not be null");
    }

    private boolean containsNestedCapture(String str) {
        return str.length() > 1 && str.indexOf(33, 1) != -1;
    }

    private Type internalAddImport(ITypeBinding iTypeBinding, AST ast, ImportRewriteContext importRewriteContext, Type type, boolean z10, TypeLocation typeLocation) {
        ITypeBinding normalizeTypeBinding;
        Type type2;
        Type type3;
        Type newSimpleType;
        Type annotateType;
        if (iTypeBinding.isPrimitive()) {
            type3 = ast.newPrimitiveType(PrimitiveType.toCode(iTypeBinding.getName()));
            normalizeTypeBinding = iTypeBinding;
        } else {
            normalizeTypeBinding = normalizeTypeBinding(iTypeBinding);
            if (normalizeTypeBinding == null) {
                return ast.newSimpleType(ast.newSimpleName("invalid"));
            }
            if (normalizeTypeBinding.isTypeVariable()) {
                type2 = ast.newSimpleType(ast.newSimpleName(iTypeBinding.getName()));
            } else if (normalizeTypeBinding.isWildcardType()) {
                WildcardType newWildcardType = ast.newWildcardType();
                ITypeBinding bound = normalizeTypeBinding.getBound();
                type2 = newWildcardType;
                if (bound != null) {
                    type2 = newWildcardType;
                    if (!bound.isWildcardType()) {
                        type2 = newWildcardType;
                        if (!bound.isCapture()) {
                            newWildcardType.setBound(addImport(bound, ast, importRewriteContext, TypeLocation.TYPE_BOUND), normalizeTypeBinding.isUpperbound());
                            type2 = newWildcardType;
                        }
                    }
                }
            } else {
                type2 = normalizeTypeBinding.isArray() ? getArrayType(addImport(normalizeTypeBinding.getElementType(), ast, importRewriteContext, TypeLocation.ARRAY_CONTENTS), ast, importRewriteContext, normalizeTypeBinding, typeLocation) : null;
            }
            type3 = type2;
        }
        if (type3 != null) {
            return annotateType(normalizeTypeBinding, ast, importRewriteContext, type3, typeLocation);
        }
        if (z10) {
            annotateType = createBaseType(ast, importRewriteContext, normalizeTypeBinding, typeLocation);
        } else {
            if (type != null) {
                newSimpleType = ast.newQualifiedType(type, ast.newSimpleName(getRawName(normalizeTypeBinding)));
            } else {
                newSimpleType = ast.newSimpleType(ast.newName(getRawName(normalizeTypeBinding)));
            }
            annotateType = annotateType(normalizeTypeBinding, ast, importRewriteContext, newSimpleType, typeLocation);
        }
        ITypeBinding[] typeArguments = normalizeTypeBinding.getTypeArguments();
        if (typeArguments.length <= 0) {
            return annotateType;
        }
        ParameterizedType newParameterizedType = ast.newParameterizedType(annotateType);
        List typeArguments2 = newParameterizedType.typeArguments();
        for (ITypeBinding iTypeBinding2 : typeArguments) {
            if (containsNestedCapture(iTypeBinding2, false)) {
                typeArguments2.add(ast.newWildcardType());
            } else {
                typeArguments2.add(addImport(iTypeBinding2, ast, importRewriteContext, TypeLocation.TYPE_ARGUMENT));
            }
        }
        return newParameterizedType;
    }

    public String addStaticImport(String str, String str2, boolean z10) {
        return addStaticImport(str, str2, z10, this.defaultContext);
    }

    public String addStaticImport(String str, String str2, boolean z10, ImportRewriteContext importRewriteContext) {
        String str3 = String.valueOf(str) + '.' + str2;
        if (str.indexOf(46) == -1) {
            return str3;
        }
        if (importRewriteContext == null) {
            importRewriteContext = this.defaultContext;
        }
        int i10 = z10 ? 2 : 3;
        this.importsKindMap.put(str3, Integer.valueOf(i10));
        int findInContext = importRewriteContext.findInContext(str, str2, i10);
        if (findInContext == 3) {
            return str3;
        }
        if (findInContext == 2) {
            addEntry(String.valueOf(STATIC_PREFIX) + str3);
        }
        if (findInContext == 4) {
            addEntry(String.valueOf(STATIC_PREFIX) + str3);
            this.staticExplicitSimpleNames.add(str2);
        }
        return str2;
    }

    private Expression addAnnotation(AST ast, Object obj, ImportRewriteContext importRewriteContext) {
        Name newName;
        if (obj instanceof Boolean) {
            return ast.newBooleanLiteral(((Boolean) obj).booleanValue());
        }
        if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Double)) {
            if (obj instanceof Character) {
                CharacterLiteral newCharacterLiteral = ast.newCharacterLiteral();
                newCharacterLiteral.setCharValue(((Character) obj).charValue());
                return newCharacterLiteral;
            }
            if (obj instanceof ITypeBinding) {
                TypeLiteral newTypeLiteral = ast.newTypeLiteral();
                newTypeLiteral.setType(addImport((ITypeBinding) obj, ast, importRewriteContext, TypeLocation.OTHER));
                return newTypeLiteral;
            }
            if (obj instanceof String) {
                StringLiteral newStringLiteral = ast.newStringLiteral();
                newStringLiteral.setLiteralValue((String) obj);
                return newStringLiteral;
            }
            if (obj instanceof IVariableBinding) {
                IVariableBinding iVariableBinding = (IVariableBinding) obj;
                FieldAccess newFieldAccess = ast.newFieldAccess();
                newFieldAccess.setName(ast.newSimpleName(iVariableBinding.getName()));
                Type addImport = addImport(iVariableBinding.getType(), ast, importRewriteContext, TypeLocation.OTHER);
                if (addImport instanceof SimpleType) {
                    SimpleType simpleType = (SimpleType) addImport;
                    newName = simpleType.getName();
                    simpleType.setName(ast.newSimpleName("a"));
                } else {
                    newName = ast.newName("invalid");
                }
                newFieldAccess.setExpression(newName);
                return newFieldAccess;
            }
            if (obj instanceof IAnnotationBinding) {
                return addAnnotation((IAnnotationBinding) obj, ast, importRewriteContext);
            }
            if (!(obj instanceof Object[])) {
                return null;
            }
            Object[] objArr = (Object[]) obj;
            if (objArr.length == 1) {
                return addAnnotation(ast, objArr[0], importRewriteContext);
            }
            ArrayInitializer newArrayInitializer = ast.newArrayInitializer();
            List expressions = newArrayInitializer.expressions();
            for (Object obj2 : objArr) {
                expressions.add(addAnnotation(ast, obj2, importRewriteContext));
            }
            return newArrayInitializer;
        }
        return ast.newNumberLiteral(obj.toString());
    }

    public Type addImport(ITypeBinding iTypeBinding, AST ast) {
        return addImport(iTypeBinding, ast, this.defaultContext, TypeLocation.UNKNOWN);
    }

    public Type addImport(ITypeBinding iTypeBinding, AST ast, ImportRewriteContext importRewriteContext) {
        return addImport(iTypeBinding, ast, importRewriteContext, TypeLocation.UNKNOWN);
    }

    public Type addImport(ITypeBinding iTypeBinding, AST ast, ImportRewriteContext importRewriteContext, TypeLocation typeLocation) {
        ITypeBinding checkAnnotationAndGenerics = checkAnnotationAndGenerics(iTypeBinding);
        Type internalAddImport = internalAddImport(checkAnnotationAndGenerics == null ? iTypeBinding : checkAnnotationAndGenerics, ast, importRewriteContext, null, true, (checkAnnotationAndGenerics == null || checkAnnotationAndGenerics.equals(iTypeBinding)) ? typeLocation : TypeLocation.OTHER);
        return (checkAnnotationAndGenerics == null || checkAnnotationAndGenerics.equals(iTypeBinding)) ? internalAddImport : buildType(iTypeBinding, checkAnnotationAndGenerics, ast, importRewriteContext, internalAddImport, typeLocation);
    }

    public String addImport(String str, ImportRewriteContext importRewriteContext) {
        int indexOf = str.indexOf(60);
        if (indexOf != -1) {
            return String.valueOf(internalAddImport(str.substring(0, indexOf), importRewriteContext)) + str.substring(indexOf);
        }
        int indexOf2 = str.indexOf(91);
        if (indexOf2 != -1) {
            return String.valueOf(internalAddImport(str.substring(0, indexOf2), importRewriteContext)) + str.substring(indexOf2);
        }
        return internalAddImport(str, importRewriteContext);
    }

    public String addImport(String str) {
        return addImport(str, this.defaultContext);
    }
}
