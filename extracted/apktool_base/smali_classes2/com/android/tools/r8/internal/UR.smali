.class public final Lcom/android/tools/r8/internal/UR;
.super Lcom/android/tools/r8/graph/g6;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/VR;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/VR;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/UR;->f:Lcom/android/tools/r8/internal/VR;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, p1}, Lcom/android/tools/r8/graph/g6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    :cond_0
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/UR;->f:Lcom/android/tools/r8/internal/VR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/VR;->a:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UR;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/pY0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pY0;-><init>(Lcom/android/tools/r8/internal/UR;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    :cond_0
    return-void
.end method
