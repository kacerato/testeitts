.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findVariableFromUnresolvedReference(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[[C)[[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$proposedNames:Ljava/util/ArrayList;

.field private final synthetic val$type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$proposedNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptName([C)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeBaseRelevance()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForInterestingProposal()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->completionToken:[C

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForCaseMatching([C[C)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x19

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->computeRelevanceForRestrictions(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->noProposal:Z

    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->requestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/CompletionRequestor;->isIgnored(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v3, v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->actualCompletionPosition:I

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->createProposal(II)Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setSignature([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setPackageName([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setTypeName([C)V

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setName([C)V

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setCompletion([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v3, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->startPosition:I

    iget v4, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->offset:I

    sub-int/2addr v3, v4

    iget v2, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->endPosition:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setReplaceRange(II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget v3, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->tokenStart:I

    iget v4, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->offset:I

    sub-int/2addr v3, v4

    iget v2, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->tokenEnd:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setTokenRange(II)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/InternalCompletionProposal;->setRelevance(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->requestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/CompletionRequestor;->accept(Lorg/eclipse/jdt/core/CompletionProposal;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->printDebug(Lorg/eclipse/jdt/core/CompletionProposal;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$9;->val$proposedNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
