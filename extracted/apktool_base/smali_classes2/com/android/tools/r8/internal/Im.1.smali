.class public Lcom/android/tools/r8/internal/Im;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Lcom/android/tools/r8/internal/fB;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/tools/r8/internal/Mo0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return v3

    :cond_2
    instance-of v2, v1, Lcom/android/tools/r8/internal/bE;

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v2

    if-nez v2, :cond_b

    instance-of v2, v1, Lcom/android/tools/r8/internal/P3;

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->F()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    instance-of v2, v1, Lcom/android/tools/r8/internal/OJ;

    if-nez v2, :cond_b

    instance-of v2, v1, Lcom/android/tools/r8/internal/YJ;

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->z1()Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    instance-of v2, v1, Lcom/android/tools/r8/internal/bY;

    if-eqz v2, :cond_9

    return v3

    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/internal/Im;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/tools/r8/internal/C4;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->n2()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/tools/r8/internal/WX;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/tools/r8/internal/mE;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instruction that impacts determinism: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_b
    :goto_1
    return v3

    :cond_c
    const/4 p0, 0x1

    return p0
.end method
