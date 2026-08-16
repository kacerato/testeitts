.class Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getSelectionRequestor(Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;)Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

.field private final synthetic val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceLineNumber(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceStart(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->this$0:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/compiler/IProblem;->setSourceEnd(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptError(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method

.method public acceptField([C[C[CZ[CII)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptField([C[C[CZ[CII)V

    return-void
.end method

.method public acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-interface/range {v1 .. v15}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethod([C[CLjava/lang/String;[C[[C[[C[Ljava/lang/String;[[C[[[CZZ[CII)V

    return-void
.end method

.method public acceptMethodTypeParameter([C[C[CII[CZII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptMethodTypeParameter([C[C[CII[CZII)V

    return-void
.end method

.method public acceptModule([C[CII)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptModule([C[CII)V

    return-void
.end method

.method public acceptPackage([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptPackage([C)V

    return-void
.end method

.method public acceptType([C[CIZ[CII)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptType([C[CIZ[CII)V

    return-void
.end method

.method public acceptTypeParameter([C[C[CZII)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;->val$originalRequestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;->acceptTypeParameter([C[C[CZII)V

    return-void
.end method
