.class public final Lcom/android/tools/r8/internal/dk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackTraceResult;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dk0;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dk0;->b:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk0;->b:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final getResult()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk0;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
