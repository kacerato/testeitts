.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/INamingRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findVariableName([C[C[C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[C[[CZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$displayName:[C

.field private final synthetic val$forbiddenNames:[[C

.field private final synthetic val$q:[C

.field private final synthetic val$t:[C

.field private final synthetic val$typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;[[C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$forbiddenNames:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$t:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$q:[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$displayName:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept([CII)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$forbiddenNames:[[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$t:[C

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeBaseRelevance()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForInterestingProposal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$t:[C

    invoke-virtual {v2, v3, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForCaseMatching([C[C)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    if-lez p3, :cond_1

    add-int/lit8 v0, v0, 0xf

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForRestrictions(I)I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-boolean v1, p2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->noProposal:Z

    iget-object p2, p2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->requestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/core/CompletionRequestor;->isIgnored(I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v1, p2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->actualCompletionPosition:I

    invoke-virtual {p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createProposal(II)Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p3}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setSignature([C)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$q:[C

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setPackageName([C)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$displayName:[C

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setTypeName([C)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setName([C)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setCompletion([C)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget p3, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->startPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->offset:I

    sub-int/2addr p3, v1

    iget p1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->endPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setReplaceRange(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget p3, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->tokenStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->offset:I

    sub-int/2addr p3, v1

    iget p1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->tokenEnd:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setTokenRange(II)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setRelevance(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->requestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/CompletionRequestor;->accept(Lorg/eclipse/jdt/core/CompletionProposal;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->printDebug(Lorg/eclipse/jdt/core/CompletionProposal;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->val$forbiddenNames:[[C

    aget-object v3, v3, v2

    invoke-static {v3, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public acceptNameWithPrefix([CZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->accept([CII)V

    return-void
.end method

.method public acceptNameWithPrefixAndSuffix([CZZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_1

    :cond_1
    const/4 p3, 0x3

    :goto_1
    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->accept([CII)V

    return-void
.end method

.method public acceptNameWithSuffix([CZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->accept([CII)V

    return-void
.end method

.method public acceptNameWithoutPrefixAndSuffix([CI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$10;->accept([CII)V

    return-void
.end method
