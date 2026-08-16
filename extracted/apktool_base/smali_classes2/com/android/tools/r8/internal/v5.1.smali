.class public Lcom/android/tools/r8/internal/v5;
.super Lcom/android/tools/r8/internal/x5;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/F5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/x5;-><init>(Lcom/android/tools/r8/graph/v2;)V

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/v5;->b:Lcom/android/tools/r8/internal/F5;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/x5;-><init>(Lcom/android/tools/r8/graph/v2;)V

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/internal/v5;->b:Lcom/android/tools/r8/internal/F5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/Jv1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Jv1;-><init>(Lcom/android/tools/r8/internal/v5;)V

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/Kv1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/Kv1;-><init>(Lcom/android/tools/r8/internal/v5;Lcom/android/tools/r8/graph/y;)V

    .line 12
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/I2;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 8

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/v5;->b:Lcom/android/tools/r8/internal/F5;

    invoke-interface {v1, v0, p2}, Lcom/android/tools/r8/internal/F5;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method

.method public a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->C:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 0

    .line 14
    invoke-virtual {p0, p3, p5}, Lcom/android/tools/r8/internal/v5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 15
    iget-object p2, p5, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 16
    invoke-interface {p4, p1, p2}, Lcom/android/tools/r8/internal/q5;->s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p2, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/v5;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 3
    iput-object v1, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v1, 0x1009

    .line 4
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 5
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Lv1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Lv1;-><init>(Lcom/android/tools/r8/internal/v5;Lcom/android/tools/r8/graph/y;)V

    .line 7
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method
