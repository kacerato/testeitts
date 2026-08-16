.class public Lorg/eclipse/jdt/core/dom/MethodRefParameter;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# static fields
.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;


# instance fields
.field private optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

.field private type:Lorg/eclipse/jdt/core/dom/Type;

.field private variableArity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-class v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    const-string v2, "type"

    const-class v3, Lorg/eclipse/jdt/core/dom/Type;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    const-string v4, "varargs"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-class v8, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    const-string v9, "name"

    const-class v10, Lorg/eclipse/jdt/core/dom/SimpleName;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v6, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v6, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->variableArity:Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/MethodRefParameter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/MethodRefParameter;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->isVarargs()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setVarargs(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public getType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public final internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->isVarargs()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setVarargs(Z)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isVarargs()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->variableArity:Z

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setVarargs(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->variableArity:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/MethodRefParameter;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->type:Lorg/eclipse/jdt/core/dom/Type;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->optionalParameterName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->treeSize()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
