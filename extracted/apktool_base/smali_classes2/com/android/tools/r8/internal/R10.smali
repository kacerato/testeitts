.class public abstract Lcom/android/tools/r8/internal/R10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/T10;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    invoke-direct {p1, v0, p0}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p1
.end method

.method public static a()Lcom/android/tools/r8/internal/w5;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/GU0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GU0;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 4
    invoke-virtual {p1, v1, v2, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 p1, 0xb8

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/internal/w5;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/FU0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/FU0;-><init>()V

    return-object v0
.end method
