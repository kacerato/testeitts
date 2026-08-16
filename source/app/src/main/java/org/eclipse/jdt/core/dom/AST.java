package org.eclipse.jdt.core.dom;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public final class AST {
    private static final Class[] AST_CLASS = {AST.class};
    public static final int JLS10 = 10;
    static final int JLS10_INTERNAL = 10;
    public static final int JLS11 = 11;
    static final int JLS11_INTERNAL = 11;
    public static final int JLS12 = 12;
    static final int JLS12_INTERNAL = 12;
    public static final int JLS2 = 2;
    static final int JLS2_INTERNAL = 2;
    public static final int JLS3 = 3;
    static final int JLS3_INTERNAL = 3;
    public static final int JLS4 = 4;
    static final int JLS4_INTERNAL = 4;
    public static final int JLS8 = 8;
    static final int JLS8_INTERNAL = 8;
    public static final int JLS9 = 9;
    static final int JLS9_INTERNAL = 9;
    static final int RESOLVED_BINDINGS = Integer.MIN_VALUE;
    private final Object[] THIS_AST;
    int apiLevel;
    private int bits;
    private int defaultNodeFlag;
    private int disableEvents;
    private NodeEventHandler eventHandler;
    private final Object internalASTLock;
    private long modificationCount;
    private long originalModificationCount;
    private BindingResolver resolver;
    InternalASTRewrite rewriter;
    Scanner scanner;

    public AST() {
        this(JavaCore.getDefaultOptions());
    }

    public static CompilationUnit convertCompilationUnit(int i10, CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr, Map map, boolean z10, org.eclipse.jdt.internal.core.CompilationUnit compilationUnit, int i11, IProgressMonitor iProgressMonitor) {
        return null;
    }

    public static AST newAST(int i10) {
        return new AST(i10);
    }

    public static CompilationUnit parseCompilationUnit(char[] cArr) {
        if (cArr != null) {
            ASTParser newParser = ASTParser.newParser(2);
            newParser.setSource(cArr);
            return (CompilationUnit) newParser.createAST(null);
        }
        throw new IllegalArgumentException();
    }

    private void setArrayComponentType(ArrayType arrayType, Type type) {
        arrayType.setComponentType(type);
    }

    public int apiLevel() {
        return this.apiLevel;
    }

    public ASTNode createInstance(Class cls) {
        if (cls != null) {
            try {
                return (ASTNode) cls.getDeclaredConstructor(AST_CLASS).newInstance(this.THIS_AST);
            } catch (IllegalAccessException e10) {
                throw new IllegalArgumentException(e10);
            } catch (InstantiationException e11) {
                throw new IllegalArgumentException(e11);
            } catch (NoSuchMethodException e12) {
                throw new IllegalArgumentException(e12);
            } catch (InvocationTargetException e13) {
                throw new IllegalArgumentException(e13.getCause());
            }
        }
        throw new IllegalArgumentException();
    }

    public final void disableEvents() {
        synchronized (this.internalASTLock) {
            this.disableEvents++;
        }
    }

    public BindingResolver getBindingResolver() {
        return this.resolver;
    }

    public int getDefaultNodeFlag() {
        return this.defaultNodeFlag;
    }

    public NodeEventHandler getEventHandler() {
        return this.eventHandler;
    }

    public boolean hasBindingsRecovery() {
        return (this.bits & 4) != 0;
    }

    public boolean hasResolvedBindings() {
        return (this.bits & Integer.MIN_VALUE) != 0;
    }

    public boolean hasStatementsRecovery() {
        return (this.bits & 2) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Name internalNewName(String[] strArr) {
        int length = strArr.length;
        if (length == 0) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName = new SimpleName(this);
        simpleName.internalSetIdentifier(strArr[0]);
        int i10 = 1;
        QualifiedName qualifiedName = simpleName;
        while (i10 < length) {
            SimpleName simpleName2 = new SimpleName(this);
            simpleName2.internalSetIdentifier(strArr[i10]);
            i10++;
            qualifiedName = newQualifiedName(qualifiedName, simpleName2);
        }
        return qualifiedName;
    }

    public long modificationCount() {
        return this.modificationCount;
    }

    public void modifying() {
        if (this.disableEvents > 0) {
            return;
        }
        this.modificationCount++;
    }

    public AnnotationTypeDeclaration newAnnotationTypeDeclaration() {
        return new AnnotationTypeDeclaration(this);
    }

    public AnnotationTypeMemberDeclaration newAnnotationTypeMemberDeclaration() {
        return new AnnotationTypeMemberDeclaration(this);
    }

    public AnonymousClassDeclaration newAnonymousClassDeclaration() {
        return new AnonymousClassDeclaration(this);
    }

    public ArrayAccess newArrayAccess() {
        return new ArrayAccess(this);
    }

    public ArrayCreation newArrayCreation() {
        return new ArrayCreation(this);
    }

    public ArrayInitializer newArrayInitializer() {
        return new ArrayInitializer(this);
    }

    public ArrayType newArrayType(Type type) {
        if (this.apiLevel < 8) {
            ArrayType arrayType = new ArrayType(this);
            setArrayComponentType(arrayType, type);
            return arrayType;
        }
        if (!type.isArrayType()) {
            ArrayType arrayType2 = new ArrayType(this);
            arrayType2.setElementType(type);
            return arrayType2;
        }
        throw new IllegalArgumentException();
    }

    public AssertStatement newAssertStatement() {
        return new AssertStatement(this);
    }

    public Assignment newAssignment() {
        return new Assignment(this);
    }

    public Block newBlock() {
        return new Block(this);
    }

    public BlockComment newBlockComment() {
        return new BlockComment(this);
    }

    public BooleanLiteral newBooleanLiteral(boolean z10) {
        BooleanLiteral booleanLiteral = new BooleanLiteral(this);
        booleanLiteral.setBooleanValue(z10);
        return booleanLiteral;
    }

    public BreakStatement newBreakStatement() {
        return new BreakStatement(this);
    }

    public CastExpression newCastExpression() {
        return new CastExpression(this);
    }

    public CatchClause newCatchClause() {
        return new CatchClause(this);
    }

    public CharacterLiteral newCharacterLiteral() {
        return new CharacterLiteral(this);
    }

    public ClassInstanceCreation newClassInstanceCreation() {
        return new ClassInstanceCreation(this);
    }

    public CompilationUnit newCompilationUnit() {
        return new CompilationUnit(this);
    }

    public ConditionalExpression newConditionalExpression() {
        return new ConditionalExpression(this);
    }

    public ConstructorInvocation newConstructorInvocation() {
        return new ConstructorInvocation(this);
    }

    public ContinueStatement newContinueStatement() {
        return new ContinueStatement(this);
    }

    public CreationReference newCreationReference() {
        return new CreationReference(this);
    }

    public Dimension newDimension() {
        return new Dimension(this);
    }

    public DoStatement newDoStatement() {
        return new DoStatement(this);
    }

    public EmptyStatement newEmptyStatement() {
        return new EmptyStatement(this);
    }

    public EnhancedForStatement newEnhancedForStatement() {
        return new EnhancedForStatement(this);
    }

    public EnumConstantDeclaration newEnumConstantDeclaration() {
        return new EnumConstantDeclaration(this);
    }

    public EnumDeclaration newEnumDeclaration() {
        return new EnumDeclaration(this);
    }

    public ExportsDirective newExportsStatement() {
        return new ExportsDirective(this);
    }

    public ExpressionMethodReference newExpressionMethodReference() {
        return new ExpressionMethodReference(this);
    }

    public ExpressionStatement newExpressionStatement(Expression expression) {
        ExpressionStatement expressionStatement = new ExpressionStatement(this);
        expressionStatement.setExpression(expression);
        return expressionStatement;
    }

    public FieldAccess newFieldAccess() {
        return new FieldAccess(this);
    }

    public FieldDeclaration newFieldDeclaration(VariableDeclarationFragment variableDeclarationFragment) {
        if (variableDeclarationFragment == null) {
            throw new IllegalArgumentException();
        }
        FieldDeclaration fieldDeclaration = new FieldDeclaration(this);
        fieldDeclaration.fragments().add(variableDeclarationFragment);
        return fieldDeclaration;
    }

    public ForStatement newForStatement() {
        return new ForStatement(this);
    }

    public IfStatement newIfStatement() {
        return new IfStatement(this);
    }

    public ImportDeclaration newImportDeclaration() {
        return new ImportDeclaration(this);
    }

    public InfixExpression newInfixExpression() {
        return new InfixExpression(this);
    }

    public Initializer newInitializer() {
        return new Initializer(this);
    }

    public InstanceofExpression newInstanceofExpression() {
        return new InstanceofExpression(this);
    }

    public IntersectionType newIntersectionType() {
        return new IntersectionType(this);
    }

    public Javadoc newJavadoc() {
        return new Javadoc(this);
    }

    public LabeledStatement newLabeledStatement() {
        return new LabeledStatement(this);
    }

    public LambdaExpression newLambdaExpression() {
        return new LambdaExpression(this);
    }

    public LineComment newLineComment() {
        return new LineComment(this);
    }

    public MarkerAnnotation newMarkerAnnotation() {
        return new MarkerAnnotation(this);
    }

    public MemberRef newMemberRef() {
        return new MemberRef(this);
    }

    public MemberValuePair newMemberValuePair() {
        return new MemberValuePair(this);
    }

    public MethodDeclaration newMethodDeclaration() {
        MethodDeclaration methodDeclaration = new MethodDeclaration(this);
        methodDeclaration.setConstructor(false);
        return methodDeclaration;
    }

    public MethodInvocation newMethodInvocation() {
        return new MethodInvocation(this);
    }

    public MethodRef newMethodRef() {
        return new MethodRef(this);
    }

    public MethodRefParameter newMethodRefParameter() {
        return new MethodRefParameter(this);
    }

    public Modifier newModifier(Modifier.ModifierKeyword modifierKeyword) {
        Modifier modifier = new Modifier(this);
        modifier.setKeyword(modifierKeyword);
        return modifier;
    }

    public List newModifiers(int i10) {
        if (this.apiLevel == 2) {
            unsupportedIn2();
        }
        ArrayList arrayList = new ArrayList(3);
        if (Modifier.isPublic(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD));
        }
        if (Modifier.isProtected(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD));
        }
        if (Modifier.isPrivate(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD));
        }
        if (Modifier.isAbstract(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD));
        }
        if (Modifier.isDefault(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.DEFAULT_KEYWORD));
        }
        if (Modifier.isStatic(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.STATIC_KEYWORD));
        }
        if (Modifier.isFinal(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.FINAL_KEYWORD));
        }
        if (Modifier.isSynchronized(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD));
        }
        if (Modifier.isNative(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD));
        }
        if (Modifier.isStrictfp(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD));
        }
        if (Modifier.isTransient(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD));
        }
        if (Modifier.isVolatile(i10)) {
            arrayList.add(newModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD));
        }
        return arrayList;
    }

    public ModuleDeclaration newModuleDeclaration() {
        return new ModuleDeclaration(this);
    }

    public ModuleModifier newModuleModifier(ModuleModifier.ModuleModifierKeyword moduleModifierKeyword) {
        ModuleModifier moduleModifier = new ModuleModifier(this);
        moduleModifier.setKeyword(moduleModifierKeyword);
        return moduleModifier;
    }

    public Name newName(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".", true);
        QualifiedName qualifiedName = null;
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.indexOf(46) >= 0) {
                if (nextToken.length() > 1) {
                    throw new IllegalArgumentException();
                }
                i10--;
                if (i10 < 0) {
                    throw new IllegalArgumentException();
                }
            } else {
                i10++;
                SimpleName newSimpleName = newSimpleName(nextToken);
                qualifiedName = qualifiedName == null ? newSimpleName : newQualifiedName(qualifiedName, newSimpleName);
            }
        }
        if (i10 == 1) {
            return qualifiedName;
        }
        throw new IllegalArgumentException();
    }

    public NameQualifiedType newNameQualifiedType(Name name, SimpleName simpleName) {
        NameQualifiedType nameQualifiedType = new NameQualifiedType(this);
        nameQualifiedType.setQualifier(name);
        nameQualifiedType.setName(simpleName);
        return nameQualifiedType;
    }

    public NormalAnnotation newNormalAnnotation() {
        return new NormalAnnotation(this);
    }

    public NullLiteral newNullLiteral() {
        return new NullLiteral(this);
    }

    public NumberLiteral newNumberLiteral() {
        return new NumberLiteral(this);
    }

    public OpensDirective newOpensDirective() {
        return new OpensDirective(this);
    }

    public PackageDeclaration newPackageDeclaration() {
        return new PackageDeclaration(this);
    }

    public ParameterizedType newParameterizedType(Type type) {
        ParameterizedType parameterizedType = new ParameterizedType(this);
        parameterizedType.setType(type);
        return parameterizedType;
    }

    public ParenthesizedExpression newParenthesizedExpression() {
        return new ParenthesizedExpression(this);
    }

    public PostfixExpression newPostfixExpression() {
        return new PostfixExpression(this);
    }

    public PrefixExpression newPrefixExpression() {
        return new PrefixExpression(this);
    }

    public PrimitiveType newPrimitiveType(PrimitiveType.Code code) {
        PrimitiveType primitiveType = new PrimitiveType(this);
        primitiveType.setPrimitiveTypeCode(code);
        return primitiveType;
    }

    public ProvidesDirective newProvidesDirective() {
        return new ProvidesDirective(this);
    }

    public QualifiedName newQualifiedName(Name name, SimpleName simpleName) {
        QualifiedName qualifiedName = new QualifiedName(this);
        qualifiedName.setQualifier(name);
        qualifiedName.setName(simpleName);
        return qualifiedName;
    }

    public QualifiedType newQualifiedType(Type type, SimpleName simpleName) {
        QualifiedType qualifiedType = new QualifiedType(this);
        qualifiedType.setQualifier(type);
        qualifiedType.setName(simpleName);
        return qualifiedType;
    }

    public RequiresDirective newRequiresDirective() {
        return new RequiresDirective(this);
    }

    public ReturnStatement newReturnStatement() {
        return new ReturnStatement(this);
    }

    public SimpleName newSimpleName(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName = new SimpleName(this);
        simpleName.setIdentifier(str);
        return simpleName;
    }

    public SimpleType newSimpleType(Name name) {
        SimpleType simpleType = new SimpleType(this);
        simpleType.setName(name);
        return simpleType;
    }

    public SingleMemberAnnotation newSingleMemberAnnotation() {
        return new SingleMemberAnnotation(this);
    }

    public SingleVariableDeclaration newSingleVariableDeclaration() {
        return new SingleVariableDeclaration(this);
    }

    public StringLiteral newStringLiteral() {
        return new StringLiteral(this);
    }

    public SuperConstructorInvocation newSuperConstructorInvocation() {
        return new SuperConstructorInvocation(this);
    }

    public SuperFieldAccess newSuperFieldAccess() {
        return new SuperFieldAccess(this);
    }

    public SuperMethodInvocation newSuperMethodInvocation() {
        return new SuperMethodInvocation(this);
    }

    public SuperMethodReference newSuperMethodReference() {
        return new SuperMethodReference(this);
    }

    public SwitchCase newSwitchCase() {
        return new SwitchCase(this);
    }

    public SwitchExpression newSwitchExpression() {
        return new SwitchExpression(this);
    }

    public SwitchStatement newSwitchStatement() {
        return new SwitchStatement(this);
    }

    public SynchronizedStatement newSynchronizedStatement() {
        return new SynchronizedStatement(this);
    }

    public TagElement newTagElement() {
        return new TagElement(this);
    }

    public TextElement newTextElement() {
        return new TextElement(this);
    }

    public ThisExpression newThisExpression() {
        return new ThisExpression(this);
    }

    public ThrowStatement newThrowStatement() {
        return new ThrowStatement(this);
    }

    public TryStatement newTryStatement() {
        return new TryStatement(this);
    }

    public TypeDeclaration newTypeDeclaration() {
        TypeDeclaration typeDeclaration = new TypeDeclaration(this);
        typeDeclaration.setInterface(false);
        return typeDeclaration;
    }

    public TypeDeclarationStatement newTypeDeclarationStatement(AbstractTypeDeclaration abstractTypeDeclaration) {
        TypeDeclarationStatement typeDeclarationStatement = new TypeDeclarationStatement(this);
        if (this.apiLevel == 2) {
            typeDeclarationStatement.internalSetTypeDeclaration((TypeDeclaration) abstractTypeDeclaration);
        }
        if (this.apiLevel >= 3) {
            typeDeclarationStatement.setDeclaration(abstractTypeDeclaration);
        }
        return typeDeclarationStatement;
    }

    public TypeLiteral newTypeLiteral() {
        return new TypeLiteral(this);
    }

    public TypeMethodReference newTypeMethodReference() {
        return new TypeMethodReference(this);
    }

    public TypeParameter newTypeParameter() {
        return new TypeParameter(this);
    }

    public UnionType newUnionType() {
        return new UnionType(this);
    }

    public UsesDirective newUsesDirective() {
        return new UsesDirective(this);
    }

    public VariableDeclarationExpression newVariableDeclarationExpression(VariableDeclarationFragment variableDeclarationFragment) {
        if (variableDeclarationFragment == null) {
            throw new IllegalArgumentException();
        }
        VariableDeclarationExpression variableDeclarationExpression = new VariableDeclarationExpression(this);
        variableDeclarationExpression.fragments().add(variableDeclarationFragment);
        return variableDeclarationExpression;
    }

    public VariableDeclarationFragment newVariableDeclarationFragment() {
        return new VariableDeclarationFragment(this);
    }

    public VariableDeclarationStatement newVariableDeclarationStatement(VariableDeclarationFragment variableDeclarationFragment) {
        if (variableDeclarationFragment == null) {
            throw new IllegalArgumentException();
        }
        VariableDeclarationStatement variableDeclarationStatement = new VariableDeclarationStatement(this);
        variableDeclarationStatement.fragments().add(variableDeclarationFragment);
        return variableDeclarationStatement;
    }

    public WhileStatement newWhileStatement() {
        return new WhileStatement(this);
    }

    public WildcardType newWildcardType() {
        return new WildcardType(this);
    }

    public void postAddChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.postAddChildEvent(aSTNode, aSTNode2, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void postCloneNodeEvent(ASTNode aSTNode, ASTNode aSTNode2) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.postCloneNodeEvent(aSTNode, aSTNode2);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void postRemoveChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.postRemoveChildEvent(aSTNode, aSTNode2, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void postReplaceChildEvent(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.postReplaceChildEvent(aSTNode, aSTNode2, aSTNode3, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void postValueChangeEvent(ASTNode aSTNode, SimplePropertyDescriptor simplePropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.postValueChangeEvent(aSTNode, simplePropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preAddChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.preAddChildEvent(aSTNode, aSTNode2, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preCloneNodeEvent(ASTNode aSTNode) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.preCloneNodeEvent(aSTNode);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preRemoveChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.preRemoveChildEvent(aSTNode, aSTNode2, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preReplaceChildEvent(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.preReplaceChildEvent(aSTNode, aSTNode2, aSTNode3, structuralPropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void preValueChangeEvent(ASTNode aSTNode, SimplePropertyDescriptor simplePropertyDescriptor) {
        synchronized (this.internalASTLock) {
            try {
                if (this.disableEvents > 0) {
                    return;
                }
                disableEvents();
                try {
                    this.eventHandler.preValueChangeEvent(aSTNode, simplePropertyDescriptor);
                } finally {
                    reenableEvents();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void recordModifications(CompilationUnit compilationUnit) {
        if (this.modificationCount != this.originalModificationCount) {
            throw new IllegalArgumentException("AST is already modified");
        }
        if (this.rewriter != null) {
            throw new IllegalArgumentException("AST modifications are already recorded");
        }
        if ((compilationUnit.getFlags() & 4) != 0) {
            throw new IllegalArgumentException("Root node is unmodifiable");
        }
        if (compilationUnit.getAST() != this) {
            throw new IllegalArgumentException("Root node is not owned by this ast");
        }
        InternalASTRewrite internalASTRewrite = new InternalASTRewrite(compilationUnit);
        this.rewriter = internalASTRewrite;
        setEventHandler(internalASTRewrite);
    }

    public final void reenableEvents() {
        synchronized (this.internalASTLock) {
            this.disableEvents--;
        }
    }

    public ITypeBinding resolveWellKnownType(String str) {
        if (str == null) {
            return null;
        }
        return getBindingResolver().resolveWellKnownType(str);
    }

    public TextEdit rewrite(IDocument iDocument, Map map) {
        if (iDocument == null) {
            throw new IllegalArgumentException();
        }
        InternalASTRewrite internalASTRewrite = this.rewriter;
        if (internalASTRewrite != null) {
            return internalASTRewrite.rewriteAST(iDocument, map);
        }
        throw new IllegalStateException("Modifications record is not enabled");
    }

    public void setBindingResolver(BindingResolver bindingResolver) {
        if (bindingResolver == null) {
            throw new IllegalArgumentException();
        }
        this.resolver = bindingResolver;
    }

    public void setDefaultNodeFlag(int i10) {
        this.defaultNodeFlag = i10;
    }

    public void setEventHandler(NodeEventHandler nodeEventHandler) {
        if (this.eventHandler == null) {
            throw new IllegalArgumentException();
        }
        this.eventHandler = nodeEventHandler;
    }

    public void setFlag(int i10) {
        this.bits = i10 | this.bits;
    }

    public void setOriginalModificationCount(long j10) {
        this.originalModificationCount = j10;
    }

    public void supportedOnlyIn2() {
        if (this.apiLevel != 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }

    public void unsupportedIn2() {
        if (this.apiLevel == 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }

    private AST(int i10) {
        this.defaultNodeFlag = 0;
        this.disableEvents = 0;
        this.eventHandler = new NodeEventHandler();
        this.internalASTLock = new Object();
        this.modificationCount = 0L;
        this.originalModificationCount = 0L;
        this.resolver = new BindingResolver();
        this.THIS_AST = new Object[]{this};
        if (i10 == 2 || i10 == 3) {
            this.apiLevel = i10;
            this.scanner = new Scanner(true, true, false, ClassFileConstants.JDK1_3, ClassFileConstants.JDK1_5, null, null, true);
            return;
        }
        if (i10 != 4) {
            switch (i10) {
                case 8:
                    this.apiLevel = i10;
                    this.scanner = new Scanner(true, true, false, ClassFileConstants.JDK1_8, ClassFileConstants.JDK1_8, null, null, true);
                    return;
                case 9:
                    this.apiLevel = i10;
                    this.scanner = new Scanner(true, true, false, ClassFileConstants.JDK9, ClassFileConstants.JDK9, null, null, true);
                    return;
                case 10:
                    this.apiLevel = i10;
                    this.scanner = new Scanner(true, true, false, ClassFileConstants.JDK10, ClassFileConstants.JDK10, null, null, true);
                    return;
                case 11:
                    this.apiLevel = i10;
                    long complianceLevelForJavaVersion = ClassFileConstants.getComplianceLevelForJavaVersion(55);
                    this.scanner = new Scanner(true, true, false, complianceLevelForJavaVersion, complianceLevelForJavaVersion, null, null, true);
                    return;
                case 12:
                    this.apiLevel = i10;
                    long complianceLevelForJavaVersion2 = ClassFileConstants.getComplianceLevelForJavaVersion(56);
                    this.scanner = new Scanner(true, true, false, complianceLevelForJavaVersion2, complianceLevelForJavaVersion2, null, null, true);
                    return;
                default:
                    throw new IllegalArgumentException("Unsupported JLS level");
            }
        }
        this.apiLevel = i10;
        this.scanner = new Scanner(true, true, false, ClassFileConstants.JDK1_7, ClassFileConstants.JDK1_7, null, null, true);
    }

    public static CompilationUnit convertCompilationUnit(int i10, CompilationUnitDeclaration compilationUnitDeclaration, Map map, boolean z10, org.eclipse.jdt.internal.core.CompilationUnit compilationUnit, int i11, IProgressMonitor iProgressMonitor) {
        BindingResolver bindingResolver;
        ASTConverter aSTConverter = new ASTConverter(map, z10, iProgressMonitor);
        AST newAST = newAST(i10);
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel((String) map.get("org.eclipse.jdt.core.compiler.source"));
        if (versionToJdkLevel == 0) {
            versionToJdkLevel = ClassFileConstants.JDK1_3;
        }
        newAST.scanner.sourceLevel = versionToJdkLevel;
        long versionToJdkLevel2 = CompilerOptions.versionToJdkLevel((String) map.get("org.eclipse.jdt.core.compiler.compliance"));
        if (versionToJdkLevel2 != 0) {
            versionToJdkLevel = versionToJdkLevel2;
        }
        newAST.scanner.complianceLevel = versionToJdkLevel;
        int defaultNodeFlag = newAST.getDefaultNodeFlag();
        newAST.setDefaultNodeFlag(2);
        if (z10) {
            DefaultBindingResolver defaultBindingResolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, compilationUnit.owner, new DefaultBindingResolver.BindingTables(), false, true);
            defaultBindingResolver.isRecoveringBindings = (i11 & 4) != 0;
            newAST.setFlag(Integer.MIN_VALUE);
            bindingResolver = defaultBindingResolver;
        } else {
            bindingResolver = new BindingResolver();
        }
        newAST.setFlag(i11);
        newAST.setBindingResolver(bindingResolver);
        aSTConverter.setAST(newAST);
        CompilationUnit convert = aSTConverter.convert(compilationUnitDeclaration, compilationUnit.getContents());
        convert.setLineEndTable(compilationUnitDeclaration.compilationResult.getLineSeparatorPositions());
        convert.setTypeRoot(compilationUnit.originalFromClone());
        newAST.setDefaultNodeFlag(defaultNodeFlag);
        return convert;
    }

    public NumberLiteral newNumberLiteral(String str) {
        if (str != null) {
            NumberLiteral numberLiteral = new NumberLiteral(this);
            numberLiteral.setToken(str);
            return numberLiteral;
        }
        throw new IllegalArgumentException();
    }

    public static CompilationUnit parseCompilationUnit(char[] cArr, String str, IJavaProject iJavaProject) {
        if (cArr != null) {
            ASTParser newParser = ASTParser.newParser(2);
            newParser.setSource(cArr);
            newParser.setUnitName(str);
            newParser.setProject(iJavaProject);
            newParser.setResolveBindings(iJavaProject != null);
            return (CompilationUnit) newParser.createAST(null);
        }
        throw new IllegalArgumentException();
    }

    public TypeDeclarationStatement newTypeDeclarationStatement(TypeDeclaration typeDeclaration) {
        TypeDeclarationStatement typeDeclarationStatement = new TypeDeclarationStatement(this);
        typeDeclarationStatement.setDeclaration(typeDeclaration);
        return typeDeclarationStatement;
    }

    public ArrayType newArrayType(Type type, int i10) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        if (i10 >= 0 && i10 <= 255) {
            if (this.apiLevel < 8) {
                if (i10 >= 1) {
                    ArrayType arrayType = new ArrayType(this);
                    setArrayComponentType(arrayType, type);
                    for (int i11 = 2; i11 <= i10; i11++) {
                        arrayType = newArrayType(arrayType);
                    }
                    return arrayType;
                }
                throw new IllegalArgumentException();
            }
            if (!type.isArrayType()) {
                ArrayType arrayType2 = new ArrayType(this, 0);
                arrayType2.setElementType(type);
                for (int i12 = 0; i12 < i10; i12++) {
                    arrayType2.dimensions().add(new Dimension(this));
                }
                return arrayType2;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public ASTNode createInstance(int i10) {
        return createInstance(ASTNode.nodeClassForType(i10));
    }

    public Name newName(String[] strArr) {
        int length = strArr.length;
        if (length != 0) {
            Name newSimpleName = newSimpleName(strArr[0]);
            for (int i10 = 1; i10 < length; i10++) {
                newSimpleName = newQualifiedName(newSimpleName, newSimpleName(strArr[i10]));
            }
            return newSimpleName;
        }
        throw new IllegalArgumentException();
    }

    public static CompilationUnit parseCompilationUnit(IClassFile iClassFile, boolean z10) {
        if (iClassFile != null) {
            try {
                ASTParser newParser = ASTParser.newParser(2);
                newParser.setSource(iClassFile);
                newParser.setResolveBindings(z10);
                return (CompilationUnit) newParser.createAST(null);
            } catch (IllegalStateException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        throw new IllegalArgumentException();
    }

    public static CompilationUnit parseCompilationUnit(ICompilationUnit iCompilationUnit, boolean z10) {
        try {
            ASTParser newParser = ASTParser.newParser(2);
            newParser.setSource(iCompilationUnit);
            newParser.setResolveBindings(z10);
            return (CompilationUnit) newParser.createAST(null);
        } catch (IllegalStateException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public AST(Map map) {
        this(2);
        long j10;
        long j11;
        Object obj = map.get("org.eclipse.jdt.core.compiler.source");
        if ("1.4".equals(obj)) {
            j10 = 3145728;
        } else if ("1.5".equals(obj)) {
            j10 = 3211264;
        } else {
            j10 = "1.7".equals(obj) ? 3342336L : 3080192L;
        }
        Object obj2 = map.get("org.eclipse.jdt.core.compiler.compliance");
        if ("1.4".equals(obj2)) {
            j11 = 3145728;
        } else if ("1.5".equals(obj2)) {
            j11 = 3211264;
        } else {
            j11 = "1.7".equals(obj2) ? 3342336L : 3080192L;
        }
        this.scanner = new Scanner(true, true, false, j10, j11, null, null, true);
    }
}
