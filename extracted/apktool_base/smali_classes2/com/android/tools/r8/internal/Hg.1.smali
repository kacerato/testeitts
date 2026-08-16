.class public final Lcom/android/tools/r8/internal/Hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Zc;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/v50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/v50;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Hg;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/wv0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/FF;ILcom/android/tools/r8/internal/u50;)V
    .locals 2

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p0

    invoke-interface {p1, p0, p3}, Lcom/android/tools/r8/internal/DF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/Zc;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, v0, Lcom/android/tools/r8/internal/v7;

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    const/16 v1, 0x10

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QF;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/v50;->d()Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/pH0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/pH0;-><init>(Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/FF;)V

    .line 7
    iget-object p1, v1, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NF;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/JF;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 11
    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 12
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/EF;

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Hg;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    goto :goto_1

    .line 17
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/O00;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/O00;-><init>(Lcom/android/tools/r8/internal/QF;)V

    move-object v0, v1

    .line 18
    :goto_1
    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Hg;-><init>(Lcom/android/tools/r8/internal/v50;)V

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/t50;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/v50;->a(I)Lcom/android/tools/r8/internal/u50;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u50;->c()Lcom/android/tools/r8/internal/t50;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Z
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/v50;->a(I)Lcom/android/tools/r8/internal/u50;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u50;->c()Lcom/android/tools/r8/internal/t50;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v0, p1, Lcom/android/tools/r8/internal/t7;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/uv0;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t50;->b()Lcom/android/tools/r8/internal/M00;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, p3, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;ILcom/android/tools/r8/internal/Q30;Lcom/android/tools/r8/graph/H5;)Z
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hg;->a:Lcom/android/tools/r8/internal/v50;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/v50;->a(I)Lcom/android/tools/r8/internal/u50;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/u50;->c()Lcom/android/tools/r8/internal/t50;

    move-result-object p3

    .line 36
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v0, p3, Lcom/android/tools/r8/internal/t7;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 38
    :cond_0
    instance-of v0, p3, Lcom/android/tools/r8/internal/uv0;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 39
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/t50;->b()Lcom/android/tools/r8/internal/M00;

    move-result-object p3

    .line 40
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/M00;->d:Z

    if-eqz v0, :cond_2

    return v2

    .line 41
    :cond_2
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/M00;->f:Z

    if-eqz v0, :cond_3

    return v2

    .line 42
    :cond_3
    iget-object v0, p3, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 44
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v4, p2, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    :goto_0
    return v2

    .line 47
    :cond_7
    iget-object p2, p3, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    .line 48
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    .line 49
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 50
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object p3

    if-nez p3, :cond_9

    return v2

    .line 51
    :cond_9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 53
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 54
    :cond_a
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->L()Lcom/android/tools/r8/internal/Bm0;

    move-result-object p3

    .line 55
    invoke-virtual {p3, p1, p5}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    if-nez p3, :cond_8

    return v2

    :cond_b
    return v1
.end method
