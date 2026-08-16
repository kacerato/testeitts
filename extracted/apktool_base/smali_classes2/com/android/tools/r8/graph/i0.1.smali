.class public abstract Lcom/android/tools/r8/graph/i0;
.super Lcom/android/tools/r8/graph/E;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/E;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;
    .locals 9

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/graph/i0;->d:Z

    if-nez v1, :cond_1

    .line 10
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/B60;->f:Z

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_4

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result p2

    if-nez p2, :cond_5

    .line 15
    iget-boolean p2, v0, Lcom/android/tools/r8/internal/B60;->e:Z

    if-nez p2, :cond_5

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of p2, p0, Lcom/android/tools/r8/internal/y60;

    if-eqz p2, :cond_e

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->a()Lcom/android/tools/r8/internal/y60;

    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/android/tools/r8/internal/y60;->h:Lcom/android/tools/r8/internal/AH;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    :goto_2
    if-gt v4, v1, :cond_9

    move v6, v2

    .line 23
    :goto_3
    iget-object v7, p2, Lcom/android/tools/r8/internal/AH;->b:[I

    .line 24
    array-length v8, v7

    if-ge v6, v8, :cond_7

    .line 25
    aget v7, v7, v6

    if-ne v7, v4, :cond_6

    .line 26
    iget-object v7, p2, Lcom/android/tools/r8/internal/AH;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Mq0;

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move-object v6, v3

    .line 27
    :goto_4
    check-cast v6, Lcom/android/tools/r8/internal/B60;

    if-eqz v6, :cond_8

    move-object v5, v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 28
    :cond_9
    sget-boolean p2, Lcom/android/tools/r8/graph/i0;->d:Z

    if-nez p2, :cond_b

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 31
    invoke-virtual {v5, p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 32
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 33
    invoke-virtual {p1, v0, v5}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v5

    :cond_e
    if-nez v1, :cond_10

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_10
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 37
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 39
    iget-object v3, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 40
    iput-object v3, v2, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 41
    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v1, :cond_13

    if-nez p2, :cond_12

    goto :goto_7

    .line 42
    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_13
    :goto_7
    if-nez v1, :cond_15

    .line 43
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    if-eqz p2, :cond_14

    goto :goto_8

    .line 44
    :cond_14
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_15
    :goto_8
    if-nez v1, :cond_18

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_9

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 46
    :cond_17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    .line 47
    :cond_18
    :goto_9
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    .line 48
    iput-boolean p0, v2, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 49
    :cond_19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/l0;

    return v0
.end method

.method public C()Lcom/android/tools/r8/graph/J0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/l0;

    return v0
.end method

.method public D0()V
    .locals 0

    return-void
.end method

.method public Q()Lcom/android/tools/r8/graph/a6;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public V()Lcom/android/tools/r8/graph/G;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asCfCode()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;
    .locals 0

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected attempt to build IR graph for inlining from: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
.end method

.method public a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
.end method

.method public a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
.end method

.method public k(I)I
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l0()Lcom/android/tools/r8/graph/P;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asCfWritableCode()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m0()Lcom/android/tools/r8/graph/f3;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asDexWritableCode()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n0()Lcom/android/tools/r8/graph/u4;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asLazyCfCode()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o0()Lcom/android/tools/r8/internal/WS;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0()V
    .locals 0

    return-void
.end method

.method public abstract q0()I
.end method

.method public r0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/J;

    return v0
.end method

.method public s0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/l0;

    return v0
.end method

.method public v0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/l0;

    return v0
.end method

.method public abstract x0()Z
.end method

.method public y0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
