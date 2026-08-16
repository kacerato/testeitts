.class public Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"


# static fields
.field protected static final CommentIncrement:I = 0x64


# instance fields
.field commentPtr:I

.field commentStarts:[I

.field commentStops:[I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    const/16 p1, 0xa

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    return-void
.end method

.method private pushOnCommentsStack(II)V
    .locals 5

    :goto_0
    if-le p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    if-ge v1, p1, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v0, v0, p1

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    aget v3, v3, v1

    if-gez v3, :cond_4

    neg-int v3, v3

    :cond_4
    :goto_2
    if-eq v3, v2, :cond_5

    if-le v0, v3, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    array-length v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    if-lt v1, v2, :cond_6

    add-int/lit8 v1, v2, 0x64

    new-array v3, v1, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v3, v3, p1

    aput v3, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v2, v2, p1

    aput v2, v0, v1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkComment()V
    .locals 6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    :goto_0
    const/4 v1, 0x0

    if-gez v0, :cond_2

    move v3, v1

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v3, v3, v0

    if-ltz v3, :cond_c

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-lt v4, v3, :cond_c

    :cond_3
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v2, v2, v0

    if-gez v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->shouldReportProblems:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastJavadocEnd:I

    if-gt v2, v5, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    iput-boolean v1, v4, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    goto :goto_2

    :cond_6
    iput-boolean v1, v4, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    :goto_2
    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    move-result v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v4, :cond_7

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastJavadocEnd:I

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    const/high16 v1, 0x100000

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkAndSetModifiers(I)V

    :cond_8
    if-ltz v0, :cond_b

    if-eqz v3, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v0, v1, v0

    if-gez v0, :cond_9

    neg-int v0, v0

    :cond_9
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->forStartPosition:I

    if-eqz v1, :cond_a

    if-ge v1, v0, :cond_b

    :cond_a
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :cond_b
    return-void

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public consumeAnnotationTypeDeclarationHeader()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeader()V

    return-void
.end method

.method public consumeClassHeader()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeader()V

    return-void
.end method

.method public consumeEmptyTypeDeclaration()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEmptyTypeDeclaration()V

    return-void
.end method

.method public consumeEnterAnonymousClassBody(Z)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterAnonymousClassBody(Z)V

    return-void
.end method

.method public consumeEnumHeader()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeader()V

    return-void
.end method

.method public consumeInterfaceHeader()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeader()V

    return-void
.end method

.method public endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->getCommentsPositions()[[I

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->comments:[[I

    :cond_0
    return-object p1
.end method

.method public flushCommentsDefinedPriorTo(I)I
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->getCommentPtr()I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v4, v4, v2

    if-gez v4, :cond_2

    neg-int v4, v4

    :cond_2
    if-gt v4, p1, :cond_a

    :goto_1
    if-lez v3, :cond_5

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    neg-int v5, v5

    if-gtz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, -0x1

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {p1, v7, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v5, v8, v1, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v7

    if-eq v4, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    move p1, v5

    move v2, v6

    goto :goto_2

    :cond_5
    :goto_3
    if-gez v2, :cond_6

    return p1

    :cond_6
    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    const/4 v0, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v0, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    add-int/2addr v2, v0

    invoke-static {v4, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    invoke-static {v4, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    invoke-static {v4, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    add-int/lit8 v7, v2, 0x1

    aget v8, v6, v7

    aput v8, v6, v1

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v9, v8, v7

    aput v9, v8, v1

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    aget v7, v5, v7

    aput v7, v5, v1

    add-int/2addr v2, v4

    aget v1, v6, v2

    aput v1, v6, v0

    aget v1, v8, v2

    aput v1, v8, v0

    aget v1, v5, v2

    aput v1, v5, v0

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    add-int/2addr v2, v0

    aget v6, v5, v2

    aput v6, v5, v1

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v6, v5, v2

    aput v6, v5, v1

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    aget v2, v4, v2

    aput v2, v4, v1

    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    sub-int/2addr v3, v0

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    return p1

    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public getCommentPtr()I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    if-ltz v1, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    array-length v4, v0

    if-lt v1, v4, :cond_0

    return v2

    :cond_0
    aget v0, v0, v1

    if-gtz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->getLastStart()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_2
    if-le v0, v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public getCommentsPositions()[[I
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v2, v3, v1

    const/4 v2, 0x0

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    move v4, v2

    :goto_0
    if-le v4, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v5, v0, v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    aget v6, v6, v4

    aput v6, v5, v2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    aget v6, v6, v4

    aput v6, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    return-void
.end method

.method public initialize(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize(Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    return-void
.end method

.method public initializeScanner()V
    .locals 10

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->taskTags:[[C

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->taskPriorities:[[C

    iget-boolean v8, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isTaskCaseSensitive:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public resetComments()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStarts:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->commentStops:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    return-void
.end method

.method public resetModifiers()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->pushOnCommentsStack(II)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resetModifiers()V

    return-void
.end method
