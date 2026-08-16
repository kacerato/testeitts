.class public final Lorg/eclipse/jdt/core/dom/ModuleModifier;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;
    }
.end annotation


# static fields
.field public static final KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final NONE:I = 0x0

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field public static final STATIC_PHASE:I = 0x40

.field public static final TRANSITIVE:I = 0x80


# instance fields
.field private modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    const/4 v2, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    const-string v4, "keyword"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    sget-object p1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedBelow9()V

    return-void
.end method

.method public static isStatic(I)Z
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

.method public static isTransitive(I)Z
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

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/ModuleModifier;)Z

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/ModuleModifier;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->setKeyword(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)V

    return-object v0
.end method

.method public getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x63

    return v0
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->setKeyword(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isStatic()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitive()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->TRANSITIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

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

.method public setKeyword(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->modifierKeyword:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/ModuleModifier;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->memSize()I

    move-result v0

    return v0
.end method
