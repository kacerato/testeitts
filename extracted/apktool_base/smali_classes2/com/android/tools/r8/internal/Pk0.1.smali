.class public final Lcom/android/tools/r8/internal/Pk0;
.super Lcom/android/tools/r8/internal/ic;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ic;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/internal/jc;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Qk0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_0
    return-object v0
.end method
