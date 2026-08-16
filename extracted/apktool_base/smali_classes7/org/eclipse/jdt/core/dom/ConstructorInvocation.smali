.class public Lorg/eclipse/jdt/core/dom/ConstructorInvocation;
.super Lorg/eclipse/jdt/core/dom/Statement;
.source "SourceFile"


# static fields
.field public static final ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Type;

    const/4 v2, 0x0

    const-class v3, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    const-string v4, "typeArguments"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v2, Lorg/eclipse/jdt/core/dom/Expression;

    const/4 v4, 0x1

    const-string v5, "arguments"

    invoke-direct {v1, v3, v5, v2, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Statement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)V

    return-void
.end method

.method public arguments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/Statement;->copyLeadingComment(Lorg/eclipse/jdt/core/dom/Statement;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public resolveConstructorBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveConstructor(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public typeArguments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
