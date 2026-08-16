.class public abstract Lcom/android/tools/r8/internal/Ty;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Jw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jw;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ry;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jw;->a()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/Ry;->d:Z

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;
    .locals 3

    .line 76
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    .line 77
    invoke-interface {p0}, Lcom/android/tools/r8/internal/lW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object p1, p1, Lcom/android/tools/r8/internal/Wy;->b:Ljava/lang/Object;

    return-object p1

    .line 82
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 83
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v2, :cond_3

    .line 84
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 85
    iget-object v1, v1, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 86
    sget-object v2, Lcom/android/tools/r8/internal/Ux0;->j:Lcom/android/tools/r8/internal/Ux0;

    if-ne v1, v2, :cond_2

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Wy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0

    .line 90
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Wy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/lW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;

    move-result-object v1

    and-int/lit8 v2, p4, 0x7

    ushr-int/lit8 v3, p4, 0x3

    .line 2
    iget-object v4, p3, Lcom/android/tools/r8/internal/yv;->a:Ljava/util/Map;

    new-instance v5, Lcom/android/tools/r8/internal/xv;

    invoke-direct {v5, v3, v1}, Lcom/android/tools/r8/internal/xv;-><init>(ILcom/android/tools/r8/internal/O0;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Wy;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 4
    iget-object v6, v5, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 5
    sget-object v7, Lcom/android/tools/r8/internal/Jw;->c:Lcom/android/tools/r8/internal/Jw;

    .line 6
    iget v7, v6, Lcom/android/tools/r8/internal/Sx0;->c:I

    if-ne v2, v7, :cond_1

    move v2, v4

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Sx0;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 8
    iget-object v5, v5, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1, p4, p2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p2, 0x0

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p3

    .line 11
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result p3

    .line 12
    iget-object p4, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 13
    iget-object p4, p4, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 14
    sget-object v2, Lcom/android/tools/r8/internal/Sx0;->h:Lcom/android/tools/r8/internal/Sx0;

    if-ne p4, v2, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result p4

    if-gtz p4, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    .line 17
    iget-object p1, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    throw p2

    .line 20
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result p2

    if-lez p2, :cond_6

    .line 21
    iget-object p2, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 22
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 23
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/Sx0;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    iget-object p4, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v0, p4, p2}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_6
    :goto_3
    iput p3, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_6

    .line 27
    :cond_7
    iget-object p4, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 28
    iget-object p4, p4, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 29
    iget-object p4, p4, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 30
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v2, 0x7

    if-eq p4, v2, :cond_11

    const/16 v2, 0x8

    if-eq p4, v2, :cond_8

    .line 31
    iget-object p2, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 32
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 33
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/Sx0;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_5

    .line 34
    :cond_8
    iget-object p4, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 35
    iget-boolean v2, p4, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-nez v2, :cond_9

    .line 36
    iget-object v2, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v2, p4}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 37
    check-cast p4, Lcom/android/tools/r8/internal/O0;

    if-eqz p4, :cond_9

    .line 38
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/O0;->c()Lcom/android/tools/r8/internal/Qy;

    move-result-object p2

    :cond_9
    if-nez p2, :cond_a

    .line 39
    iget-object p2, v1, Lcom/android/tools/r8/internal/Wy;->c:Lcom/android/tools/r8/internal/Yy;

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O0;->b()Lcom/android/tools/r8/internal/Qy;

    move-result-object p2

    .line 41
    :cond_a
    iget-object p4, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 42
    iget-object v2, p4, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 43
    sget-object v4, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    const-string v5, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    const-string v6, "Protocol message end-group tag did not match expected tag."

    const/16 v7, 0x40

    if-ne v2, v4, :cond_d

    .line 44
    iget p4, p4, Lcom/android/tools/r8/internal/Vy;->b:I

    .line 45
    iget v2, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    if-ge v2, v7, :cond_c

    add-int/2addr v2, v3

    .line 46
    iput v2, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/Qy;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;

    shl-int/lit8 p3, p4, 0x3

    or-int/lit8 p3, p3, 0x4

    .line 48
    iget p4, p1, Lcom/android/tools/r8/internal/Ae;->f:I

    if-ne p4, p3, :cond_b

    .line 49
    iget p3, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    sub-int/2addr p3, v3

    iput p3, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    goto :goto_4

    .line 50
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v6}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v5}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result p4

    .line 55
    iget v2, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    if-ge v2, v7, :cond_10

    .line 56
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result p4

    .line 57
    iget v2, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    .line 58
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/Qy;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;

    .line 59
    iget p3, p1, Lcom/android/tools/r8/internal/Ae;->f:I

    if-nez p3, :cond_f

    .line 60
    iget p3, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    sub-int/2addr p3, v3

    iput p3, p1, Lcom/android/tools/r8/internal/Ae;->i:I

    .line 61
    iput p4, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    .line 63
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Qy;->a()Lcom/android/tools/r8/internal/O0;

    move-result-object p1

    .line 64
    :goto_5
    iget-object p2, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 65
    iget-boolean p3, p2, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz p3, :cond_e

    .line 66
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_6

    .line 67
    :cond_e
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Jw;->c(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    :goto_6
    return v3

    .line 68
    :cond_f
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v6}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_10
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v5}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :cond_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    .line 73
    iget-object p1, v1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    throw p2
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Jw;->a(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Jw;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Vy;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Jw;->b(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vy;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Jw;->b(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    :cond_2
    return v2
.end method
