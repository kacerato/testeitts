.class Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ICompletionRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;

.field private final synthetic val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;Lorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->this$0:Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptAnonymousType([C[C[[C[[C[[C[CIIII)V
    .locals 0

    return-void
.end method

.method public acceptClass([C[C[CIIII)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptClass([C[C[CIII)V

    return-void
.end method

.method public acceptError(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 0

    return-void
.end method

.method public acceptField([C[C[C[C[C[CIIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptField([C[C[C[C[C[CIII)V

    return-void
.end method

.method public acceptInterface([C[C[CIIII)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptInterface([C[C[CIII)V

    return-void
.end method

.method public acceptKeyword([CIII)V
    .locals 0

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    invoke-interface {p4, p1, p2, p3}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptKeyword([CII)V

    return-void
.end method

.method public acceptLabel([CIII)V
    .locals 0

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    invoke-interface {p4, p1, p2, p3}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptLabel([CII)V

    return-void
.end method

.method public acceptLocalVariable([C[C[CIIII)V
    .locals 0

    return-void
.end method

.method public acceptMethod([C[C[C[[C[[C[[C[C[C[CIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v1 .. v12}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptMethod([C[C[C[[C[[C[C[C[CIII)V

    return-void
.end method

.method public acceptMethodDeclaration([C[C[C[[C[[C[[C[C[C[CIIII)V
    .locals 0

    return-void
.end method

.method public acceptModifier([CIII)V
    .locals 0

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    invoke-interface {p4, p1, p2, p3}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptModifier([CII)V

    return-void
.end method

.method public acceptPackage([C[CIII)V
    .locals 0

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    invoke-interface {p5, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptPackage([C[CII)V

    return-void
.end method

.method public acceptType([C[C[CIII)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;->val$requestor:Lorg/eclipse/jdt/core/ICodeCompletionRequestor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jdt/core/ICodeCompletionRequestor;->acceptType([C[C[CII)V

    return-void
.end method

.method public acceptVariableName([C[C[C[CIII)V
    .locals 0

    return-void
.end method
