.class public Lcom/android/tools/r8/internal/zX;
.super Lcom/android/tools/r8/internal/yX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/yX;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/yX;-><init>(Ljava/util/AbstractMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/yX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/F2;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    return-object p1
.end method
