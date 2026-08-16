.class public abstract Lcom/android/tools/r8/internal/H9;
.super Lcom/android/tools/r8/internal/D1;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D1;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 23
    invoke-interface {p6}, Lcom/android/tools/r8/internal/jy;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p2}, Lcom/android/tools/r8/internal/O8;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 25
    invoke-interface {p6, p1, p2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p4, p5, p6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0

    .line 28
    :cond_0
    invoke-static {p3}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 29
    invoke-static {p1, p6}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 30
    const-string p2, "on stack"

    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/DG0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/DG0;-><init>(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/S60;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/H9;->c(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 35
    invoke-interface {p0, p2, p3, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0
.end method

.method public static a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 19
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 20
    invoke-static {p0}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 21
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 22
    const-string p2, "on stack"

    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 33
    invoke-interface {p3}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Lcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/Kw0;I)Lcom/android/tools/r8/internal/hv;
    .locals 2

    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p1}, Lcom/android/tools/r8/internal/hv;->a(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at local index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/jy;
    .locals 0

    .line 43
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p0

    :cond_0
    sget p0, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/qt0;->c:Lcom/android/tools/r8/internal/qt0;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/zG0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/zG0;-><init>(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/S60;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/H9;->c(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 12
    invoke-interface {p0, p2, p3, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0
.end method

.method public static b(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 6
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/H9;

    return-object p0

    .line 8
    :cond_0
    sget p0, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    const/4 p1, 0x2

    .line 9
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 10
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string p2, "on stack"

    invoke-static {p1, p0, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/internal/H9;->b:Z

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/wG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wG0;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/H9;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/H9;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/H9;
    .locals 9

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    instance-of v0, p2, Lcom/android/tools/r8/internal/q7;

    if-nez v0, :cond_1d

    .line 46
    instance-of v0, p0, Lcom/android/tools/r8/internal/hv;

    if-eqz v0, :cond_0

    return-object p0

    .line 47
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/q7;

    if-nez v0, :cond_1c

    .line 48
    instance-of v0, p2, Lcom/android/tools/r8/internal/hv;

    if-eqz v0, :cond_1

    return-object p2

    .line 49
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/H9;->b:Z

    if-nez v0, :cond_3

    .line 50
    instance-of v1, p0, Lcom/android/tools/r8/internal/kg;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 52
    instance-of v0, p2, Lcom/android/tools/r8/internal/kg;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H9;->d()Lcom/android/tools/r8/internal/kg;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/H9;->d()Lcom/android/tools/r8/internal/kg;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v1

    .line 56
    iget-object v2, p2, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 57
    iget-object v3, v0, Lcom/android/tools/r8/internal/kg;->c:Lcom/android/tools/r8/internal/zF;

    .line 58
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zF;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/jF;

    .line 59
    new-instance v4, Lcom/android/tools/r8/internal/mF;

    .line 60
    iget-object v3, v3, Lcom/android/tools/r8/internal/jF;->c:Lcom/android/tools/r8/internal/zF;

    .line 61
    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/mF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    .line 62
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zF;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jF;

    .line 63
    new-instance v3, Lcom/android/tools/r8/internal/mF;

    .line 64
    iget-object v2, v2, Lcom/android/tools/r8/internal/jF;->c:Lcom/android/tools/r8/internal/zF;

    .line 65
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/mF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    .line 66
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 67
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v2

    .line 68
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v5

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    .line 70
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v7

    .line 72
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/jy;

    if-ge v5, v7, :cond_8

    .line 73
    sget-boolean v2, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v2, :cond_7

    if-ge v5, v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_7
    :goto_3
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    .line 75
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_8
    if-ge v7, v5, :cond_b

    .line 76
    sget-boolean v2, Lcom/android/tools/r8/internal/kg;->f:Z

    if-nez v2, :cond_a

    if-ge v7, v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_a
    :goto_4
    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    .line 78
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->previous()Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_b
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 80
    invoke-interface {v6}, Lcom/android/tools/r8/internal/jy;->a()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 81
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object v2

    invoke-interface {v6}, Lcom/android/tools/r8/internal/jy;->x()Lcom/android/tools/r8/internal/Gm0;

    move-result-object v6

    .line 82
    invoke-interface {v2, p1, v6}, Lcom/android/tools/r8/internal/Gm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_2

    .line 83
    :cond_c
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    goto :goto_2

    .line 84
    :cond_d
    invoke-interface {v6}, Lcom/android/tools/r8/internal/jy;->n()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 85
    invoke-interface {v2}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v2

    .line 86
    invoke-interface {v6}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v6

    .line 87
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/O5;->g()Z

    move-result v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/O5;->g()Z

    move-result v8

    if-eq v7, v8, :cond_e

    .line 88
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    goto/16 :goto_2

    :cond_e
    if-ne v2, v6, :cond_f

    .line 89
    invoke-virtual {v1, v5, v2}, Lcom/android/tools/r8/internal/G9$a;->a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_5

    .line 90
    :cond_f
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/kg;->b(ILcom/android/tools/r8/internal/G9$a;)V

    .line 91
    :goto_5
    invoke-static {v5, v2, v4}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/Gx0;Lcom/android/tools/r8/internal/v30;)V

    .line 92
    invoke-static {v5, v6, v3}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/Gx0;Lcom/android/tools/r8/internal/v30;)V

    goto/16 :goto_2

    .line 93
    :cond_10
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    goto/16 :goto_2

    .line 94
    :cond_11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_7

    .line 95
    :cond_12
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/jy;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 97
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    goto :goto_6

    .line 98
    :cond_13
    invoke-static {v4, v2, v1, p3}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/v30;Lcom/android/tools/r8/internal/EF;Lcom/android/tools/r8/internal/G9$a;Ljava/util/function/UnaryOperator;)V

    .line 99
    :goto_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 100
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xF;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 101
    invoke-static {v4, v2, v1, p3}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/v30;Lcom/android/tools/r8/internal/EF;Lcom/android/tools/r8/internal/G9$a;Ljava/util/function/UnaryOperator;)V

    goto :goto_6

    .line 102
    :cond_14
    :goto_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_9

    .line 103
    :cond_15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/jy;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 105
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/G9$a;)V

    goto :goto_8

    .line 106
    :cond_16
    invoke-static {v3, v2, v1, p3}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/v30;Lcom/android/tools/r8/internal/EF;Lcom/android/tools/r8/internal/G9$a;Ljava/util/function/UnaryOperator;)V

    .line 107
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 108
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xF;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 109
    invoke-static {v3, v2, v1, p3}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/internal/v30;Lcom/android/tools/r8/internal/EF;Lcom/android/tools/r8/internal/G9$a;Ljava/util/function/UnaryOperator;)V

    goto :goto_8

    .line 110
    :cond_17
    :goto_9
    iget-object p2, p2, Lcom/android/tools/r8/internal/kg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayDeque;Lcom/android/tools/r8/internal/G9$a;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    .line 111
    :cond_18
    iget-object p1, v1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 112
    sget-object p2, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    sget-object p2, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    if-ne p1, p2, :cond_19

    .line 113
    new-instance p1, Lcom/android/tools/r8/internal/zF;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/zF;-><init>()V

    iput-object p1, v1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 114
    :cond_19
    iget-object p1, v1, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    check-cast p1, Lcom/android/tools/r8/internal/zF;

    .line 115
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/G9$a;->b()V

    .line 116
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/android/tools/r8/internal/kg;

    .line 118
    sget-boolean p3, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez p3, :cond_1b

    .line 119
    iget-object p3, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 120
    instance-of p3, p3, Lcom/android/tools/r8/internal/zF;

    if-eqz p3, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 121
    :cond_1b
    :goto_a
    iget-object p3, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 122
    check-cast p3, Lcom/android/tools/r8/internal/zF;

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/G9;->W()Ljava/util/ArrayDeque;

    move-result-object p1

    iget v0, v0, Lcom/android/tools/r8/internal/kg;->e:I

    invoke-direct {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    :cond_1c
    return-object p2

    :cond_1d
    return-object p0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;ILcom/android/tools/r8/internal/Kw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/vG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vG0;-><init>()V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/vG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vG0;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public varargs abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/bv0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final a(Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/xG0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xG0;-><init>(Lcom/android/tools/r8/internal/gt0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H9;->c(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/gt0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/AG0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/AG0;-><init>(Lcom/android/tools/r8/internal/gt0;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/BG0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/BG0;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/hv;

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Z
    .locals 1

    .line 3
    check-cast p2, Lcom/android/tools/r8/internal/H9;

    if-ne p0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/H9;->b:Z

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/H9;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 1
    check-cast p2, Lcom/android/tools/r8/internal/H9;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 6

    .line 3
    invoke-interface {p3}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/FG0;

    move-object v0, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/FG0;-><init>(Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final b(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/yG0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yG0;-><init>(Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract c(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;
.end method

.method public final c(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/CG0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/CG0;-><init>(Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/android/tools/r8/internal/kg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/hv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract f()Lcom/android/tools/r8/internal/H9;
.end method

.method public abstract g()Lcom/android/tools/r8/internal/H9;
.end method

.method public final h()Lcom/android/tools/r8/internal/H9;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/EG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/EG0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H9;->c(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object v0

    return-object v0
.end method
