.class public abstract Lorg/eclipse/jdt/core/dom/BodyDeclaration;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# instance fields
.field private modifierFlags:I

.field modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifierFlags:I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static final internalJavadocPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "javadoc"

    const-class v3, Lorg/eclipse/jdt/core/dom/Javadoc;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method

.method public static final internalModifiers2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/IExtendedModifier;

    const/4 v2, 0x1

    const-string v3, "modifiers"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static final internalModifiersPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, "modifiers"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method


# virtual methods
.method public getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    return-object v0
.end method

.method public final getJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifierFlags:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/Modifier;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/core/dom/Modifier;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->toFlagValue()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getModifiersProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public abstract internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.end method

.method public abstract internalModifiersProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
.end method

.method public final internalSetModifiers(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiersProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifierFlags:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public modifiers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setModifiers(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    return-void
.end method
