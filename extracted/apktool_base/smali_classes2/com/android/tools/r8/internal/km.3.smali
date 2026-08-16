.class public final Lcom/android/tools/r8/internal/km;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot prevent the desugaring of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v0, v2, :cond_2

    return-object v1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/tools/r8/internal/km;->a(Lcom/android/tools/r8/graph/J4;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/D5;)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 14
    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J4;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->g()Lcom/android/tools/r8/graph/Z5;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    .line 20
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->b()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 22
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preventing the desugaring of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " which could be an invalid escape into the program. "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return-void
.end method
