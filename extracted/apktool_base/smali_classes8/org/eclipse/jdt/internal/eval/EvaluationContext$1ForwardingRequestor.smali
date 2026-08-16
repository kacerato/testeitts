.class Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/IRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluate([C[[C[[C[I[CZZLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardingRequestor"
.end annotation


# instance fields
.field hasErrors:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field private final synthetic val$requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/eval/IRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->val$requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->hasErrors:Z

    return-void
.end method


# virtual methods
.method public acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->val$requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z

    move-result p1

    return p1
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->val$requestor:Lorg/eclipse/jdt/internal/eval/IRequestor;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/eval/IRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1ForwardingRequestor;->hasErrors:Z

    :cond_0
    return-void
.end method
