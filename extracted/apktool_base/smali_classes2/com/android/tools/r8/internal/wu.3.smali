.class public final Lcom/android/tools/r8/internal/wu;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wu;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 6

    iget-object p2, p0, Lcom/android/tools/r8/internal/wu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    iget-object p5, p0, Lcom/android/tools/r8/internal/wu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p5

    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object p5, p5, Lcom/android/tools/r8/graph/J1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne p2, p5, :cond_4

    iget-object p2, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/wu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p7

    if-eqz p7, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p7, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p5

    iget-object p5, p5, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p5}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p7

    if-eqz p7, :cond_4

    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p7, p7, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    if-eq p7, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object p7

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p1, p7, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v2, v1, p6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, p6, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    move-object v3, p4

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {p3, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object p3
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
