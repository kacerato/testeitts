.class abstract Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractMethodCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private treeForDiagnostics(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v9

    invoke-direct/range {p0 .. p1}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->treeForDiagnostics(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v10

    invoke-static {v10}, Lorg/openjdk/tools/javac/tree/TreeInfo;->args(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v11, v8, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    if-eqz v9, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    move-object v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    if-nez v13, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v1, v11, v2}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->reportMC(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;Lorg/openjdk/tools/javac/comp/InferenceContext;[Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v15, p3

    move-object/from16 v6, p4

    move-object v5, v0

    :goto_1
    invoke-virtual {v15}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, v13, :cond_4

    if-eqz v5, :cond_2

    iget-object v1, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v15, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v12, v5

    move-object/from16 v5, p2

    move-object v14, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v14, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v12, :cond_3

    iget-object v0, v12, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v12

    :goto_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    move-object v12, v5

    move-object v14, v6

    iget-object v0, v14, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v0, v13, :cond_5

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v0, v11, v1}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->reportMC(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;Lorg/openjdk/tools/javac/comp/InferenceContext;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v9, :cond_8

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v13}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-virtual {v15}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v12, :cond_7

    iget-object v0, v12, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-object v1, v0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    iget-object v0, v15, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v12, :cond_6

    iget-object v0, v12, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v12, v0

    goto :goto_4

    :cond_8
    return-void
.end method

.method public abstract checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
.end method

.method public mostSpecificCheck(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;"
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve;->nilMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    return-object p1
.end method

.method public varargs reportMC(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;Lorg/openjdk/tools/javac/comp/InferenceContext;[Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Resolve;->access$300(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->inferKey:Ljava/lang/String;

    iget-object v5, p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->basicKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, p4

    add-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    array-length v5, p4

    invoke-static {p4, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferenceVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    aput-object p3, v1, v3

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object v9, p4

    :goto_2
    if-eqz v2, :cond_3

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->inferKey:Ljava/lang/String;

    :goto_3
    move-object v8, p2

    goto :goto_4

    :cond_3
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->basicKey:Ljava/lang/String;

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, p2, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    sget-object v5, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v6

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    throw p1
.end method
