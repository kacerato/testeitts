.class public abstract Lcom/android/tools/r8/internal/Ix0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/Ix0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->k()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    if-ne p3, v2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p0

    xor-int/lit8 v4, p0, 0x1

    :goto_1
    if-eqz v4, :cond_b

    :cond_5
    sget-boolean p0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object p0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    return-object p0

    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v4

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p0

    xor-int/lit8 v4, p0, 0x1

    :goto_2
    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    return-object p1
.end method
