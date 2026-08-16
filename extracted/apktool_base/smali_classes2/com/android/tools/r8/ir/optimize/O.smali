.class public Lcom/android/tools/r8/ir/optimize/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/ir/optimize/O;

.field public static final d:Lcom/android/tools/r8/ir/optimize/O;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/ir/optimize/N;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->h:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/N;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/O;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/ir/optimize/N;->h:Lcom/android/tools/r8/ir/optimize/N;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/O;->e:Z

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->h:Lcom/android/tools/r8/ir/optimize/N;

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/tools/r8/ir/optimize/g0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object p2, Lcom/android/tools/r8/ir/optimize/N;->e:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-ne p1, p0, :cond_3

    .line 9
    new-instance p0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object p2, Lcom/android/tools/r8/ir/optimize/N;->d:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    .line 10
    :cond_3
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    new-instance p0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object p2, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 17
    new-instance p0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object p2, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    .line 18
    :cond_6
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 22
    new-instance p0, Lcom/android/tools/r8/ir/optimize/O;

    sget-object p2, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p0

    .line 23
    :cond_8
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 31
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 32
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-static {p2, p1, v0, p0}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/ir/optimize/O;",
            "Lcom/android/tools/r8/ir/optimize/O;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/ir/optimize/O;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/O;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_15

    .line 34
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 35
    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_2

    .line 38
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 39
    :cond_2
    sget-object v0, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    if-ne p1, v0, :cond_3

    goto/16 :goto_15

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    iget v0, v0, Lcom/android/tools/r8/ir/optimize/N;->b:I

    iget-object v2, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    iget v2, v2, Lcom/android/tools/r8/ir/optimize/N;->b:I

    or-int/2addr v0, v2

    .line 41
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/O;->e:Z

    if-nez v2, :cond_5

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_0
    if-nez v2, :cond_7

    .line 42
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->h:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 43
    :cond_7
    :goto_1
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->d:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v2, :cond_9

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 45
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_c

    if-nez v2, :cond_b

    .line 46
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    if-eq p0, p1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 47
    :cond_b
    :goto_3
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 48
    :cond_c
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->e:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_e

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/g0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_15

    .line 50
    :cond_d
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 51
    :cond_e
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_10

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto/16 :goto_15

    .line 55
    :cond_f
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    :cond_10
    if-nez v2, :cond_12

    .line 56
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_11

    goto :goto_4

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :cond_12
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_15

    .line 58
    :cond_13
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 59
    :cond_14
    sget-object v3, Lcom/android/tools/r8/ir/optimize/N;->e:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-nez v2, :cond_16

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v3, :cond_15

    goto :goto_5

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 61
    :cond_16
    :goto_5
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v3, :cond_18

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/g0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto/16 :goto_15

    .line 63
    :cond_17
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    :cond_18
    if-nez v2, :cond_21

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v2, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_6

    .line 67
    :cond_19
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 68
    :cond_1a
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_a

    .line 69
    :cond_1b
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_7

    :cond_1c
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_7
    if-nez v2, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_8

    .line 70
    :cond_1d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 71
    :cond_1e
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/p5;

    .line 72
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/O;->e:Z

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_20
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 73
    :cond_21
    :goto_a
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_23

    .line 74
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto/16 :goto_15

    .line 77
    :cond_22
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 78
    :cond_23
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/O;->e:Z

    if-nez v1, :cond_25

    sget-object v2, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v2, :cond_24

    goto :goto_b

    :cond_24
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 79
    :cond_25
    :goto_b
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 80
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_27

    if-eqz v1, :cond_26

    goto :goto_d

    .line 81
    :cond_26
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 82
    :cond_27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-nez v2, :cond_28

    .line 83
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    goto :goto_e

    .line 84
    :cond_28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_c

    :cond_29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_2b

    if-eqz v1, :cond_2a

    goto :goto_d

    .line 85
    :cond_2a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 86
    :cond_2b
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/p5;

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v1

    if-nez v1, :cond_2c

    :goto_d
    const/4 p1, 0x0

    goto :goto_e

    :cond_2d
    const/4 p1, 0x1

    :goto_e
    if-eqz p1, :cond_2e

    goto/16 :goto_15

    .line 88
    :cond_2e
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    .line 89
    :cond_2f
    sget-object v3, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-nez v2, :cond_31

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v3, :cond_30

    goto :goto_f

    :cond_30
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 91
    :cond_31
    :goto_f
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v3, :cond_35

    if-nez v2, :cond_33

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v0, :cond_32

    goto :goto_10

    :cond_32
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 93
    :cond_33
    :goto_10
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 94
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto/16 :goto_15

    .line 96
    :cond_34
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    :cond_35
    if-nez v2, :cond_37

    .line 97
    sget-object v2, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v2, :cond_36

    goto :goto_11

    :cond_36
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 98
    :cond_37
    :goto_11
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    .line 99
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_15

    .line 101
    :cond_38
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 102
    new-instance p1, Lcom/android/tools/r8/ir/optimize/O;

    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 103
    :cond_39
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0

    :cond_3a
    if-nez v2, :cond_3c

    .line 104
    sget-object v1, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ir/optimize/N;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_12

    :cond_3b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3c
    :goto_12
    if-nez v2, :cond_3e

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v0, v1, :cond_3d

    goto :goto_13

    :cond_3d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3e
    :goto_13
    if-nez v2, :cond_40

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_3f

    goto :goto_14

    :cond_3f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 107
    :cond_40
    :goto_14
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    :goto_15
    return-object p0

    .line 108
    :cond_41
    iget-object v0, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0, p0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    if-eqz p0, :cond_42

    return-object p1

    .line 109
    :cond_42
    sget-object p0, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/ir/optimize/O;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/ir/optimize/O;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/O;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method
