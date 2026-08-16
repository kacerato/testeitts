.class public final Lcom/android/tools/r8/graph/M4;
.super Lcom/android/tools/r8/graph/O4;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:[Lcom/android/tools/r8/graph/j1;

.field public b:[Lcom/android/tools/r8/graph/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;I)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 63
    aget-object p1, p1, p2

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate method `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;I)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 33
    aget-object p1, p1, p2

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/O4;
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/j1;

    .line 65
    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/tools/r8/graph/j1;

    const/4 v2, 0x0

    move v3, v2

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 67
    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 68
    aput-object v4, v0, v3

    .line 69
    sget-boolean v5, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v5, :cond_1

    .line 70
    iget-object v4, v4, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 71
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 74
    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 75
    aput-object v3, v1, v2

    .line 76
    sget-boolean v4, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v4, :cond_4

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 79
    :cond_5
    new-instance p1, Lcom/android/tools/r8/graph/M4;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/graph/M4;-><init>([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 51
    aget-object v2, v0, v1

    .line 52
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 54
    aput-object p1, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_1
    sget-boolean p2, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 56
    iget-object p2, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 39
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 40
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_4

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 42
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v4

    :cond_4
    return-object v5
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/X60;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 10
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/android/tools/r8/graph/j1;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 7
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 9
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M4;->k()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/android/tools/r8/graph/j1;

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v1

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 34
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M4;->k()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/j1;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 21
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_3
    sget-object p1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    .line 24
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final a(Ljava/util/function/Function;)V
    .locals 1

    .line 59
    check-cast p1, Lcom/android/tools/r8/internal/Jy;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->f(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->g(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->a(Ljava/util/Collection;)V

    .line 62
    sget-object p1, Lcom/android/tools/r8/internal/Ly;->b:Lcom/android/tools/r8/internal/Ly;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/M4;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 27
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M4;->k()V

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 13
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 16
    aget-object v2, v2, v1

    .line 17
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 19
    sget-boolean p2, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p2, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    new-instance v2, Lcom/android/tools/r8/graph/w9;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/graph/w9;-><init>(Lcom/android/tools/r8/graph/M4;)V

    .line 23
    aget-object v3, p2, v1

    .line 24
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Lcom/android/tools/r8/graph/j1;

    .line 25
    invoke-static {p2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    .line 26
    array-length v4, p2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->c(Lcom/android/tools/r8/graph/j1;)V

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/X60;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Zs0;

    .line 3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 5
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Zs0;

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 8
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->a(Lcom/android/tools/r8/graph/j1;)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->c(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Jy;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 30
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iput-object v1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    .line 31
    array-length v1, v0

    new-array v1, v1, [Lcom/android/tools/r8/graph/j1;

    new-instance v2, Lcom/android/tools/r8/graph/u9;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/graph/u9;-><init>(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;)V

    .line 32
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final b([Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M4;->k()V

    :cond_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/x9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/x9;-><init>(Lcom/android/tools/r8/graph/M4;)V

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 5
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    aget-object v4, v0, v3

    .line 7
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Lcom/android/tools/r8/graph/j1;

    .line 8
    invoke-static {v0, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    .line 9
    array-length v8, v0

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v7, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-interface {v1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_3

    .line 12
    iget-object p1, v4, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    return-object v4

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/y9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/y9;-><init>(Lcom/android/tools/r8/graph/M4;)V

    move v3, v2

    .line 16
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 17
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    aget-object v5, v0, v3

    .line 19
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [Lcom/android/tools/r8/graph/j1;

    .line 20
    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    .line 21
    array-length v4, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 23
    :cond_6
    :goto_4
    sget-boolean p1, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez p1, :cond_8

    if-eqz v5, :cond_8

    .line 24
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_5
    return-object v5
.end method

.method public final c()Ljava/lang/Iterable;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Jy;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 32
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iput-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    .line 33
    array-length v1, v0

    new-array v1, v1, [Lcom/android/tools/r8/graph/j1;

    new-instance v2, Lcom/android/tools/r8/graph/z9;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/graph/z9;-><init>(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;)V

    .line 34
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final synthetic c([Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<method-arraybacking>"

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/Jy;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->f(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/Ly;->b:Lcom/android/tools/r8/internal/Ly;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/M4;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final synthetic d([Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final e()Ljava/lang/Iterable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    .line 2
    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/internal/Jy;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->g(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M4;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final synthetic e([Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    return v0
.end method

.method public final f(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 4
    aget-object v2, v2, v1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 6
    sget-boolean v4, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    :cond_2
    iget-object v2, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    aput-object v3, v2, v1

    goto :goto_2

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/v9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/v9;-><init>()V

    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iget-object v3, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v3, v3

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 17
    invoke-static {p1, v1, v2, v3}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    :cond_6
    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    return v0
.end method

.method public final g(Lcom/android/tools/r8/internal/Jy;)Ljava/util/ArrayList;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4
    aget-object v2, v2, v1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    aput-object v3, v2, v1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/v9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/v9;-><init>()V

    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    iget-object v3, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v3, v3

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 14
    invoke-static {p1, v1, v2, v3}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    :cond_4
    return-object v0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->a:[Lcom/android/tools/r8/graph/j1;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M4;->k()V

    :cond_0
    return-void
.end method

.method public final j()Ljava/lang/Iterable;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/M4;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/M4;->b:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/A9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/A9;-><init>(Ljava/util/Set;)V

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method
