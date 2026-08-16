.class Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;
.super Lorg/eclipse/jdt/core/CompletionRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getCompletionRequestor(Lorg/eclipse/jdt/core/CompletionRequestor;)Lorg/eclipse/jdt/core/CompletionRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

.field private final synthetic val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;Lorg/eclipse/jdt/core/CompletionRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/CompletionRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/core/CompletionProposal;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getKind()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_5

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getSignature()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetClassName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetVarClassName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->PACKAGE_NAME:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/CompletionProposal;->getDeclarationSignature()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetClassName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->PACKAGE_NAME:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/CompletionRequestor;->accept(Lorg/eclipse/jdt/core/CompletionProposal;)V

    return-void
.end method

.method public acceptContext(Lorg/eclipse/jdt/core/CompletionContext;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/CompletionRequestor;->acceptContext(Lorg/eclipse/jdt/core/CompletionContext;)V

    return-void
.end method

.method public beginReporting()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/CompletionRequestor;->beginReporting()V

    return-void
.end method

.method public completionFailure(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/CompletionRequestor;->completionFailure(Lorg/eclipse/jdt/core/compiler/IProblem;)V

    return-void
.end method

.method public endReporting()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/CompletionRequestor;->endReporting()V

    return-void
.end method

.method public isAllowingRequiredProposals(II)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/CompletionRequestor;->isAllowingRequiredProposals(II)Z

    move-result p1

    return p1
.end method

.method public isIgnored(I)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/CompletionRequestor;->isIgnored(I)Z

    move-result p1

    return p1
.end method

.method public setAllowsRequiredProposals(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/CompletionRequestor;->setAllowsRequiredProposals(IIZ)V

    return-void
.end method

.method public setIgnored(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;->val$originalRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/CompletionRequestor;->setIgnored(IZ)V

    return-void
.end method
