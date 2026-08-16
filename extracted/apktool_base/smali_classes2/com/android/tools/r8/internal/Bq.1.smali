.class public final Lcom/android/tools/r8/internal/Bq;
.super Lcom/android/tools/r8/internal/Cq;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 8
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    sget-object p1, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Bq;)V
    .locals 2

    .line 1
    sget v0, Lcom/android/tools/r8/internal/eA;->j:I

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Cq;->size()I

    move-result v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/eA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    return-void
.end method
