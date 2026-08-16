.class public final Lcom/android/tools/r8/internal/pK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Cs0;
.implements Lcom/android/tools/r8/internal/Es0;
.implements Lcom/android/tools/r8/internal/zs0;
.implements Lcom/android/tools/r8/internal/As0;
.implements Lcom/android/tools/r8/internal/Bs0;
.implements Lcom/android/tools/r8/internal/Ds0;
.implements Lcom/android/tools/r8/internal/Gs0;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Zd;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pK;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    iput-object p1, p0, Lcom/android/tools/r8/internal/pK;->b:Lcom/android/tools/r8/internal/Zd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/pK;->b:Lcom/android/tools/r8/internal/Zd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pK;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 23
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v0

    if-ne v2, v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pK;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/pK;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/pK;->a:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 37
    new-instance v1, Lcom/android/tools/r8/internal/RB;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/RB;-><init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 3
    iget-object p1, p2, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 7
    iget-object p1, p2, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pK;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
