.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
.source "SourceFile"


# static fields
.field public static final BLOCK_ALL_TAGS_LENGTH:I

.field public static final INLINE_ALL_TAGS_LENGTH:I


# instance fields
.field allPossibleTags:Z

.field completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

.field cursorLocation:I

.field levelTags:[[[C

.field levelTagsLength:[I

.field pushText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->INLINE_TAGS_LENGTH:I

    if-lt v1, v3, :cond_1

    sput v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->INLINE_ALL_TAGS_LENGTH:I

    move v1, v0

    :goto_1
    sget v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS_LENGTH:I

    if-lt v0, v2, :cond_0

    sput v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->BLOCK_ALL_TAGS_LENGTH:I

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS:[[[C

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->INLINE_TAGS:[[[C

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p1, 0x2

    new-array v0, p1, [[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushText:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->allPossibleTags:Z

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const-wide/32 v0, 0x2f0000

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;-><init>(J)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 p1, 0x108

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->initLevelTags()V

    return-void
.end method

.method private getCompletionJavadoc()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;

    return-object v0
.end method

.method private getCompletionParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    return-object v0
.end method

.method private initLevelTags()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->complianceLevel:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x2c

    sget v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS_LENGTH:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    sget v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->BLOCK_ALL_TAGS_LENGTH:I

    new-array v2, v2, [[C

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aput v3, v1, v3

    move v1, v3

    :goto_0
    if-le v1, v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v1, v1, v3

    sget v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->BLOCK_ALL_TAGS_LENGTH:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    aget-object v4, v2, v3

    new-array v5, v1, [[C

    aput-object v5, v2, v3

    invoke-static {v4, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    sget v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->INLINE_ALL_TAGS_LENGTH:I

    new-array v2, v2, [[C

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aput v3, v1, v4

    move v1, v3

    :goto_1
    if-le v1, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v0, v0, v4

    sget v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->INLINE_ALL_TAGS_LENGTH:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    aget-object v2, v1, v4

    new-array v5, v0, [[C

    aput-object v5, v1, v4

    invoke-static {v2, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->INLINE_TAGS:[[[C

    aget-object v2, v2, v1

    array-length v5, v2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    aget-object v6, v6, v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v7, v7, v4

    invoke-static {v2, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS:[[[C

    aget-object v2, v2, v1

    array-length v4, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v6, v6, v3

    invoke-static {v2, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v5, v2, v3

    add-int/2addr v5, v4

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private possibleTags([CZ)[[[C
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [[[C

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    aget-object p2, p2, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v2, v2, v1

    new-array v3, v2, [[C

    aput-object v3, v0, v1

    invoke-static {p2, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    aput-object p2, v0, v1

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    const/4 v2, 0x1

    aget-object p2, p2, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTagsLength:[I

    aget v3, v3, v2

    new-array v4, v3, [[C

    aput-object v4, v0, v2

    invoke-static {p2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_6

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_4

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->levelTags:[[[C

    array-length p2, p2

    move v2, v1

    :goto_1
    if-lt v2, p2, :cond_2

    return-object v0

    :cond_2
    aget-object v3, v0, v2

    array-length v3, v3

    new-array v4, v3, [I

    move v5, v1

    move v6, v5

    :goto_2
    if-lt v5, v3, :cond_4

    new-array v7, v6, [[C

    move v3, v1

    :goto_3
    if-lt v3, v6, :cond_3

    aput-object v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v5, v0, v2

    aget v8, v4, v3

    aget-object v5, v5, v8

    aput-object v5, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    aget-object v7, v0, v2

    aget-object v7, v7, v5

    invoke-static {p1, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    aput v5, v4, v6

    move v6, v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public checkDeprecation(I)Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget v1, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->cursorLocation:I

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iput v1, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v3, v3, p1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v4, v4, p1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gt v3, v1, :cond_1

    if-gt v1, v4, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "COMPLETION in Javadoc:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object v5, v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    aget v0, v0, p1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    iput-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    move-result v6

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    :cond_2
    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :goto_0
    return v6
.end method

.method public commentParse()Z
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->firstTagPosition:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->commentParse()Z

    move-result v0

    return v0
.end method

.method public createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :cond_0
    move-object v1, p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-super/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-gt p2, p4, :cond_1

    if-le p4, p3, :cond_2

    :cond_1
    add-int/lit8 p5, p3, 0x1

    if-ne p2, p5, :cond_3

    if-eq p3, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    :goto_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;->argument:Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz p2, :cond_4

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_2

    :cond_4
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz p2, :cond_5

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_5
    :goto_2
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\tcompletion argument="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_7
    return-object p1
.end method

.method public createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/16 v0, 0x20

    ushr-long v3, v1, v0

    long-to-int v0, v3

    long-to-int v1, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    if-gt v0, v3, :cond_0

    if-le v2, v1, :cond_2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    if-ne v0, v3, :cond_1

    if-eq v1, v2, :cond_2

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    if-eq v0, v2, :cond_2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->getParsedTypeDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v1, p1, v2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;I[C)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tcompletion field="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object p1
.end method

.method public createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v0, v1, v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_0

    if-le v1, v0, :cond_2

    :cond_0
    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_1

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    if-eq v0, v1, :cond_2

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    ushr-long v2, v0, v2

    long-to-int p2, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v2, v1, 0x1

    if-gt p2, v2, :cond_3

    if-gt v1, v0, :cond_3

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz p2, :cond_5

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_5
    :goto_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\tcompletion method="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object p1
.end method

.method public createTypeReference(I)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aget v1, v1, v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    add-int/lit8 v4, v1, -0x1

    sub-int v5, v3, v4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v7, v6, v5

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    aget-wide v10, v6, v3

    long-to-int v3, v10

    iget v6, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v8, v6, 0x1

    if-gt v7, v8, :cond_0

    if-le v6, v3, :cond_1

    :cond_0
    add-int/lit8 v8, v3, 0x1

    if-ne v7, v8, :cond_8

    if-eq v3, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    if-ne v1, v3, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-object v11, v2, v3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v12, v2, v3

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;-><init>([CJII)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto/16 :goto_2

    :cond_2
    if-le v1, v3, :cond_6

    move v2, v5

    :goto_0
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    const/4 v6, 0x0

    if-lt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v7, v3, v2

    ushr-long v10, v7, v9

    long-to-int v3, v10

    long-to-int v7, v7

    iget v8, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-gt v3, v8, :cond_5

    if-gt v8, v7, :cond_5

    if-ne v2, v5, :cond_4

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v11, v3, v5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v12, v3, v5

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;-><init>([CJII)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_1

    :cond_4
    new-array v3, v2, [[C

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    invoke-static {v7, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v2, 0x1

    new-array v8, v7, [J

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    invoke-static {v9, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v18, v9, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object/from16 v16, v7

    move-object/from16 v17, v3

    move-object/from16 v19, v8

    move/from16 v20, v2

    move/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;-><init>([[C[C[JII)V

    iput-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :goto_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-nez v2, :cond_6

    new-array v8, v4, [[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    invoke-static {v2, v5, v8, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v10, v1, [J

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    invoke-static {v2, v5, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-object v9, v2, v3

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;-><init>([[C[C[JII)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tcompletion partial qualified type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object v1

    :cond_8
    :goto_3
    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createTypeReference(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseArguments(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v1, v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-le v0, v1, :cond_0

    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseArguments(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v0, 0x14

    new-array v11, v0, [J

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v12

    move v0, v13

    move v1, v0

    :goto_0
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v3, v4, :cond_17

    :try_start_0
    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v12

    :cond_1
    const/4 v3, 0x1

    if-nez v0, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v13

    :goto_1
    if-eqz v5, :cond_3

    if-nez v1, :cond_17

    goto :goto_2

    :cond_3
    rem-int v6, v1, v0

    if-nez v6, :cond_17

    :goto_2
    const/16 v6, 0x19

    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->getCurrentTokenType()I

    move-result v0

    if-ne v0, v6, :cond_4

    iput-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    invoke-virtual {v8, v9, v12}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->syntaxRecoverEmptyArgumentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object v14, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v15, v14, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/16 v6, 0x20

    if-lt v7, v15, :cond_6

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v1

    int-to-long v2, v0

    shl-long/2addr v2, v6

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    int-to-long v5, v0

    add-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long v6, v2, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v9, v10, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->syntaxRecoverArgumentType(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    iget v14, v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-lt v7, v14, :cond_a

    iget-object v7, v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    instance-of v14, v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    if-eqz v14, :cond_8

    move-object v14, v7

    check-cast v14, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    if-eqz v14, :cond_7

    array-length v14, v14

    if-nez v14, :cond_8

    :cond_7
    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->syntaxRecoverEmptyArgumentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v14, v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    if-eqz v14, :cond_a

    check-cast v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    iget-object v14, v7, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    if-eqz v14, :cond_9

    array-length v14, v14

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    array-length v7, v7

    if-ge v14, v7, :cond_a

    :cond_9
    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->syntaxRecoverEmptyArgumentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    add-int/lit8 v7, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_c

    iget-object v14, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v14

    move/from16 v16, v13

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v12

    if-eq v12, v15, :cond_b

    move-object/from16 v18, v4

    move v3, v13

    move v12, v3

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v12

    const/16 v15, 0x42

    if-ne v12, v15, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    add-int/lit8 v12, v16, 0x1

    move-object/from16 v18, v4

    int-to-long v3, v14

    shl-long/2addr v3, v6

    iget-object v15, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v15

    move/from16 v19, v14

    int-to-long v13, v15

    add-long/2addr v3, v13

    aput-wide v3, v11, v16

    move/from16 v16, v12

    move-object/from16 v4, v18

    move/from16 v14, v19

    const/4 v3, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x6

    goto :goto_3

    :cond_c
    move-object/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_d

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v6

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v3, v12

    const/4 v12, 0x0

    aput-wide v3, v11, v12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :cond_d
    const/4 v12, 0x0

    move v3, v12

    move/from16 v16, v3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v4

    const/16 v13, 0x16

    if-ne v4, v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    if-eqz v5, :cond_e

    const/4 v4, 0x1

    if-ne v7, v4, :cond_17

    goto :goto_5

    :cond_e
    const/4 v4, 0x1

    rem-int/2addr v7, v0

    if-ne v7, v4, :cond_17

    :goto_5
    if-nez v2, :cond_f

    if-eqz v5, :cond_17

    :cond_f
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v4

    int-to-long v13, v4

    shl-long/2addr v13, v6

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v13, v6

    add-int/lit8 v7, v1, 0x2

    :goto_6
    move-wide/from16 v20, v13

    move-object v13, v2

    move v14, v7

    move-wide/from16 v6, v20

    goto :goto_7

    :cond_10
    if-nez v2, :cond_17

    const-wide/16 v13, -0x1

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_11

    add-int/lit8 v0, v14, 0x1

    :goto_8
    move/from16 v17, v0

    goto :goto_9

    :cond_11
    rem-int v1, v14, v0

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_17

    goto :goto_8

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->readToken()I

    move-result v0

    if-nez v13, :cond_12

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_a
    const/16 v2, 0x20

    goto :goto_b

    :cond_12
    move-object v1, v13

    goto :goto_a

    :goto_b
    if-ne v0, v2, :cond_14

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, v18

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    return-object v1

    :cond_13
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    add-int/lit8 v1, v14, 0x1

    move-object v2, v13

    move/from16 v0, v17

    move v13, v12

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x19

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, v18

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    return-object v1

    :cond_15
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, v18

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v9, v10, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->syntaxRecoverArgumentType(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_17
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw v0
.end method

.method public parseParam()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v5, v1

    add-long/2addr v2, v5

    const/4 v5, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseParam()Z

    move-result v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    return v5

    :cond_0
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ltz v6, :cond_7

    const/16 v1, 0x3c

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_3

    if-eq v6, v7, :cond_2

    move-wide v6, v2

    move-object v2, v9

    :cond_1
    move v1, v11

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    iget-object v2, v8, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-eqz v2, :cond_3

    array-length v2, v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushParamName(Z)Z

    move-result v5

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v3, v2, v11

    aget-char v3, v3, v11

    if-ne v3, v1, :cond_4

    move v1, v10

    goto :goto_0

    :cond_4
    move v1, v11

    :goto_0
    aget-object v2, v2, v10

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v6, v3, v10

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v2, v2, v11

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v6, v3, v11

    array-length v3, v2

    if-lez v3, :cond_1

    aget-char v3, v2, v11

    if-ne v3, v1, :cond_1

    move v1, v10

    :goto_1
    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->complianceLevel:J

    aget-char v3, v2, v11

    invoke-static {v12, v13, v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v9, v2

    :cond_6
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v11, v2, v11

    shr-long/2addr v11, v4

    long-to-int v3, v11

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-wide v11, v2, v8

    long-to-int v2, v11

    move v11, v1

    move v1, v2

    move v15, v3

    move-wide v13, v6

    :goto_2
    move-object v12, v9

    goto :goto_3

    :cond_7
    move v15, v1

    move-wide v13, v2

    goto :goto_2

    :goto_3
    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    if-gt v15, v3, :cond_8

    if-le v2, v1, :cond_9

    :cond_8
    add-int/lit8 v3, v1, 0x1

    if-ne v15, v3, :cond_f

    if-eq v1, v2, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-nez v3, :cond_b

    if-eqz v11, :cond_a

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;-><init>([CJII)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_4

    :cond_a
    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    move-object v11, v2

    move/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;-><init>([CJII)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :goto_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tcompletion param="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    instance-of v6, v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    if-eqz v6, :cond_d

    check-cast v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    shr-long v6, v13, v4

    long-to-int v4, v6

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int v6, v13

    if-ge v4, v2, :cond_c

    if-ge v2, v6, :cond_c

    add-int/2addr v2, v10

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_5

    :cond_c
    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_5
    iput v15, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceStart:I

    iput v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceEnd:I

    goto :goto_7

    :cond_d
    instance-of v6, v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    if-eqz v6, :cond_f

    check-cast v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    shr-long v6, v13, v4

    long-to-int v4, v6

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int v6, v13

    if-ge v4, v2, :cond_e

    if-ge v2, v6, :cond_e

    add-int/2addr v2, v10

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_6

    :cond_e
    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_6
    iput v15, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    iput v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceEnd:I

    :cond_f
    :goto_7
    return v5
.end method

.method public parseReference()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz v0, :cond_1

    const/16 v2, 0x40

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    :cond_1
    return v1
.end method

.method public parseTag(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStart:I

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineStarted:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseTag(I)Z

    move-result p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    if-le v2, v3, :cond_2

    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_4

    if-eq v3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v6, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_3

    iget v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_3
    move v6, v3

    int-to-long v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    int-to-long v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v1

    new-array v7, v2, [C

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    const/4 v9, 0x0

    invoke-static {v8, v1, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v7, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->possibleTags([CZ)[[[C

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;

    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->allPossibleTags:Z

    move-object v1, v9

    move-object v2, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;-><init>([CJII[[[CZ)V

    iput-object v9, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_4
    :goto_1
    return p1
.end method

.method public parseThrows()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->pushThrowName(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public pushParamName(Z)Z
    .locals 4

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->pushParamName(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v2, v1, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :goto_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tcompletion param="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public pushText(II)V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-gt p1, v0, :cond_d

    if-gt v0, p2, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    const/4 p1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushText:Z

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atEnd()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    if-eqz v6, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenSafely()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_8

    const/16 v5, 0x25

    if-eq v6, v5, :cond_7

    const/16 v5, 0x2e

    if-eq v6, v5, :cond_5

    const/16 v5, 0x81

    if-eq v6, v5, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_1
    move-object v4, v3

    goto/16 :goto_8

    :catchall_0
    move-exception p2

    goto/16 :goto_b

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char v7, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x23

    if-ne v7, v8, :cond_a

    :try_start_1
    iput-boolean p1, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseMember(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    move-object v5, v3

    :goto_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz v7, :cond_a

    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v8, :cond_2

    move v8, p1

    goto :goto_3

    :cond_2
    const/16 v8, 0x14

    :goto_3
    instance-of v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "\tnew completion method="

    if-eqz v9, :cond_3

    :try_start_3
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v7, v5, v9, v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;II)V

    iput-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    sget-boolean v5, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v5, :cond_a

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    instance-of v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v9, :cond_4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v7, v5, v9, v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;II)V

    iput-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    sget-boolean v5, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v5, :cond_a

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_4
    invoke-interface {v7, v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    goto :goto_8

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v5

    add-int/2addr v5, v1

    iget v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-gt v5, v7, :cond_6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-gt v7, v8, :cond_6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v7, v5, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto :goto_8

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean p1, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->parseTag(I)Z
    :try_end_4
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :cond_8
    :try_start_6
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean p1, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseQualifiedName(Z)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    invoke-virtual {v7, v8, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I
    :try_end_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_9

    :cond_9
    :goto_5
    :try_start_7
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    :goto_6
    iput-boolean v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :catch_2
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_6

    :goto_7
    if-eq v5, v2, :cond_a

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto/16 :goto_1

    :cond_a
    :goto_8
    move v5, v6

    goto/16 :goto_0

    :goto_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_b
    :goto_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushText:Z

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz p1, :cond_d

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz p2, :cond_c

    const/16 p2, 0x40

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    goto :goto_c

    :cond_c
    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    goto :goto_c

    :goto_b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushText:Z

    throw p2

    :cond_d
    :goto_c
    return-void
.end method

.method public readToken()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readToken()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    :cond_0
    return v0
.end method

.method public syntaxRecoverArgumentType(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->pushText:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;->addCompletionFlags(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    if-eqz v1, :cond_4

    array-length v1, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    array-length v0, v0

    if-ne v1, v0, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-le p2, p3, :cond_5

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_5
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 p2, 0x20

    ushr-long v2, v0, p2

    long-to-int p2, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x1

    if-gt p2, v1, :cond_6

    if-gt p3, v0, :cond_6

    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_1

    :cond_6
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_1

    :cond_7
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz p2, :cond_9

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-le p2, p3, :cond_8

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_8
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {p2, p1, p3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_9
    :goto_1
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_a

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\tcompletion method="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object p1
.end method

.method public syntaxRecoverEmptyArgumentType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    :cond_3
    :goto_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tcompletion method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object p1
.end method

.method public syntaxRecoverQualifiedName(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-wide v3, v1, v2

    long-to-int v1, v3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->createTypeReference(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aget p1, p1, v0

    new-array v4, p1, [[C

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    const/4 v1, 0x0

    invoke-static {v0, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    new-array v6, v0, [J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    invoke-static {v0, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tokenPreviousPosition:I

    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v7, v0

    add-long/2addr v1, v7

    aput-wide v1, v6, p1

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;-><init>([[C[C[JII)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tcompletion partial qualified type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    return-object p1
.end method

.method public updateDocComment()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->updateDocComment()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->getCompletionParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->getCompletionParser()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->getCompletionJavadoc()Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->completionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_0
    return-void
.end method

.method public verifySpaceOrEndComment()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadocParser;->cursorLocation:I

    if-gt v1, v2, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    if-gt v2, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->verifySpaceOrEndComment()Z

    move-result v0

    return v0
.end method
