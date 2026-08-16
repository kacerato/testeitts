.class Lorg/eclipse/jdt/internal/eval/EvaluationContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/IRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/EvaluationContext;->complete([CILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$1;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;[C)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)V
    .locals 0

    return-void
.end method
