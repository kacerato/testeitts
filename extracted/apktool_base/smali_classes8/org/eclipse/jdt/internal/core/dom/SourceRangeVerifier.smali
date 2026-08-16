.class public Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_THROW:Z = false


# instance fields
.field private bugs:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    return-void
.end method

.method private checkChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x9

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x9

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v5, v4

    const-string v6, " ["

    const-string v7, "   "

    const-string v8, "- parent ["

    const/16 v9, 0xa

    const-string v10, "] "

    const-string v11, ", "

    if-eqz p2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v12

    sget-object v13, Lorg/eclipse/jdt/core/dom/ArrayCreation;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne v12, v13, :cond_1

    return v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v12

    add-int/2addr v12, v2

    if-ge v4, v12, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v14, "   previous ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v12, v0, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->bugs:Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-gt v1, v4, :cond_3

    if-le v5, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->bugs:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x1

    return v1

    :cond_5
    :goto_0
    return v2
.end method


# virtual methods
.method public preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->structuralPropertiesForType()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v1, v4}, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->checkChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_2

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, p1, v1, v6}, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->checkChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v5, v5, 0x1

    move-object v1, v6

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public process(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->bugs:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->bugs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
