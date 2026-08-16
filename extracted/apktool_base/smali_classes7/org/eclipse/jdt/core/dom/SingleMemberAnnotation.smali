.class public final Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;
.super Lorg/eclipse/jdt/core/dom/Annotation;
.source "SourceFile"


# static fields
.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field public static final TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;


# instance fields
.field private value:Lorg/eclipse/jdt/core/dom/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->internalTypeNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v8, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    const-string v4, "value"

    const-class v5, Lorg/eclipse/jdt/core/dom/Expression;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Annotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x4f

    return v0
.end method

.method public getValue()Lorg/eclipse/jdt/core/dom/Expression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    return-object v0
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/Annotation;->setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->setValue(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public setValue(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->value:Lorg/eclipse/jdt/core/dom/Expression;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
