.class public final Lcom/android/tools/r8/internal/Xj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xj0;->a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final getResult()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
