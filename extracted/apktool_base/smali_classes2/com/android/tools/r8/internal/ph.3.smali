.class public final Lcom/android/tools/r8/internal/ph;
.super Lcom/android/tools/r8/internal/sE;
.source "SourceFile"


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sE;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/sE;
    .locals 0

    return-object p0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/qh;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/qh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/ph;->d:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_0
    return-object v0
.end method
