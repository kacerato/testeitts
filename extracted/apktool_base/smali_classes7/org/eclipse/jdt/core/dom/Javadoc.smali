.class public Lorg/eclipse/jdt/core/dom/Javadoc;
.super Lorg/eclipse/jdt/core/dom/Comment;
.source "SourceFile"


# static fields
.field public static final COMMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final MINIMAL_DOC_COMMENT:Ljava/lang/String; = "/** */"

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private comment:Ljava/lang/String;

.field private tags:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Javadoc;

    const-string v2, "comment"

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->COMMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v3, "tags"

    const-class v5, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-direct {v2, v1, v3, v5, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/Javadoc;->TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Comment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const-string p1, "/** */"

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->comment:Ljava/lang/String;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->tags:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/Javadoc;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/Javadoc;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/Javadoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->tags:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/Javadoc;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Javadoc;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Javadoc;->setComment(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->COMMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Javadoc;->getComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/Javadoc;->setComment(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Javadoc;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/Comment;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->comment:Ljava/lang/String;

    const-string v2, "/** */"

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    :goto_0
    move v0, v3

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->COMMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->comment:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/16 v4, 0x3eb

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/Javadoc;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public tags()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->tags:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Javadoc;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/Javadoc;->tags:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
