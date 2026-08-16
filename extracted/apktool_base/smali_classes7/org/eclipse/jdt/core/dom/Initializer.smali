.class public Lorg/eclipse/jdt/core/dom/Initializer;
.super Lorg/eclipse/jdt/core/dom/BodyDeclaration;
.source "SourceFile"


# static fields
.field public static final BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;


# instance fields
.field private body:Lorg/eclipse/jdt/core/dom/Block;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lorg/eclipse/jdt/core/dom/Initializer;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalJavadocPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/Initializer;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiersPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiers2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v10, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-class v5, Lorg/eclipse/jdt/core/dom/Initializer;

    const-string v6, "body"

    const-class v7, Lorg/eclipse/jdt/core/dom/Block;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/Initializer;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/Initializer;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/Initializer;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/Initializer;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/Initializer;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/Initializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    return-object v0
.end method

.method public getBody()Lorg/eclipse/jdt/core/dom/Block;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/Block;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    move-result p1

    return p1
.end method

.method public final internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiersProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    return-object v0
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Initializer;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public setBody(Lorg/eclipse/jdt/core/dom/Block;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/Initializer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Initializer;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Javadoc;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/Initializer;->body:Lorg/eclipse/jdt/core/dom/Block;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Block;->treeSize()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
