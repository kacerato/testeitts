.class public final Lcom/android/tools/r8/internal/Cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/KD;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/E8;

.field public final c:Lcom/android/tools/r8/internal/nJ$h;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/E8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cj;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cj;->b:Lcom/android/tools/r8/internal/E8;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cj;->c:Lcom/android/tools/r8/internal/nJ$h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/U;
    .locals 0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    iget-object p5, p0, Lcom/android/tools/r8/internal/Cj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/i;->i()Z

    iget-object p5, p0, Lcom/android/tools/r8/internal/Cj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/shaking/i;

    iget-object p5, p5, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    invoke-interface {p5, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Cj;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget-boolean p4, p4, Lcom/android/tools/r8/internal/nJ$h;->l:Z

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->e:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cj;->b:Lcom/android/tools/r8/internal/E8;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/E8;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->c:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_1

    :cond_2
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/Cj;->b:Lcom/android/tools/r8/internal/E8;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/E8;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    goto :goto_0

    :cond_3
    instance-of p1, p6, Lcom/android/tools/r8/internal/P60;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->A()Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->d:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->e:Lcom/android/tools/r8/ir/optimize/U;

    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ$p;->r0:Ljava/util/Set;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/internal/Cx0;->a(Ljava/util/Set;)V

    :cond_7
    return-object p1
.end method
