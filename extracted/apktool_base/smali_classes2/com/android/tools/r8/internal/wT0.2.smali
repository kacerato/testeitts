.class public final synthetic Lcom/android/tools/r8/internal/wT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qn0;

.field public final synthetic c:Lcom/android/tools/r8/retrace/RetraceClassResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wT0;->c:Lcom/android/tools/r8/retrace/RetraceClassResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wT0;->c:Lcom/android/tools/r8/retrace/RetraceClassResult;

    check-cast p1, Lcom/android/tools/r8/internal/Pn0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
