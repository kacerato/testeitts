.class Lorg/eclipse/jdt/core/dom/DocCommentParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;
.source "SourceFile"


# instance fields
.field private ast:Lorg/eclipse/jdt/core/dom/AST;

.field private docComment:Lorg/eclipse/jdt/core/dom/Javadoc;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const-wide/32 p1, 0x330000

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x310000

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    goto :goto_0

    :cond_1
    const-wide/32 p1, 0x2f0000

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    :goto_0
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    const/16 p1, 0x102

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    return-void
.end method

.method private setComment(II)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    invoke-direct {v1, v2, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Javadoc;->setComment(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newMethodRefParameter()Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    move-result-object v0

    check-cast p4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-lez p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    aget-wide v2, p5, v2

    long-to-int v2, v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-ltz v3, :cond_1

    long-to-int v2, p6

    :cond_1
    array-length v3, p1

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    new-instance v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    ushr-long/2addr p6, v4

    long-to-int p1, p6

    sub-int p6, v2, p1

    add-int/lit8 p6, p6, 0x1

    invoke-virtual {v3, p1, p6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result p1

    const/16 p6, 0x27

    if-ne p1, p6, :cond_3

    check-cast p4, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    goto :goto_0

    :cond_3
    move-object p1, p4

    check-cast p1, Lorg/eclipse/jdt/core/dom/Name;

    iget-object p6, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p6, p1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;

    move-result-object p1

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p4

    invoke-virtual {p1, v1, p4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    move-object p4, p1

    :goto_0
    if-lez p2, :cond_7

    if-nez p3, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget p6, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 p7, 0x4

    const/4 v3, 0x0

    if-gt p6, p7, :cond_5

    :goto_1
    if-lt v3, p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p4

    aget-wide p6, p5, v3

    long-to-int p1, p6

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p4, v3}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;I)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object p4

    add-int/lit8 p1, p2, -0x1

    aget-wide p6, p5, p1

    long-to-int p1, p6

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_2
    if-lt v3, p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newDimension()Lorg/eclipse/jdt/core/dom/Dimension;

    move-result-object p1

    aget-wide p6, p5, v3

    ushr-long v5, p6, v4

    long-to-int v5, v5

    long-to-int p6, p6

    sub-int/2addr p6, v5

    add-int/lit8 p6, p6, 0x1

    invoke-virtual {p1, v5, p6}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 p2, 0x8

    if-le p1, p2, :cond_8

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->setVarargs(Z)V

    :cond_8
    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newMemberRef()Lorg/eclipse/jdt/core/dom/MemberRef;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MemberRef;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v2, v4

    const/16 v2, 0x20

    ushr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v3, v3

    sub-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-nez p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newMethodRef()Lorg/eclipse/jdt/core/dom/MethodRef;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodRef;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v2, v3, v2

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    long-to-int v2, v2

    sub-int v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    if-nez p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodRef;->parameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createTag()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-le v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0, v1, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    aget-object v1, v4, v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/TagElement;

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v7

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    return-void

    :cond_2
    iget-char v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    goto :goto_0
.end method

.method public createTypeReference(I)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aget v0, v0, v1

    new-array v1, v0, [Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v0, :cond_3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->internalNewName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->SHORT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->LONG:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->FLOAT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->DOUBLE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->CHAR:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BYTE:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->BOOLEAN:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v4, v1, v2

    const/16 v1, 0x20

    ushr-long v6, v4, v1

    long-to-int v6, v6

    if-le v0, v3, :cond_2

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/core/dom/Name;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    :goto_2
    if-gt v5, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v7, v1, v2

    long-to-int v1, v7

    sub-int/2addr v1, v6

    add-int/2addr v1, v3

    invoke-virtual {v4, v6, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iput v0, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v8, v7, v5

    ushr-long v10, v8, v1

    long-to-int v7, v10

    long-to-int v8, v8

    iput v0, v4, Lorg/eclipse/jdt/core/dom/Name;->index:I

    move-object v9, v4

    check-cast v9, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v10

    iput v0, v10, Lorg/eclipse/jdt/core/dom/Name;->index:I

    sub-int v11, v8, v7

    add-int/2addr v11, v3

    invoke-virtual {v10, v7, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    sub-int/2addr v8, v6

    add-int/2addr v8, v3

    invoke-virtual {v4, v6, v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    long-to-int v0, v4

    sub-int/2addr v0, v6

    add-int/2addr v0, v3

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :goto_3
    return-object p1

    :cond_3
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    add-int v7, v2, v4

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parse(II)Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    .line 3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnds:[I

    .line 4
    new-instance v0, Lorg/eclipse/jdt/core/dom/Javadoc;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Javadoc;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->firstTagPosition:I

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->commentParse()Z

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->setComment(II)V

    .line 13
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    return-object p1
.end method

.method public parse([I)Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->parse(II)Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p1

    return-object p1
.end method

.method public parseIdentifierTag(Z)Z
    .locals 3

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseIdentifierTag(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public parseReturn()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    const/4 v0, 0x1

    return v0
.end method

.method public parseTag(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenAndConsume()I

    move-result v1

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    const/16 v0, 0x3d

    if-eq v1, v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-lt v0, v7, :cond_1

    goto :goto_3

    :cond_1
    array-length v0, v2

    iget-char v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_3

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_4

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_4

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_4

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_4

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    if-eq v6, v3, :cond_4

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenAndConsume()I

    move-result v1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v6

    array-length v7, v6

    add-int/2addr v7, v0

    new-array v7, v7, [C

    invoke-static {v2, v4, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v6

    invoke-static {v6, v4, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [C

    invoke-static {v2, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    aput-char v2, v6, v0

    move-object v2, v6

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1

    :cond_4
    :goto_3
    :pswitch_0
    array-length v0, v2

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    add-int/2addr v6, v5

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    array-length p1, v2

    if-nez p1, :cond_5

    return v4

    :cond_5
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/16 p1, 0x11

    const/16 v6, 0x64

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x16

    if-eq v1, p1, :cond_7

    const/16 p1, 0x30

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x43

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x78

    if-eq v1, p1, :cond_6

    const/16 p1, 0x7b

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x46

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x47

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x55

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x56

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x7f

    if-eq v1, p1, :cond_1d

    const/16 p1, 0x80

    if-eq v1, p1, :cond_1d

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    goto/16 :goto_8

    :pswitch_1
    const/4 p1, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->parseReturn()Z

    move-result v5

    goto/16 :goto_8

    :cond_6
    const/4 p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseThrows()Z

    move-result v5

    goto/16 :goto_8

    :cond_7
    aget-char p1, v2, v4

    const/16 v1, 0x69

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_14

    const/16 v1, 0x70

    if-eq p1, v1, :cond_12

    const/16 v1, 0x73

    if-eq p1, v1, :cond_f

    const/16 v1, 0x76

    if-eq p1, v1, :cond_c

    packed-switch p1, :pswitch_data_7

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :pswitch_2
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION_LENGTH:I

    if-ne v0, p1, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseThrows()Z

    move-result v5

    goto/16 :goto_8

    :cond_8
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :pswitch_3
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED_LENGTH:I

    if-ne v0, p1, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_9

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto :goto_4

    :cond_9
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :pswitch_4
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY_LENGTH:I

    if-ne v0, p1, :cond_a

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xb

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->parseIdentifierTag(Z)Z

    move-result v5

    goto/16 :goto_8

    :cond_a
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE_LENGTH:I

    if-ne v0, p1, :cond_b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x12

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :cond_b
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :cond_c
    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long p1, v7, v9

    if-ltz p1, :cond_e

    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE_LENGTH:I

    if-ne v0, p1, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xa

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v5

    goto/16 :goto_8

    :cond_d
    :goto_5
    move v5, v4

    goto/16 :goto_8

    :cond_e
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :cond_f
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE_LENGTH:I

    if-ne v0, p1, :cond_11

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v5

    goto/16 :goto_8

    :cond_11
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :cond_12
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM_LENGTH:I

    if-ne v0, p1, :cond_13

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseParam()Z

    move-result v5

    goto/16 :goto_8

    :cond_13
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto/16 :goto_8

    :cond_14
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK_LENGTH:I

    const/16 v1, 0x13

    if-ne v0, p1, :cond_15

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto :goto_6

    :cond_15
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN_LENGTH:I

    if-ne v0, p1, :cond_16

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x8

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto :goto_6

    :cond_16
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL_LENGTH:I

    if-ne v0, p1, :cond_17

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_17

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    :cond_17
    :goto_6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-eqz p1, :cond_18

    if-eq p1, v1, :cond_18

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v5

    goto :goto_8

    :cond_18
    if-nez p1, :cond_19

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    :cond_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto :goto_8

    :cond_1a
    sget p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC_LENGTH:I

    if-ne v0, p1, :cond_1c

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz p1, :cond_1b

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    int-to-long v0, p1

    shl-long/2addr v0, v3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->recordInheritedPosition(J)V

    :cond_1b
    const/16 p1, 0x9

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto :goto_7

    :cond_1c
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    :goto_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    goto :goto_8

    :cond_1d
    :pswitch_5
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DocCommentParser;->createTag()V

    :goto_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x26
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x49
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x63
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x63
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public pushParamName(Z)Z
    .locals 12

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v2, v1, p1

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    long-to-int v4, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    sub-int v3, v2, v4

    const/4 v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v3

    const-string v4, "@param"

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newTextElement()Lorg/eclipse/jdt/core/dom/TextElement;

    move-result-object p1

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/core/dom/TextElement;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v8, v2, v8

    ushr-long v10, v8, v1

    long-to-int v2, v10

    and-long/2addr v8, v5

    long-to-int v4, v8

    sub-int/2addr v4, v2

    add-int/2addr v4, v7

    invoke-virtual {p1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newTextElement()Lorg/eclipse/jdt/core/dom/TextElement;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/TextElement;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v8, v0, v4

    ushr-long v0, v8, v1

    long-to-int v0, v0

    and-long v1, v8, v5

    long-to-int v1, v1

    sub-int v2, v1, v0

    add-int/2addr v2, v7

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v7

    invoke-virtual {v3, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, v7

    invoke-virtual {v3, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v3, v7}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    return v7
.end method

.method public pushSeeRef(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v0

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x1

    sub-int/2addr v1, p1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    sub-int v3, v1, v2

    add-int/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "@value"

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "@linkplain"

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "@link"

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    aget-object v2, v2, v3

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    goto :goto_2

    :cond_4
    const-string v2, "@see"

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    :goto_2
    return p1
.end method

.method public pushText(II)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newTextElement()Lorg/eclipse/jdt/core/dom/TextElement;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    sub-int v3, p2, p1

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TextElement;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    const/4 v2, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    aget-object p1, p1, v1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v3

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v3

    const/16 v5, 0x41

    if-ne v3, v5, :cond_2

    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    return-void
.end method

.method public pushThrowName(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "@exception"

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "@throws"

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TagElement;->setTagName(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    return v3
.end method

.method public refreshInlineTagPosition(I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/TagElement;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "javadoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDocComment()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DocCommentParser;->docComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
