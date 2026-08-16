.class public final Lcom/android/tools/r8/kotlin/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/kotlin/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 0

    .line 1
    if-ne p2, p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 50
    :cond_1
    new-instance p1, Lcom/android/tools/r8/kotlin/D1;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/kotlin/D1;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/tW;Ljava/lang/String;Lcom/android/tools/r8/internal/ML;Lcom/android/tools/r8/kotlin/Y;)Lcom/android/tools/r8/graph/r0;
    .locals 9

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-boolean v1, p4, Lcom/android/tools/r8/kotlin/Y;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Lcom/android/tools/r8/graph/t0;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/e;->b:Lcom/android/tools/r8/graph/L2;

    .line 58
    sget-object v4, Lcom/android/tools/r8/kotlin/M;->a:Lcom/android/tools/r8/internal/ML;

    .line 59
    iget v4, p3, Lcom/android/tools/r8/internal/ML;->b:I

    .line 60
    iget v5, p3, Lcom/android/tools/r8/internal/ML;->c:I

    .line 61
    iget p3, p3, Lcom/android/tools/r8/internal/ML;->d:I

    .line 62
    filled-new-array {v4, v5, p3}, [I

    move-result-object p3

    const/4 v4, 0x3

    .line 63
    new-array v5, v4, [Lcom/android/tools/r8/graph/R2;

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_0

    .line 64
    aget v7, p3, v6

    invoke-static {v7}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance p3, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {p3, v5}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 66
    invoke-direct {v1, v3, p3}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    iget-boolean p3, p4, Lcom/android/tools/r8/kotlin/Y;->a:Z

    if-eqz p3, :cond_2

    .line 69
    new-instance p3, Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    .line 70
    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->k()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 71
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    iget-boolean p3, p4, Lcom/android/tools/r8/kotlin/Y;->c:Z

    if-eqz p3, :cond_4

    .line 73
    new-instance p3, Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/e;->c:Lcom/android/tools/r8/graph/L2;

    .line 74
    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->d1()[Ljava/lang/String;

    move-result-object v3

    .line 75
    array-length v4, v3

    new-array v4, v4, [Lcom/android/tools/r8/graph/R2;

    move v5, v2

    .line 76
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 77
    new-instance v6, Lcom/android/tools/r8/graph/R2$k;

    iget-object v7, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 78
    :cond_3
    new-instance v3, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 79
    invoke-direct {p3, v1, v3}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 80
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_4
    iget-boolean p3, p4, Lcom/android/tools/r8/kotlin/Y;->d:Z

    if-eqz p3, :cond_6

    .line 82
    new-instance p3, Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/e;->d:Lcom/android/tools/r8/graph/L2;

    .line 83
    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->d2()[Ljava/lang/String;

    move-result-object v3

    .line 84
    array-length v4, v3

    new-array v4, v4, [Lcom/android/tools/r8/graph/R2;

    .line 85
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_5

    .line 86
    new-instance v5, Lcom/android/tools/r8/graph/R2$k;

    iget-object v6, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_5
    new-instance v2, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 88
    invoke-direct {p3, v1, v2}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 89
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    iget-boolean p3, p4, Lcom/android/tools/r8/kotlin/Y;->f:Z

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 91
    new-instance p3, Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/e;->f:Lcom/android/tools/r8/graph/L2;

    new-instance v2, Lcom/android/tools/r8/graph/R2$k;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    .line 92
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-direct {p3, v1, v2}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 93
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_7
    iget-boolean p2, p4, Lcom/android/tools/r8/kotlin/Y;->e:Z

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xs()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 95
    new-instance p2, Lcom/android/tools/r8/graph/t0;

    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object p3, p3, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object p3, p3, Lcom/android/tools/r8/kotlin/e;->e:Lcom/android/tools/r8/graph/L2;

    new-instance v1, Lcom/android/tools/r8/graph/R2$k;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    .line 96
    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-direct {p2, p3, v1}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 97
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_8
    iget-boolean p2, p4, Lcom/android/tools/r8/kotlin/Y;->g:Z

    if-eqz p2, :cond_9

    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xi()I

    move-result p2

    if-eqz p2, :cond_9

    .line 99
    new-instance p2, Lcom/android/tools/r8/graph/t0;

    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object p3, p3, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object p3, p3, Lcom/android/tools/r8/kotlin/e;->g:Lcom/android/tools/r8/graph/L2;

    .line 100
    invoke-interface {p1}, Lcom/android/tools/r8/internal/tW;->xi()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9
    new-instance p1, Lcom/android/tools/r8/graph/e1;

    iget-object p2, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    sget-object p3, Lcom/android/tools/r8/graph/t0;->d:[Lcom/android/tools/r8/graph/t0;

    .line 103
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/tools/r8/graph/t0;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    .line 104
    new-instance p2, Lcom/android/tools/r8/graph/r0;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/kotlin/Y;)Ljava/lang/Boolean;
    .locals 4

    .line 31
    const-string v0, ""

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/tW;

    .line 33
    invoke-interface {p3}, Lcom/android/tools/r8/kotlin/p;->r()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-interface {p3}, Lcom/android/tools/r8/kotlin/p;->u()Lcom/android/tools/r8/internal/ML;

    move-result-object p3

    .line 35
    sget-object v2, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v3

    if-ltz v3, :cond_0

    move-object p3, v2

    .line 36
    :cond_0
    invoke-virtual {p0, p2, v1, p3, p4}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/internal/tW;Ljava/lang/String;Lcom/android/tools/r8/internal/ML;Lcom/android/tools/r8/kotlin/Y;)Lcom/android/tools/r8/graph/r0;

    move-result-object p2

    .line 37
    :try_start_0
    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 38
    invoke-static {p3, p1}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/internal/NQ;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/NQ;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object p2, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 40
    invoke-static {p3, p2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/internal/NQ;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/NQ;)Ljava/lang/String;

    move-result-object p2

    .line 41
    sget-boolean p3, Lcom/android/tools/r8/kotlin/Z;->d:Z

    if-nez p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The metadata should be equivalent"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lcom/android/tools/r8/kotlin/W; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 45
    invoke-static {p1, p2}, Lcom/android/tools/r8/kotlin/T;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Throwable;)Lcom/android/tools/r8/kotlin/T;

    move-result-object p1

    const/4 p2, 0x0

    .line 46
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 47
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/kotlin/Y;)V
    .locals 7

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p2, p1, v0}, Lcom/android/tools/r8/kotlin/p;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o50;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->P0:Z

    if-eqz v0, :cond_1

    .line 19
    sget-boolean p3, Lcom/android/tools/r8/kotlin/Z;->d:Z

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/kotlin/E1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/kotlin/E1;-><init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/kotlin/Y;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/tW;

    .line 21
    invoke-interface {p2}, Lcom/android/tools/r8/kotlin/p;->r()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/kotlin/p;->u()Lcom/android/tools/r8/internal/ML;

    move-result-object p2

    .line 23
    sget-object v2, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v3

    if-ltz v3, :cond_2

    move-object p2, v2

    .line 24
    :cond_2
    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/internal/tW;Ljava/lang/String;Lcom/android/tools/r8/internal/ML;Lcom/android/tools/r8/kotlin/Y;)Lcom/android/tools/r8/graph/r0;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p4

    new-instance v0, Lcom/android/tools/r8/kotlin/F1;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/kotlin/F1;-><init>(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    .line 26
    iput-object p2, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 27
    :goto_0
    sget-boolean p3, Lcom/android/tools/r8/kotlin/Z;->d:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    new-instance p4, Lcom/android/tools/r8/kotlin/G1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/tools/r8/kotlin/G1;-><init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/E0;Ljava/lang/Throwable;)V

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-static {p1, p2}, Lcom/android/tools/r8/kotlin/T;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Throwable;)Lcom/android/tools/r8/kotlin/T;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/kotlin/Y;Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 105
    iget-object v0, p3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 106
    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->c:Lcom/android/tools/r8/kotlin/a0;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    sget-object v2, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-eq v0, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 110
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 111
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 112
    iget-object v3, v2, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 113
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 114
    invoke-virtual {v3, p3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v3

    .line 115
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, p3, v0, v1, p2}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/kotlin/Y;)V

    return-void

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/kotlin/C1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/kotlin/C1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {v0}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 120
    iput-object p1, p3, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/kotlin/Y;Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/kotlin/z1;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/kotlin/z1;-><init>(Lcom/android/tools/r8/internal/U6;)V

    .line 14
    invoke-static {v1, p3, v0, v2, v3}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/r0;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)Lcom/android/tools/r8/kotlin/p;

    move-result-object p1

    .line 15
    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-ne p1, v1, :cond_1

    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/kotlin/Y;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, v0, Lcom/android/tools/r8/naming/p0;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/Y;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/kotlin/Y;-><init>(ZZZZZZZ)V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/B1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/tools/r8/kotlin/B1;-><init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/kotlin/Y;)V

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-static {v0, v2, v3, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, v0, Lcom/android/tools/r8/kotlin/Z;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/tools/r8/kotlin/Y;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/kotlin/Y;-><init>(ZZZZZZZ)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/tools/r8/kotlin/Y;

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v12

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->b:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v13

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->c:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v14

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->d:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v15

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->e:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v16

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->f:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v17

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/Z;->c:Lcom/android/tools/r8/kotlin/g;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v5, v5, Lcom/android/tools/r8/kotlin/e;->g:Lcom/android/tools/r8/graph/L2;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Z

    move-result v18

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/android/tools/r8/kotlin/Y;-><init>(ZZZZZZZ)V

    move-object v2, v3

    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/kotlin/A1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/tools/r8/kotlin/A1;-><init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/kotlin/Y;)V

    iget-object v1, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v2, p1

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/android/tools/r8/kotlin/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method
