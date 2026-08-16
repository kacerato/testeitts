.class public final Lorg/eclipse/jdt/core/dom/TagElement;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IDocElement;


# static fields
.field public static final FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field public static final TAG_API_NOTE:Ljava/lang/String; = "@apiNote"

.field public static final TAG_AUTHOR:Ljava/lang/String; = "@author"

.field public static final TAG_CODE:Ljava/lang/String; = "@code"

.field public static final TAG_DEPRECATED:Ljava/lang/String; = "@deprecated"

.field public static final TAG_DOCROOT:Ljava/lang/String; = "@docRoot"

.field public static final TAG_EXCEPTION:Ljava/lang/String; = "@exception"

.field public static final TAG_HIDDEN:Ljava/lang/String; = "@hidden"

.field public static final TAG_IMPL_NOTE:Ljava/lang/String; = "@implNote"

.field public static final TAG_IMPL_SPEC:Ljava/lang/String; = "@implSpec"

.field public static final TAG_INDEX:Ljava/lang/String; = "@index"

.field public static final TAG_INHERITDOC:Ljava/lang/String; = "@inheritDoc"

.field public static final TAG_LINK:Ljava/lang/String; = "@link"

.field public static final TAG_LINKPLAIN:Ljava/lang/String; = "@linkplain"

.field public static final TAG_LITERAL:Ljava/lang/String; = "@literal"

.field public static final TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final TAG_PARAM:Ljava/lang/String; = "@param"

.field public static final TAG_PROVIDES:Ljava/lang/String; = "@provides"

.field public static final TAG_RETURN:Ljava/lang/String; = "@return"

.field public static final TAG_SEE:Ljava/lang/String; = "@see"

.field public static final TAG_SERIAL:Ljava/lang/String; = "@serial"

.field public static final TAG_SERIALDATA:Ljava/lang/String; = "@serialData"

.field public static final TAG_SERIALFIELD:Ljava/lang/String; = "@serialField"

.field public static final TAG_SINCE:Ljava/lang/String; = "@since"

.field public static final TAG_SUMMARY:Ljava/lang/String; = "@summary"

.field public static final TAG_THROWS:Ljava/lang/String; = "@throws"

.field public static final TAG_USES:Ljava/lang/String; = "@uses"

.field public static final TAG_VALUE:Ljava/lang/String; = "@value"

.field public static final TAG_VERSION:Ljava/lang/String; = "@version"


# instance fields
.field private fragments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private optionalTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lorg/eclipse/jdt/core/dom/TagElement;

    const-string v4, "tagName"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v2, Lorg/eclipse/jdt/core/dom/IDocElement;

    const/4 v4, 0x1

    const-string v5, "fragments"

    invoke-direct {v1, v3, v5, v2, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/TagElement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TagElement;->optionalTagName:Ljava/lang/String;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TagElement;->fragments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/TagElement;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/TagElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TagElement;->fragments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/TagElement;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/TagElement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public fragments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TagElement;->fragments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TagElement;->optionalTagName:Ljava/lang/String;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isNested()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/TagElement;

    return v0
.end method

.method public memSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TagElement;->optionalTagName:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    return v0
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TagElement;->optionalTagName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/TagElement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TagElement;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TagElement;->fragments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
