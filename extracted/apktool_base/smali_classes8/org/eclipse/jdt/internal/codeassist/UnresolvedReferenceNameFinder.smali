.class public Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;
    }
.end annotation


# static fields
.field private static final FAKE_BLOCKS_COUNT:I = 0x14

.field private static final MAX_LINE_COUNT:I = 0x64


# instance fields
.field private acceptedNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

.field private completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

.field private parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private parentsPtr:I

.field private parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

.field private potentialVariableNameStarts:[I

.field private potentialVariableNames:[[C

.field private potentialVariableNamesPtr:I

.field private requestor:Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->acceptedNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    return-void
.end method

.method private acceptName([C)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->completionToken:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionEngine:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->camelCaseMatch:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->completionToken:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->acceptedNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->acceptedNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->requestor:Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;->acceptName([C)V

    return-void
.end method

.method private endVisitPreserved(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfFisrtNameAfter(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->acceptName([C)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeNameAt(I)V

    :cond_1
    if-ge p2, v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v0

    goto :goto_0
.end method

.method private endVisitRemoved(II)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfFisrtNameAfter(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    if-ge v1, p2, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeNameAt(I)V

    :cond_1
    if-ge p2, v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v0

    goto :goto_0
.end method

.method private findAfter([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIIZ[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 2

    .line 3
    iput-object p8, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->requestor:Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const/4 p8, 0x0

    iput p8, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-nez p6, :cond_0

    add-int/lit8 v0, p3, 0x1

    .line 5
    invoke-virtual {p1, v0, p4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->jumpOverBlock()V

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    add-int/lit8 p4, p1, -0x1

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {p3, v0, p8, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    add-int/2addr v0, p5

    .line 10
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnd(I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, p4, :cond_2

    move p4, p1

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->startRecordingIdentifiers(II)V

    .line 12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    if-eqz p6, :cond_3

    const/16 p8, 0x14

    .line 13
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 14
    invoke-virtual {p1, p3, p4, p8, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->parseSomeStatements(IIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->stopRecordingIdentifiers()V

    .line 16
    invoke-direct {p0, p7}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->initPotentialNamesTables([[C)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 p2, -0x1

    .line 17
    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    const/16 p2, 0xa

    .line 18
    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object p1
.end method

.method private findBefore([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIII[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 2

    .line 3
    iput-object p8, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->requestor:Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->completionScanner:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;

    const/4 p8, 0x0

    iput p8, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {p4, v0, p8, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    sub-int/2addr v0, p6

    .line 6
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineStart(I)I

    move-result p1

    if-gt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p8, 0x14

    move p3, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->startRecordingIdentifiers(II)V

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    .line 9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 10
    invoke-virtual {p1, p3, p5, p8, p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->parseSomeStatements(IIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->stopRecordingIdentifiers()V

    .line 12
    invoke-direct {p0, p7}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->initPotentialNamesTables([[C)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    const/16 p2, 0xa

    .line 14
    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object p1
.end method

.method private getEnclosingDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private indexOfFisrtNameAfter(I)I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNamesPtr:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v4, v4, v3

    if-gez v4, :cond_7

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v4

    if-ltz v4, :cond_6

    if-ge v0, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v5, v3, v4

    if-ne v4, v0, :cond_5

    aget v3, v3, v1

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v1

    if-gez v1, :cond_0

    return v2

    :cond_5
    move v3, v4

    move v4, v5

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    if-eq v1, v0, :cond_9

    if-ge v4, p1, :cond_8

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    if-ge v4, p1, :cond_a

    return v2

    :cond_a
    return v3
.end method

.method private indexOfNextName(I)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNamesPtr:I

    if-gt v1, v2, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v2, v2, v1

    neg-int v2, v2

    if-lez v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    if-ge p1, v2, :cond_3

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNamesPtr:I

    :cond_3
    const/4 p1, -0x1

    return p1

    :cond_4
    if-ge v0, v1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    neg-int v2, v1

    aput v2, p1, v0

    :cond_5
    return v1
.end method

.method private initPotentialNamesTables([[C)Z
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parser:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNames:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNameStarts:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->potentialVariableNamesPtr:I

    const/4 v3, 0x0

    if-gez v0, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    array-length v4, p1

    :goto_0
    const/4 v5, -0x1

    move v6, v3

    :goto_1
    if-le v6, v0, :cond_3

    if-gez v5, :cond_2

    return v3

    :cond_2
    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    iput v5, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNamesPtr:I

    const/4 p1, 0x1

    return p1

    :cond_3
    aget-object v7, v1, v6

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_2
    if-lt v8, v4, :cond_5

    const/4 v8, 0x0

    aput-object v8, v1, v6

    add-int/lit8 v5, v5, 0x1

    aput-object v7, v1, v5

    aget v7, v2, v6

    aput v7, v2, v5

    goto :goto_3

    :cond_5
    aget-object v9, p1, v8

    invoke-static {v7, v9, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private popParent()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    return-void
.end method

.method private pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    add-int/lit8 v3, v1, -0x1

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parents:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->parentsPtr:I

    aput-object p1, v0, v1

    return-void
.end method

.method private removeFields(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 8

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfFisrtNameAfter(I)I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v5, v5, v4

    if-gt v0, v5, :cond_2

    if-gt v5, v1, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    aget-object v6, v6, v4

    aget-object v7, p1, v3

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v6, v7, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeNameAt(I)V

    :cond_2
    if-ge v1, v5, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v4

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V
    .locals 7

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto :goto_3

    :cond_0
    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfFisrtNameAfter(I)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    aget v4, v4, v3

    if-gt p2, v4, :cond_2

    if-gt v4, p3, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    aget-object v5, v5, v3

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v5, v6, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeNameAt(I)V

    :cond_2
    if-ge p3, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v3

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private removeNameAt(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNames:[[C

    const/4 v1, 0x0

    aput-object v1, v0, p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->indexOfNextName(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNameStarts:[I

    neg-int v0, v0

    aput v0, v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->potentialVariableNamesPtr:I

    :goto_0
    return-void
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 2
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 4
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x80

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitPreserved(II)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 1

    .line 7
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    .line 8
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitPreserved(II)V

    .line 9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 0

    .line 10
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitPreserved(II)V

    .line 11
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 12
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 13
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    .line 14
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    .line 15
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitPreserved(II)V

    .line 16
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 17
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    .line 18
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 19
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->endVisitRemoved(II)V

    .line 20
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->popParent()V

    return-void
.end method

.method public find([CLorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)V
    .locals 9

    .line 3
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->findAfter([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIIZ[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :cond_0
    return-void
.end method

.method public find([CLorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)V
    .locals 9

    .line 1
    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->findAfter([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIIZ[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :cond_0
    return-void
.end method

.method public findAfter([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;II[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)V
    .locals 9

    const/16 v5, 0x32

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->findAfter([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIIZ[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object v0

    move-object v1, p0

    if-eqz v0, :cond_0

    move-object v2, p3

    .line 2
    invoke-virtual {v0, p0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :cond_0
    return-void
.end method

.method public findBefore([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;III[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)V
    .locals 9

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->findBefore([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;IIII[[CLorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object v0

    move-object v1, p0

    if-eqz v0, :cond_0

    move-object v2, p3

    .line 2
    invoke-virtual {v0, p0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :cond_0
    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->getEnclosingDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, p2, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 2

    .line 4
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x80

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 6
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 7
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 8
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    .line 9
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 10
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 11
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 12
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 2

    .line 16
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 17
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 18
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 19
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    .line 20
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 21
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 22
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 23
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeLocals([Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V

    .line 24
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeFields(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 26
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->removeFields(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder;->pushParent(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method
