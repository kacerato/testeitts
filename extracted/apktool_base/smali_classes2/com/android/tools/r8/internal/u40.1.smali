.class public abstract Lcom/android/tools/r8/internal/u40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->f3:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/String;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 3
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    invoke-virtual {p3, p0, p2, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 p1, 0xb6

    const/4 p2, 0x0

    invoke-direct {v0, p1, p0, p2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-object v0
.end method

.method public static a()Lcom/android/tools/r8/internal/w5;
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/uu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uu1;-><init>()V

    const-string v1, "getAsDouble"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/u40;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/internal/w5;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/internal/w5;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ru1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ru1;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->g3:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static b()Lcom/android/tools/r8/internal/w5;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/tu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tu1;-><init>()V

    const-string v1, "getAsInt"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/u40;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/internal/w5;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->h3:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static c()Lcom/android/tools/r8/internal/w5;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/su1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/su1;-><init>()V

    const-string v1, "getAsLong"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/u40;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/internal/w5;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->e3:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static d()Lcom/android/tools/r8/internal/w5;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/vu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vu1;-><init>()V

    const-string v1, "get"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/u40;->a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/internal/w5;

    move-result-object v0

    return-object v0
.end method
