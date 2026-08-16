.class public final Lcom/android/tools/r8/internal/lK;
.super Lcom/android/tools/r8/internal/UJ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/UJ;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/sE;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/mK;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/mK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/UJ;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_0
    return-object v0
.end method
