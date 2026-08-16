.class public final Lcom/android/tools/r8/internal/OW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/Bq;

.field public final c:Lcom/android/tools/r8/internal/eA;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/eA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OW;->b:Lcom/android/tools/r8/internal/Bq;

    iput-object p3, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    new-instance v1, Lcom/android/tools/r8/internal/ZP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ZP0;-><init>(Lcom/android/tools/r8/internal/f6;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/OW;->d:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->b:Lcom/android/tools/r8/internal/Bq;

    .line 11
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v2

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    .line 19
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 20
    iget-object v3, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v2, Lcom/android/tools/r8/internal/cQ0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/cQ0;-><init>(Lcom/android/tools/r8/internal/OW;)V

    .line 23
    invoke-virtual {v1, p2, p3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    :cond_5
    if-nez v0, :cond_7

    .line 24
    iget-object p3, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_7
    :goto_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/A2;
    .locals 8

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->b:Lcom/android/tools/r8/internal/Bq;

    .line 39
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/tools/r8/graph/F2;

    if-eqz v0, :cond_2

    .line 43
    sget-boolean p3, Lcom/android/tools/r8/internal/OW;->d:Z

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    .line 47
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/internal/OW;->a:Lcom/android/tools/r8/graph/u1;

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/aQ0;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/internal/aQ0;-><init>(Lcom/android/tools/r8/internal/OW;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 54
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/OW;->d:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_5
    :goto_1
    invoke-interface {p3, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/OW;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/internal/OW;->d:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/OW;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 9
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->b:Lcom/android/tools/r8/internal/Bq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance p1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 32
    iget-object p2, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 33
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->b:Lcom/android/tools/r8/internal/Bq;

    .line 35
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

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

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bQ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bQ0;-><init>(Lcom/android/tools/r8/internal/OW;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OW;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OW;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
