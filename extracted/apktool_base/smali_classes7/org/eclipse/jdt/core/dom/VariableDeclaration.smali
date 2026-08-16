.class public abstract Lorg/eclipse/jdt/core/dom/VariableDeclaration;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# instance fields
.field extraArrayDimensions:I

.field extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

.field variableName:Lorg/eclipse/jdt/core/dom/SimpleName;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraArrayDimensions:I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static final internalExtraDimensions2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Dimension;

    const/4 v2, 0x1

    const-string v3, "extraDimensions2"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static final internalExtraDimensionsPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, "extraDimensions"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static final internalInitializerPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "initializer"

    const-class v3, Lorg/eclipse/jdt/core/dom/Expression;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method

.method public static final internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "name"

    const-class v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method


# virtual methods
.method public extraDimensions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public getExtraDimensions()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraArrayDimensions:I

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->size()I

    move-result v0

    return v0
.end method

.method public final getExtraDimensions2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalExtraDimensions2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExtraDimensionsProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalExtraDimensionsProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Lorg/eclipse/jdt/core/dom/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

    return-object v0
.end method

.method public final getInitializerProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalInitializerProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object v0
.end method

.method public final getNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract internalExtraDimensions2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.end method

.method public abstract internalExtraDimensionsProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
.end method

.method public abstract internalInitializerProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public abstract internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public final internalSetExtraDimensions(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2_3_4()V

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalExtraDimensionsProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraArrayDimensions:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveVariable(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    return-object v0
.end method

.method public setExtraDimensions(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalSetExtraDimensions(I)V

    return-void
.end method

.method public setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalInitializerProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
