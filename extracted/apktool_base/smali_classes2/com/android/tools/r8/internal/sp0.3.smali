.class public final Lcom/android/tools/r8/internal/sp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/YR;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Uc0;

.field public final synthetic b:Lcom/android/tools/r8/internal/tp0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/tp0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/sp0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/sp0;->c:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_3

    .line 11
    :cond_5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_3

    .line 12
    :cond_6
    iget-object v2, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v3

    const/16 v4, 0x28

    const/16 v5, 0x9

    if-eq v3, v5, :cond_b

    if-eq v3, v4, :cond_9

    const/16 v6, 0x31

    if-eq v3, v6, :cond_7

    goto/16 :goto_3

    .line 14
    :cond_7
    sget-boolean v3, Lcom/android/tools/r8/internal/sp0;->c:Z

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 17
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 18
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 19
    :cond_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_b
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 22
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v6

    if-eq v6, v5, :cond_17

    const/16 v7, 0x19

    if-eq v6, v7, :cond_d

    const/16 v7, 0x21

    if-eq v6, v7, :cond_14

    const/16 v7, 0x26

    if-eq v6, v7, :cond_12

    if-eq v6, v4, :cond_e

    goto/16 :goto_3

    .line 24
    :cond_e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v3

    .line 25
    iget-object v6, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_f

    goto/16 :goto_3

    .line 27
    :cond_f
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 28
    iget-object v7, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    .line 29
    iget-object v7, v7, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 30
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_10
    iget-object v7, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v8, v7, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v8, :cond_11

    iget-object v7, v7, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v7, :cond_16

    .line 34
    :cond_11
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    .line 35
    :cond_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 37
    iget-object v7, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/tp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v7, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v8, :cond_13

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1$d;->A:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v7, :cond_16

    .line 38
    :cond_13
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    .line 39
    :cond_14
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    .line 40
    iget-object v6, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_15

    goto :goto_3

    .line 42
    :cond_15
    iget-object v6, p0, Lcom/android/tools/r8/internal/sp0;->b:Lcom/android/tools/r8/internal/tp0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/tp0;->d:Lcom/android/tools/r8/graph/q2;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 43
    iget-object v6, v6, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 44
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_16
    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    .line 45
    :cond_17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    const/4 p1, 0x1

    .line 46
    :goto_4
    new-instance v1, Lcom/android/tools/r8/internal/et1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/et1;-><init>(Lcom/android/tools/r8/internal/sp0;Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(ZLcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/sp0;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return-void
.end method
