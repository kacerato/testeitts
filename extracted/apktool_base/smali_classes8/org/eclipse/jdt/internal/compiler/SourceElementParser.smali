.class public Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
.super Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;
.source "SourceFile"


# instance fields
.field nodesToCategories:Ljava/util/HashMap;

.field notifier:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

.field reportLocalDeclarations:Z

.field reportReferenceInfo:Z

.field requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

.field sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field useSourceJavadocParser:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V
    .locals 2

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 5
    invoke-direct {p0, v0, p5}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 6
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    .line 7
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    const/4 p5, 0x1

    .line 8
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->useSourceJavadocParser:Z

    .line 9
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportLocalDeclarations:Z

    .line 10
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/SourceElementParser$1;

    .line 11
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    .line 12
    invoke-direct {p5, p0, v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser$1;-><init>(Lorg/eclipse/jdt/internal/compiler/SourceElementParser;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 13
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 14
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 15
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 16
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    invoke-direct {p2, p1, p4}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Z)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->notifier:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    .line 17
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->useSourceJavadocParser:Z

    if-eqz p6, :cond_0

    .line 18
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    :cond_0
    return-void
.end method

.method private acceptJavadocTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private rememberCategories()V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->useSourceJavadocParser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addUnknownRef(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptUnknownReference([CI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptUnknownReference([[CII)V

    :goto_0
    return-void
.end method

.method public checkComment()V
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->getCommentPtr()I

    move-result v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    if-eqz v1, :cond_1

    :cond_0
    if-ltz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->getCommentPtr()I

    move-result v0

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    if-ltz v1, :cond_5

    :goto_0
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v1, v1, v0

    if-gez v1, :cond_3

    neg-int v1, v1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    if-gt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_e

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v3, v3, v2

    if-gez v3, :cond_6

    neg-int v3, v3

    :cond_6
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->forStartPosition:I

    if-eqz v4, :cond_7

    if-ge v4, v3, :cond_8

    :cond_7
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :cond_8
    :goto_2
    if-ltz v0, :cond_a

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v3, v3, v0

    if-ltz v3, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-ltz v0, :cond_e

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    if-eqz v3, :cond_e

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v4, v4, v0

    sub-int/2addr v4, v1

    iget-boolean v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->shouldReportProblems:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v5, :cond_b

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastJavadocEnd:I

    if-gt v4, v5, :cond_b

    move v5, v2

    goto :goto_4

    :cond_b
    move v5, v1

    :goto_4
    iput-boolean v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    goto :goto_5

    :cond_c
    iput-boolean v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    :goto_5
    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkAndSetModifiers(I)V

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_e

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastJavadocEnd:I

    :cond_e
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_12

    array-length v3, v0

    move v4, v2

    :goto_6
    if-lt v4, v3, :cond_f

    goto :goto_8

    :cond_f
    aget-object v5, v0, v4

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v6, :cond_10

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    goto :goto_7

    :cond_10
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v6, :cond_11

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v6, v7, v8, v5}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    :goto_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_19

    array-length v3, v0

    move v4, v2

    :goto_9
    if-lt v4, v3, :cond_13

    goto/16 :goto_d

    :cond_13
    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->acceptJavadocTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz v6, :cond_14

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptFieldReference([CI)V

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->acceptJavadocTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_c

    :cond_14
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v6, :cond_16

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v6, :cond_15

    move v6, v2

    goto :goto_a

    :cond_15
    array-length v6, v6

    :goto_a
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v7, v8, v6, v9}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v7, v8, v6, v9}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->acceptJavadocTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_c

    :cond_16
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v6, :cond_18

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v6, :cond_17

    move v6, v2

    goto :goto_b

    :cond_17
    array-length v6, v6

    :goto_b
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    array-length v9, v7

    sub-int/2addr v9, v1

    aget-object v7, v7, v9

    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v8, v7, v6, v9}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->acceptJavadocTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_18
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_19
    :goto_d
    return-void
.end method

.method public classInstanceCreation(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->classInstanceCreation(Z)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v0

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    :goto_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v3

    :goto_1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    :cond_2
    return-void
.end method

.method public consumeAnnotationAsModifier()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationAsModifier()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptAnnotationTypeReference([[CII)V

    :cond_0
    return-void
.end method

.method public consumeAnnotationTypeDeclarationHeaderName()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeaderName()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeCatchFormalParameter()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCatchFormalParameter()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    return-void
.end method

.method public consumeClassHeaderName1()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderName1()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v2

    const/16 v4, 0x2e

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    :goto_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v4

    :goto_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v3, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    :cond_2
    return-void
.end method

.method public consumeClassInstanceCreationExpressionWithTypeArguments()V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionWithTypeArguments()V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v2

    const/16 v4, 0x2e

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    :goto_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v4

    :goto_1
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v3, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    :cond_2
    return-void
.end method

.method public consumeConstructorHeaderName()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderName()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeConstructorHeaderNameWithTypeParameters()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeaderNameWithTypeParameters()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeEnumConstantNoClassBody()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantNoClassBody()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_1
    return-void
.end method

.method public consumeEnumConstantWithClassBody()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumConstantWithClassBody()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_1
    return-void
.end method

.method public consumeEnumHeaderName()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeaderName()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeEnumHeaderNameWithTypeParameters()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnumHeaderNameWithTypeParameters()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeExitVariableWithInitialization()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithInitialization()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_1
    return-void
.end method

.method public consumeExitVariableWithoutInitialization()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithoutInitialization()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_1
    return-void
.end method

.method public consumeFieldAccess(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldAccess(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptFieldReference([CI)V

    :cond_0
    return-void
.end method

.method public consumeFormalParameter(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFormalParameter(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    return-void
.end method

.method public consumeInterfaceHeaderName1()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeaderName1()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeMarkerAnnotation(Z)V
    .locals 3

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMarkerAnnotation(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptAnnotationTypeReference([[CII)V

    :cond_1
    return-void
.end method

.method public consumeMemberValuePair()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValuePair()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    const/4 v3, 0x0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_0
    return-void
.end method

.method public consumeMethodHeaderName(Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderName(Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    return-void
.end method

.method public consumeMethodHeaderNameWithTypeParameters(Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    long-to-int v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderNameWithTypeParameters(Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationNameWithTypeArguments()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationNameWithTypeArguments()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationPrimary()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimary()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationPrimaryWithTypeArguments()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimaryWithTypeArguments()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationSuper()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuper()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationSuperWithTypeArguments()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuperWithTypeArguments()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-interface {v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeModuleHeader()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeModuleHeader()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->rememberCategories()V

    :cond_0
    return-void
.end method

.method public consumeNormalAnnotation(Z)V
    .locals 3

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNormalAnnotation(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptAnnotationTypeReference([[CII)V

    :cond_1
    return-void
.end method

.method public consumeProvidesStatement()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeProvidesStatement()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    return-void
.end method

.method public consumeSingleMemberAnnotation(Z)V
    .locals 4

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleMemberAnnotation(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptAnnotationTypeReference([[CII)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    const/4 v2, 0x0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    :cond_1
    return-void
.end method

.method public consumeSingleStaticImportDeclarationName()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    new-array v1, v0, [[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v0, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v4, v2, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v4, v5

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v3, v6, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newImportReference([[C[JZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v5

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long v2, v2, v7

    if-gez v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPositionBeforeRecovery:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v2, v3, :cond_1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidUsageOfStaticImports(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v2, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v2, v1

    add-int/lit8 v3, v2, -0x1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    aget-wide v7, v4, v3

    const/16 v4, 0x20

    ushr-long v4, v7, v4

    long-to-int v4, v4

    aget-object v1, v1, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v5, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptFieldReference([CI)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v5, v1, v6, v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptMethodReference([CII)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v5, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    if-lez v3, :cond_3

    new-array v1, v3, [[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v4, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v3, v2

    long-to-int v2, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v3, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_3
    return-void
.end method

.method public consumeSingleTypeImportDeclarationName()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    new-array v1, v0, [[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v0, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v4, v2, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v4, v5

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, v3, v6, v6}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newImportReference([[C[JZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_1

    add-int/2addr v1, v5

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v2, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_2
    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    new-array v1, v0, [[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v0, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v4, v2, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v4, v5

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v5, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    const/4 v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v7, v5

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_0
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPositionBeforeRecovery:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v1, v2, :cond_1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidUsageOfStaticImports(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v1, :cond_2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_3
    return-void
.end method

.method public consumeTypeElidedLambdaParameter(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeElidedLambdaParameter(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->flushCommentsDefinedPriorTo(I)I

    return-void
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    new-array v1, v0, [[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v3, v0, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v4, v2, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v4, v5

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-direct {v0, v1, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v7, 0x1a

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_0
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationEnd:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v1, :cond_1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptUnknownReference([[CII)V

    :cond_2
    return-void
.end method

.method public consumeUsesStatement()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUsesStatement()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    return-void
.end method

.method public consumeWithClause()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWithClause()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v4

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v3, v4, v5, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public convertToMethodDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->convertToMethodDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->removeKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[C

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnds()[I

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptLineSeparatorPositions([I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/util/CommentRecorderParser;->endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v4

    neg-int v0, v0

    invoke-static {v0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->baseTypeReference(II[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v7, v4, v5

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-nez p1, :cond_0

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, v4, v6

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBracketPosition:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v4

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {p1, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsIdentifiersLengthPtr:I

    aget v4, v4, v5

    if-ne v0, v4, :cond_a

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v5, v5, v6

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-ne v0, v3, :cond_6

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    if-nez p1, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object p1, p1, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v5, v4

    invoke-direct {v0, p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v7, v5, v6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v8, v6, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v10, v5, v6

    move-object v6, v4

    move v8, p1

    move-object v9, v0

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput p1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_4

    iget p1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr p1, v1

    iput p1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {p1, v0, v5}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    :cond_5
    move-object v0, v4

    goto/16 :goto_3

    :cond_6
    sub-int/2addr v6, v3

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    new-array v4, v0, [[C

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v5, v0

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v6, v0, [J

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v5, v3

    invoke-static {v7, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v7, v3

    invoke-static {v5, v7, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-direct {v0, v4, v6}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {p1, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    invoke-direct {v5, v4, p1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[J)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_8

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v0, v1

    iput v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v4, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v0, v4, v6, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_9
    move-object v0, v5

    goto :goto_3

    :cond_a
    :goto_1
    invoke-virtual {p0, p1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReferenceForGenericType(III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v5, :cond_c

    if-ne v0, v3, :cond_b

    if-ne v4, v3, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface {v4, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([CI)V

    goto :goto_2

    :cond_b
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {v4, v5, v6, v0}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptTypeReference([[CII)V

    :cond_c
    :goto_2
    move-object v0, p1

    :cond_d
    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotatableLevels()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    :goto_4
    if-gez v4, :cond_e

    return-object v0

    :cond_e
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v5, v5, v6

    if-eqz v5, :cond_11

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v6, :cond_f

    new-array v6, p1, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    :cond_f
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v7, v5

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    new-array v9, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object v9, v8, v4

    invoke-static {v6, v7, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v4, :cond_10

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_10
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v5, v1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method public getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object p1, p1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v0, v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newSingleNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->addUnknownRef(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_1
    return-object p1

    :cond_2
    new-array v1, p1, [[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v2, v0

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, p1, [J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v5, v0

    invoke-static {v3, v5, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v4, v3, 0x1

    aget-wide v4, v0, v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, p1

    aget-wide v5, v0, v3

    long-to-int p1, v5

    invoke-virtual {p0, v1, v2, v4, p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newQualifiedNameReference([[C[JII)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->addUnknownRef(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_3
    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newSingleNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->addUnknownRef(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_0
    return-object v0

    :cond_1
    new-array v2, v0, [[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v3, v1

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v0, [J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v6, v1

    invoke-static {v4, v6, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-wide v5, v1, v5

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v0

    aget-wide v0, v1, v4

    long-to-int v0, v0

    invoke-virtual {p0, v2, v3, v5, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->newQualifiedNameReference([[C[JII)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->addUnknownRef(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    :cond_2
    return-object v0
.end method

.method public newImportReference([[C[JZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    return-object v0
.end method

.method public newQualifiedNameReference([[C[JII)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;-><init>([[C[JII)V

    return-object v0
.end method

.method public newSingleNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    return-object v0
.end method

.method public parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 12

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v3, p1, v2, v2, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/eclipse/core/runtime/OperationCanceledException;

    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_cancelled:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptLineSeparatorPositions([I)V

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportLocalDeclarations:Z

    if-nez v4, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p2, v3, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->notifier:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    iget v8, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget-boolean v9, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reportReferenceInfo:Z

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->nodesToCategories:Ljava/util/HashMap;

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;IIZLorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reset()V

    return-object p1

    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reset()V

    throw p1

    :catch_0
    const/4 p1, 0x0

    :catch_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->reset()V

    return-object p1
.end method

.method public setRequestor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->notifier:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    return-void
.end method
