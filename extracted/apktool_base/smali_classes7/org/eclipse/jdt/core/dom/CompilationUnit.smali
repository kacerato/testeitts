.class public Lorg/eclipse/jdt/core/dom/CompilationUnit;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# static fields
.field private static final EMPTY_MESSAGES:[Lorg/eclipse/jdt/core/dom/Message;

.field private static final EMPTY_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/IProblem;

.field public static final IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

.field public static final TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

.field private imports:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private lineEndTable:[I

.field private messages:[Lorg/eclipse/jdt/core/dom/Message;

.field private module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

.field private optionalCommentList:Ljava/util/List;

.field optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

.field private optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

.field private problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

.field private statementsRecoveryData:Ljava/lang/Object;

.field private typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

.field private types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/dom/Message;

    sput-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->EMPTY_MESSAGES:[Lorg/eclipse/jdt/core/dom/Message;

    new-array v1, v0, [Lorg/eclipse/jdt/core/compiler/IProblem;

    sput-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->EMPTY_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/IProblem;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v2, "imports"

    const-class v3, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    const-class v4, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {v1, v4, v2, v3, v0}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-class v6, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const-string v7, "package"

    const-class v8, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-class v12, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const-string v13, "module"

    const-class v14, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/CompilationUnit;->MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v3, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v5, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    const/4 v6, 0x1

    const-string v7, "types"

    invoke-direct {v3, v4, v7, v5, v6}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    sget-object p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->EMPTY_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/IProblem;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/16 v0, 0x9

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setPackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public findDeclaringNode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->findDeclaringNode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public findDeclaringNode(Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->findDeclaringNode(Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public firstLeadingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->firstLeadingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getColumnNumber(I)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    return p1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    array-length v4, v3

    add-int/lit8 v5, v0, -0x2

    aget v5, v3, v5

    add-int/2addr v5, v2

    add-int/2addr v4, v2

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v2

    aget v0, v3, v0

    :goto_0
    if-le v5, v0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p1, v5

    return p1
.end method

.method public getCommentList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    return-object v0
.end method

.method public getCommentMapper()Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    return-object v0
.end method

.method public getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    return-object v0
.end method

.method public getLineNumber(I)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    if-gez p1, :cond_3

    return v2

    :cond_3
    const/4 v4, 0x0

    aget v5, v0, v4

    if-gt p1, v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v5, v1, -0x1

    aget v0, v0, v5

    if-le p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v0, v4

    if-lt p1, v0, :cond_5

    return v2

    :cond_5
    add-int/2addr v1, v3

    return v1

    :cond_6
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ne v0, v5, :cond_7

    add-int/lit8 v4, v4, 0x2

    return v4

    :cond_7
    sub-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_8

    move v5, v0

    goto :goto_0

    :cond_8
    move v4, v0

    goto :goto_0
.end method

.method public getMessages()[Lorg/eclipse/jdt/core/dom/Message;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->messages:[Lorg/eclipse/jdt/core/dom/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->EMPTY_MESSAGES:[Lorg/eclipse/jdt/core/dom/Message;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->messages:[Lorg/eclipse/jdt/core/dom/Message;

    goto :goto_1

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/core/dom/Message;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->messages:[Lorg/eclipse/jdt/core/dom/Message;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->messages:[Lorg/eclipse/jdt/core/dom/Message;

    new-instance v6, Lorg/eclipse/jdt/core/dom/Message;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Lorg/eclipse/jdt/core/dom/Message;-><init>(Ljava/lang/String;II)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->messages:[Lorg/eclipse/jdt/core/dom/Message;

    return-object v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedBelow9()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    return-object v0
.end method

.method public getPosition(II)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_a

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    array-length v3, v0

    if-nez v3, :cond_4

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr p1, v0

    if-lt p2, p1, :cond_3

    move p2, v1

    :cond_3
    return p2

    :cond_4
    if-ne p1, v2, :cond_6

    const/4 p1, 0x0

    aget p1, v0, p1

    if-le p2, p1, :cond_5

    move p2, v1

    :cond_5
    return p2

    :cond_6
    add-int/2addr v3, v2

    if-le p1, v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v4, p1, -0x2

    aget v4, v0, v4

    add-int/2addr v4, v2

    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_8
    sub-int/2addr p1, v2

    aget p1, v0, p1

    :goto_0
    add-int/2addr v4, p2

    if-le v4, p1, :cond_9

    return v1

    :cond_9
    return v4

    :cond_a
    :goto_1
    return v1
.end method

.method public getProblems()[Lorg/eclipse/jdt/core/compiler/IProblem;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

    return-object v0
.end method

.method public getStatementsRecoveryData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->statementsRecoveryData:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    return-object v0
.end method

.method public imports()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public initCommentMapper(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;-><init>([Lorg/eclipse/jdt/core/dom/Comment;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->initialize(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    return-void
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setPackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public lastTrailingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->commentMapper:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->lastTrailingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public lineNumber(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public memSize()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public recordModifications()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/AST;->recordModifications(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    return-void
.end method

.method public rewrite(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/AST;->rewrite(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1
.end method

.method public setCommentTable([Lorg/eclipse/jdt/core/dom/Comment;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    :goto_1
    return-void

    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    if-lt v3, v1, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setLineEndTable([I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkModifiable()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->lineEndTable:[I

    return-void
.end method

.method public setModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedBelow9()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    sget-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setPackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    sget-object v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->problems:[Lorg/eclipse/jdt/core/compiler/IProblem;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setStatementsRecoveryData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->statementsRecoveryData:Ljava/lang/Object;

    return-void
.end method

.method public setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->module:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->treeSize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalPackageDeclaration:Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->treeSize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Comment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public types()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
