.class public Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;
.super Lorg/openjdk/tools/javac/code/Type$MethodType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PartiallyInferredMethodType"
.end annotation


# instance fields
.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field final inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field final warn:Lorg/openjdk/tools/javac/util/Warner;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->warn:Lorg/openjdk/tools/javac/util/Warner;

    return-void
.end method


# virtual methods
.method public check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 9

    new-instance v0, Lorg/openjdk/tools/javac/util/Warner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Warner;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->clear()V

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->save()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->warn:Lorg/openjdk/tools/javac/util/Warner;

    sget-object v4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-static {v4, v5, p1, v6}, Lorg/openjdk/tools/javac/comp/Infer;->access$000(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/openjdk/tools/javac/comp/Infer;->access$100(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->warn:Lorg/openjdk/tools/javac/util/Warner;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lorg/openjdk/tools/javac/comp/InferenceContext;->min(Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->update(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v7, v8, p1, v6, v5}, Lorg/openjdk/tools/javac/comp/Infer;->generateReturnConstraints(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    if-eqz v4, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->insideOverloadPhase()Z

    move-result v3

    invoke-virtual {v5, v0, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->dupTo(Lorg/openjdk/tools/javac/comp/InferenceContext;Z)V
    :try_end_1
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    :cond_1
    return-object v6

    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1, v3, v0}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_2
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    :cond_4
    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    :cond_5
    return-object v1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    :cond_6
    throw p1
.end method

.method public isPartial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
