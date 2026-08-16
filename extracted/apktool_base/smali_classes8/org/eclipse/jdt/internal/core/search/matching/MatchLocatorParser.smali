.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassAndMethodDeclarationVisitor;,
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;,
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;,
        Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$NoClassNoMethodDeclarationVisitor;
    }
.end annotation


# instance fields
.field private localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

.field nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

.field final patternFineGrain:I

.field patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassAndMethodDeclarationVisitor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassAndMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$ClassButNoMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    goto :goto_2

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$MethodButNoClassDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$NoClassNoMethodDeclarationVisitor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser$NoClassNoMethodDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;)V

    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->fineGrain()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    return-void
.end method

.method public static createParser(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;
    .locals 1

    iget v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchContainer:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-object v0
.end method

.method private setTarget(Z)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;

    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->target:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->removePossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addPossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->removeTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public checkComment()V
    .locals 10

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkComment()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_11

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v1, :cond_11

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_3

    array-length v2, v0

    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_5

    array-length v2, v0

    move v3, v1

    :goto_4
    if-lt v3, v2, :cond_4

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_11

    array-length v2, v0

    move v3, v1

    :goto_6
    if-lt v3, v2, :cond_6

    goto/16 :goto_a

    :cond_6
    aget-object v4, v0, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_7

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto/16 :goto_9

    :cond_7
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz v5, :cond_8

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v6, :cond_10

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto/16 :goto_9

    :cond_8
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v5, :cond_c

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_9
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_10

    array-length v5, v5

    move v6, v1

    :goto_7
    if-lt v6, v5, :cond_a

    goto :goto_9

    :cond_a
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;->argument:Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_b

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v8, v7, v9}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v5, :cond_10

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_d
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_10

    array-length v5, v5

    move v6, v1

    :goto_8
    if-lt v6, v5, :cond_e

    goto :goto_9

    :cond_e
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v8, v8, v6

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;->argument:Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v7, :cond_f

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_f

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v8, v7, v9}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_11
    :goto_a
    return-void
.end method

.method public classInstanceCreation(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->classInstanceCreation(Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeAdditionalBound()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAdditionalBound()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeAssignment()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAssignment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCastExpressionLL1()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionLL1()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCastExpressionLL1WithBounds()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionLL1WithBounds()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public consumeCastExpressionWithGenericsArray()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithGenericsArray()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCastExpressionWithNameArray()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithNameArray()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCastExpressionWithPrimitiveType()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithPrimitiveType()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCastExpressionWithQualifiedGenericsArray()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithQualifiedGenericsArray()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeCatchFormalParameter()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCatchFormalParameter()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeClassHeaderExtends()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeaderExtends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    return-void
.end method

.method public consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionWithTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeClassInstanceCreationExpressionWithTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionWithTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeEnterAnonymousClassBody(Z)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterAnonymousClassBody(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    return-void
.end method

.method public consumeEnterVariable()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterVariable()V

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeExplicitConstructorInvocation(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExplicitConstructorInvocation(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeExplicitConstructorInvocationWithTypeArguments(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExplicitConstructorInvocationWithTypeArguments(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeExportsHeader()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExportsHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeFieldAccess(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldAccess(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x1000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x4000000

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    return-void
.end method

.method public consumeFormalParameter(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFormalParameter(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeInstanceOfExpression()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpression()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeInstanceOfExpressionWithName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpressionWithName()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/InstanceOfExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeInterfaceType()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceType()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    return-void
.end method

.method public consumeLambdaExpression()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLambdaExpression()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeLocalVariableDeclaration()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLocalVariableDeclaration()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeMarkerAnnotation(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMarkerAnnotation(Z)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    return-void
.end method

.method public consumeMemberValuePair()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValuePair()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeMethodHeaderName(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderName(Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeMethodHeaderRightParen()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderRightParen()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public consumeMethodHeaderThrowsClause()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderThrowsClause()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public consumeMethodInvocationNameWithTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationNameWithTypeArguments()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public consumeMethodInvocationPrimary()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimary()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationPrimaryWithTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationPrimaryWithTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationSuper()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuper()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    return-void
.end method

.method public consumeMethodInvocationSuperWithTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationSuperWithTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_1
    return-void
.end method

.method public consumeModuleHeader()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeModuleHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeNormalAnnotation(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNormalAnnotation(Z)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    return-void
.end method

.method public consumeOnlyTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOnlyTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeOpensHeader()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeOpensHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumePrimaryNoNewArrayWithName()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    return-void
.end method

.method public consumeProvidesInterface()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeProvidesInterface()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeProvidesStatement()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeProvidesStatement()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-nez v1, :cond_4

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public consumeSingleMemberAnnotation(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleMemberAnnotation(Z)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v0

    :goto_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    return-void
.end method

.method public consumeSingleRequiresModuleName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleRequiresModuleName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeSingleTargetModuleName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleTargetModuleName()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->setTarget(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->setTarget(Z)V

    return-void
.end method

.method public consumeStatementCatch()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementCatch()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v1, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeTypeArgumentList1()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentList1()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeTypeArgumentList2()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentList2()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeTypeArgumentList3()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentList3()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public consumeTypeArgumentReferenceType1()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentReferenceType1()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public consumeTypeArgumentReferenceType2()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArgumentReferenceType2()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public consumeTypeArguments()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeArguments()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeTypeElidedLambdaParameter(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeElidedLambdaParameter(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeTypeParameter1WithExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameter1WithExtends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeTypeParameter1WithExtendsAndBounds()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameter1WithExtendsAndBounds()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeTypeParameterHeader()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterHeader()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeTypeParameterWithExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterWithExtends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeTypeParameterWithExtendsAndBounds()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeParameterWithExtendsAndBounds()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeUnaryExpression(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeUnaryExpression(IZ)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    return-void
.end method

.method public consumeWildcardBounds1Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds1Extends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBounds1Super()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds1Super()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBounds2Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds2Extends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBounds2Super()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds2Super()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBounds3Extends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds3Extends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBounds3Super()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBounds3Super()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBoundsExtends()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBoundsExtends()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeWildcardBoundsSuper()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeWildcardBoundsSuper()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-object p1
.end method

.method public getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_1

    :cond_0
    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/high16 v5, 0x8000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_5
    :goto_1
    return-object v0
.end method

.method public parseBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    aget-object v2, v0, v1

    .line 4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    .line 5
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->parseBodies(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parseBodies(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 7

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v2

    .line 7
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    aget-object v4, v0, v3

    .line 9
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v5, :cond_1

    .line 10
    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {p0, v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 11
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_7

    move v3, v2

    .line 13
    :goto_2
    array-length v4, v0

    if-lt v3, v4, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    aget-object v4, v0, v3

    .line 15
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    if-lt v5, v6, :cond_5

    .line 16
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v5, :cond_4

    .line 17
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    .line 18
    invoke-virtual {p0, v4, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 19
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    goto :goto_3

    .line 20
    :cond_4
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v5, :cond_6

    .line 21
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    .line 22
    invoke-virtual {p0, v4, p2, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    .line 23
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v4, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 26
    :cond_7
    :goto_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_9

    .line 27
    :goto_5
    array-length v0, p1

    if-lt v2, v0, :cond_8

    goto :goto_6

    .line 28
    :cond_8
    aget-object v0, p1, v2

    .line 29
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->parseBodies(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 30
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method
