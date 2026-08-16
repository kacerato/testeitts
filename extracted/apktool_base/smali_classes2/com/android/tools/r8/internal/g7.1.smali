.class public final Lcom/android/tools/r8/internal/g7;
.super Lcom/android/tools/r8/internal/A70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/A70;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 3
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p7, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p7, p7, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object p7, p7, Lcom/android/tools/r8/graph/u1$b;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/g7;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)V

    return-object p3

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/g7;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object p7

    invoke-virtual {p2, p7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/A70;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)V

    return-object p3

    .line 7
    :cond_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/g7;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/android/tools/r8/internal/g7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_2
    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 4

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v1, v0, Lcom/android/tools/r8/internal/Im0;

    if-eqz v1, :cond_1

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Im0;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$b;->b:Lcom/android/tools/r8/graph/l1;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$b;->a:Lcom/android/tools/r8/graph/l1;

    .line 19
    :goto_0
    invoke-interface {p2, p3, p1, v0, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 20
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/A70;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/F1;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of p1, p1, Lcom/android/tools/r8/internal/em0;

    return p1
.end method

.method public final b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$b;->f:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/d61;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/d61;-><init>()V

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p3

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/vh;->v2()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 10
    const-string v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x1

    .line 11
    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    return-void

    .line 12
    :cond_0
    const-string v1, "false"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p2, p1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    :cond_1
    return-void
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$b;->d:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
