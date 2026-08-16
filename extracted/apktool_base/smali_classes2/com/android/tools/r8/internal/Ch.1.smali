.class public abstract Lcom/android/tools/r8/internal/Ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/Ch;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v1, v2, :cond_1

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_4

    .line 32
    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2

    .line 33
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of p1, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/OB;->a:Lcom/android/tools/r8/internal/OB;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    return-object p0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p0

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v2, v3, :cond_2

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v2, v0, :cond_3

    .line 14
    :cond_2
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method
