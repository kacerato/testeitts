.class public Lcom/android/tools/r8/graph/proto/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/proto/c$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/internal/iG;

.field public static final f:Lcom/android/tools/r8/graph/proto/c;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/iG;

.field public final b:I

.field public final c:Lcom/android/tools/r8/graph/proto/d;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iG;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/proto/c;->e:Lcom/android/tools/r8/internal/iG;

    new-instance v0, Lcom/android/tools/r8/graph/proto/c;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/proto/c;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/graph/proto/c;->e:Lcom/android/tools/r8/internal/iG;

    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/proto/f;->a:Lcom/android/tools/r8/graph/proto/f;

    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/iG;ILcom/android/tools/r8/graph/proto/d;Z)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/proto/c;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iG;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/graph/proto/c;->e:Lcom/android/tools/r8/internal/iG;

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iG;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v1, p3, Lcom/android/tools/r8/graph/proto/f;

    if-eqz v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "should use empty."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    if-ltz p2, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_9
    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    .line 15
    iput p2, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    .line 16
    iput-object p3, p0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 17
    iput-boolean p4, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/jG;)I
    .locals 3

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/EF;

    .line 9
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/proto/b;

    if-lt v2, p0, :cond_2

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/graph/proto/c;->g:Z

    if-nez p1, :cond_3

    if-gt v2, p0, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static a()Lcom/android/tools/r8/graph/proto/c$a;
    .locals 1

    .line 29
    new-instance v0, Lcom/android/tools/r8/graph/proto/c$a;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/proto/c$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/proto/c$a;ILcom/android/tools/r8/graph/proto/b;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iG;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/c$a;ILcom/android/tools/r8/graph/proto/b;)V
    .locals 0

    .line 27
    invoke-virtual {p5, p0, p1, p2}, Lcom/android/tools/r8/graph/proto/b;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p0

    if-eq p0, p5, :cond_0

    .line 28
    invoke-virtual {p3, p4, p0}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/tools/r8/graph/proto/b;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/graph/proto/b;->a:Lcom/android/tools/r8/graph/proto/a;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/proto/b;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/c;
    .locals 10

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 35
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/proto/c$a;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/iG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/SF;

    .line 38
    new-instance v2, Lcom/android/tools/r8/internal/VF;

    .line 39
    iget-object v1, v1, Lcom/android/tools/r8/internal/SF;->c:Lcom/android/tools/r8/internal/iG;

    .line 40
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/VF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    .line 41
    iget-object v1, p1, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/iG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/SF;

    .line 42
    new-instance v3, Lcom/android/tools/r8/internal/VF;

    .line 43
    iget-object v1, v1, Lcom/android/tools/r8/internal/SF;->c:Lcom/android/tools/r8/internal/iG;

    .line 44
    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/VF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    const/4 v1, 0x0

    move v4, v1

    .line 45
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v5

    .line 47
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v6

    .line 48
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/proto/b;

    .line 49
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/EF;

    .line 51
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->previous()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 52
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v8

    add-int v9, v6, v4

    if-gt v8, v9, :cond_4

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v7

    .line 54
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/proto/b;

    .line 55
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 56
    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v7

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->b()Lcom/android/tools/r8/internal/UF;

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_7

    .line 59
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v8

    add-int v9, v6, v4

    if-ne v8, v9, :cond_7

    .line 60
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/proto/b;

    .line 61
    sget-boolean v8, Lcom/android/tools/r8/graph/proto/c;->g:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_6
    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/graph/proto/b;->a(Lcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    :cond_7
    add-int/2addr v6, v4

    .line 63
    invoke-virtual {v0, v6, v5}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    goto :goto_0

    .line 64
    :cond_8
    iget v2, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_9

    .line 65
    new-instance v2, Lcom/android/tools/r8/internal/ME;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ME;-><init>()V

    goto :goto_3

    :cond_9
    new-instance v2, Lcom/android/tools/r8/internal/hF;

    const/16 v3, 0x10

    .line 66
    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    :goto_3
    const/4 v3, -0x1

    .line 67
    iput v3, v2, Lcom/android/tools/r8/internal/K;->b:I

    move v3, v1

    .line 68
    :goto_4
    iget v4, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    if-ge v3, v4, :cond_e

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    .line 70
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result v4

    .line 71
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    .line 72
    :cond_b
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result v4

    .line 73
    iget-object v5, v0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    invoke-static {v3, v5}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v5

    sub-int v5, v3, v5

    if-eq v4, v5, :cond_d

    if-eq v3, v4, :cond_c

    .line 74
    invoke-interface {v2, v3, v4}, Lcom/android/tools/r8/internal/NE;->b(II)I

    goto :goto_5

    .line 75
    :cond_c
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/NE;->remove(I)I

    :cond_d
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 76
    :cond_e
    sget-boolean v3, Lcom/android/tools/r8/graph/proto/c;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_10

    .line 77
    iget-boolean v3, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    .line 78
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    .line 79
    iget-boolean v5, p1, Lcom/android/tools/r8/graph/proto/c;->d:Z

    .line 80
    invoke-static {v5}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v5

    add-int/2addr v5, v3

    if-gt v5, v4, :cond_f

    goto :goto_6

    .line 81
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_10
    :goto_6
    iget v3, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    .line 83
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 85
    sget-object v2, Lcom/android/tools/r8/graph/proto/f;->a:Lcom/android/tools/r8/graph/proto/f;

    goto :goto_7

    .line 86
    :cond_11
    new-instance v3, Lcom/android/tools/r8/graph/proto/e;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/proto/e;-><init>(Lcom/android/tools/r8/internal/K;)V

    move-object v2, v3

    .line 87
    :goto_7
    iput-object v2, v0, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 88
    iget-boolean v2, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    if-nez v2, :cond_12

    .line 89
    iget-boolean p1, p1, Lcom/android/tools/r8/graph/proto/c;->d:Z

    if-eqz p1, :cond_13

    :cond_12
    move v1, v4

    .line 90
    :cond_13
    iput-boolean v1, v0, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/c;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 15
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/tools/r8/graph/proto/l;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/tools/r8/graph/proto/l;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/c$a;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/internal/ZH;)V

    .line 17
    iget-object p1, v0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iG;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of p1, p1, Lcom/android/tools/r8/graph/proto/f;

    if-eqz p1, :cond_1

    .line 20
    iget-boolean p1, v0, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    if-nez p1, :cond_1

    return-object p0

    .line 21
    :cond_1
    new-instance p1, Lcom/android/tools/r8/graph/proto/m;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/graph/proto/m;-><init>(Lcom/android/tools/r8/graph/proto/c$a;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/internal/ZH;)V

    .line 22
    iget p1, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p1

    .line 24
    iget-boolean p2, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    .line 25
    iput-boolean p2, p1, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ZH;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/SF;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/VF;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/SF;->c:Lcom/android/tools/r8/internal/iG;

    .line 4
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/VF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/proto/b;

    invoke-interface {p1, v2, v0}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/proto/c;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/graph/proto/c;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    iget-object v3, p1, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/N;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    iget-object v3, p1, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    iget v3, p1, Lcom/android/tools/r8/graph/proto/c;->b:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/proto/c;->d:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    iget v2, p0, Lcom/android/tools/r8/graph/proto/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/tools/r8/graph/proto/c;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
