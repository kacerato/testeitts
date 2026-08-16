.class public Lorg/eclipse/jdt/core/dom/PrimitiveType;
.super Lorg/eclipse/jdt/core/dom/AnnotatableType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;
    }
.end annotation


# static fields
.field public static final ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final BOOLEAN:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final BYTE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final CHAR:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field private static final CODES:Ljava/util/Map;

.field public static final DOUBLE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final FLOAT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final LONG:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

.field public static final SHORT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

.field public static final VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;


# instance fields
.field private typeCode:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v2, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "char"

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CHAR:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v3, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "boolean"

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BOOLEAN:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v4, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "short"

    invoke-direct {v4, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/PrimitiveType;->SHORT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v5, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "long"

    invoke-direct {v5, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/PrimitiveType;->LONG:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v6, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "float"

    invoke-direct {v6, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/PrimitiveType;->FLOAT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v7, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v1, "double"

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/PrimitiveType;->DOUBLE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v1, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v8, "byte"

    invoke-direct {v1, v8}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BYTE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v8, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const-string v9, "void"

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    new-instance v9, Ljava/util/HashMap;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CODES:Ljava/util/Map;

    filled-new-array/range {v0 .. v8}, [Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-class v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->internalAnnotationsPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-string v3, "primitiveTypeCode"

    const-class v4, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CODES:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    sget-object p1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->typeCode:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method

.method public static toCode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CODES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/PrimitiveType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/PrimitiveType;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->typeCode:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    return-object v0
.end method

.method public final internalAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->typeCode:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/PrimitiveType;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
