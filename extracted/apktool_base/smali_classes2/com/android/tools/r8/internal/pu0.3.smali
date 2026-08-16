.class public abstract Lcom/android/tools/r8/internal/pu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/p10;",
            ")",
            "Lcom/android/tools/r8/internal/de;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/p10;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/pu0;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    if-ne p0, v0, :cond_2

    .line 48
    sget-boolean p0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    return-object p0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    sget-boolean p1, Lcom/android/tools/r8/internal/D70;->b:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    int-to-char p0, p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/D70;->a(CZ)Lcom/android/tools/r8/internal/D70;

    move-result-object p0

    return-object p0

    .line 53
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/internal/pu0;",
            ">;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/pu0;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v0

    .line 39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/pu0;

    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static e()Lcom/android/tools/r8/internal/n7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/n7;->d:Lcom/android/tools/r8/internal/n7;

    return-object v0
.end method

.method public static f()Lcom/android/tools/r8/internal/z7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/z7;->b:Lcom/android/tools/r8/internal/z7;

    return-object v0
.end method

.method public static g()Lcom/android/tools/r8/internal/n8;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/n8;->d:Lcom/android/tools/r8/internal/n8;

    return-object v0
.end method

.method public static h()Lcom/android/tools/r8/internal/bc;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/bc;->d:Lcom/android/tools/r8/internal/bc;

    return-object v0
.end method

.method public static i()Lcom/android/tools/r8/internal/kt;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kt;->d:Lcom/android/tools/r8/internal/kt;

    return-object v0
.end method

.method public static j()Lcom/android/tools/r8/internal/Fx;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Fx;->d:Lcom/android/tools/r8/internal/Fx;

    return-object v0
.end method

.method public static k()Lcom/android/tools/r8/internal/uI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/uI;->d:Lcom/android/tools/r8/internal/uI;

    return-object v0
.end method

.method public static l()Lcom/android/tools/r8/internal/tU;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/tU;->d:Lcom/android/tools/r8/internal/tU;

    return-object v0
.end method

.method public static m()Lcom/android/tools/r8/internal/ae0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ae0;->c:Lcom/android/tools/r8/internal/Zd0;

    return-object v0
.end method

.method public static n()Lcom/android/tools/r8/internal/Rl0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Rl0;->d:Lcom/android/tools/r8/internal/Rl0;

    return-object v0
.end method

.method public static o()Lcom/android/tools/r8/internal/Km0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Km0;->c:Lcom/android/tools/r8/internal/Km0;

    return-object v0
.end method

.method public static p()Lcom/android/tools/r8/internal/xs0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/xs0;->b:Lcom/android/tools/r8/internal/xs0;

    return-object v0
.end method

.method public static q()Lcom/android/tools/r8/internal/Hx0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Hx0;->c:Lcom/android/tools/r8/internal/Hx0;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract B()Lcom/android/tools/r8/internal/p10;
.end method

.method public C()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/z7;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/tools/r8/internal/xs0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public a()Lcom/android/tools/r8/internal/W3;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/mq1;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/mq1;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    if-eq p0, p2, :cond_17

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, p2, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_0

    return-object p0

    .line 17
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_1

    return-object p2

    .line 18
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/xs0;

    if-nez v0, :cond_16

    instance-of v0, p2, Lcom/android/tools/r8/internal/xs0;

    if-nez v0, :cond_16

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto/16 :goto_7

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p2

    if-ne p1, p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->o()Lcom/android/tools/r8/internal/Km0;

    move-result-object p1

    return-object p1

    .line 25
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/D70;->b:Z

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object p1

    return-object p1

    .line 27
    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/D70;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_9
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->q()Lcom/android/tools/r8/internal/Hx0;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez v0, :cond_c

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_c
    :goto_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object p1

    return-object p1

    .line 32
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_3
    if-nez v0, :cond_11

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_4
    if-nez v0, :cond_13

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_5
    if-nez v0, :cond_15

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1

    .line 37
    :cond_16
    :goto_7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object p1

    return-object p1

    :cond_17
    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/z7;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v1, p1, Lcom/android/tools/r8/internal/z7;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ae0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/pu0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/android/tools/r8/internal/de;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/pu0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p0, Lcom/android/tools/r8/internal/xs0;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v1, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz v1, :cond_2

    return v0

    .line 7
    :cond_2
    instance-of v1, p0, Lcom/android/tools/r8/internal/z7;

    if-eqz v1, :cond_3

    return v0

    .line 8
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    .line 11
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/pu0;->a:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/android/tools/r8/internal/D70;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/pu0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()Lcom/android/tools/r8/internal/ae0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final u()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/n7;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/n8;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Rl0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bc;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Zd0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/uI;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Fx;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/tU;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/kt;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
