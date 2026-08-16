.class public abstract Lcom/android/tools/r8/internal/Ex;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->Z1:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    const-string v2, "floatToIntBits"

    invoke-virtual {p1, v1, p0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 p1, 0xb8

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-object v0
.end method

.method public static a()Lcom/android/tools/r8/internal/w5;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/aE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aE0;-><init>()V

    return-object v0
.end method
