.class public final Lcom/android/tools/r8/shaking/X;
.super Lcom/android/tools/r8/shaking/W;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/L2;

.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/graph/L2;

.field public final g:Lcom/android/tools/r8/graph/M2;

.field public final h:Lcom/android/tools/r8/graph/A2;

.field public final i:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/shaking/W;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    const-string p2, "allOf"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/X;->c:Lcom/android/tools/r8/graph/L2;

    const-string p2, "noneOf"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/X;->d:Lcom/android/tools/r8/graph/L2;

    const-string p2, "range"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/X;->e:Lcom/android/tools/r8/graph/L2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->Q:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/X;->f:Lcom/android/tools/r8/graph/L2;

    const-string p2, "Ljava/util/EnumMap;"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const-string v0, "Ljava/util/EnumSet;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/X;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->c:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/X;->h:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/X;->i:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    .line 4
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Z
    .locals 4

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->i:Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/shaking/X;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->d:Lcom/android/tools/r8/graph/L2;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->f:Lcom/android/tools/r8/graph/L2;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/X;->e:Lcom/android/tools/r8/graph/L2;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/shaking/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/X;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/shaking/X;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method
