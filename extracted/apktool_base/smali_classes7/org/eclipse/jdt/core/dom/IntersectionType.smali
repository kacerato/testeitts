.class public Lorg/eclipse/jdt/core/dom/IntersectionType;
.super Lorg/eclipse/jdt/core/dom/Type;
.source "SourceFile"


# static fields
.field private static final PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

.field public static final TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Type;

    const/4 v2, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/IntersectionType;

    const-string v4, "types"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/IntersectionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/IntersectionType;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Type;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/IntersectionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/IntersectionType;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/IntersectionType;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/IntersectionType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/IntersectionType;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/IntersectionType;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/IntersectionType;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/IntersectionType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/IntersectionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/IntersectionType;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/IntersectionType;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/IntersectionType;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public types()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/IntersectionType;->types:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
