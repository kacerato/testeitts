.class public final Lorg/eclipse/jdt/core/dom/Modifier;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IExtendedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;
    }
.end annotation


# static fields
.field public static final ABSTRACT:I = 0x400

.field public static final DEFAULT:I = 0x10000

.field public static final FINAL:I = 0x10

.field public static final KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final NATIVE:I = 0x100

.field public static final NONE:I = 0x0

.field public static final PRIVATE:I = 0x2

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICTFP:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final TRANSIENT:I = 0x80

.field public static final VOLATILE:I = 0x40


# instance fields
.field private modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const/4 v2, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/Modifier;

    const-string v4, "keyword"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/Modifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/Modifier;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    sget-object p1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    return-void
.end method

.method public static isAbstract(I)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDefault(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFinal(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNative(I)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrivate(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isProtected(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPublic(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStatic(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStrictfp(I)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSynchronized(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTransient(I)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVolatile(I)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/Modifier;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/Modifier;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/Modifier;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/Modifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/Modifier;->setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V

    return-object v0
.end method

.method public getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/Modifier;->setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isAbstract()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->DEFAULT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isModifier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNative()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivate()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProtected()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPublic()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStrictfp()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSynchronized()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransient()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVolatile()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Modifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/Modifier;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->memSize()I

    move-result v0

    return v0
.end method
