.class public final Lcom/android/tools/r8/internal/ck0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;


# instance fields
.field public final a:Ljava/util/stream/Stream;

.field public final b:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ck0;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/bk0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/bk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bk0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ck0;->b:Ljava/util/function/Supplier;

    iput-object v1, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public final getResultContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ck0;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    return-object v0
.end method
