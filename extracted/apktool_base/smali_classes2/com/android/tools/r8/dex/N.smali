.class public final Lcom/android/tools/r8/dex/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;

.field public final synthetic d:Lcom/android/tools/r8/dex/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/Q;Lcom/android/tools/r8/dex/O;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/N;->b:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/N;->c:Ljava/util/HashSet;

    iget-object p1, p2, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p2, p2, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;)Z

    goto :goto_1

    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/dex/N;->e:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    iget-object v0, p0, Lcom/android/tools/r8/dex/N;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/android/tools/r8/dex/N;->b:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    add-int/2addr p2, v0

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v1, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 24
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 25
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v1, v1, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_5

    move-object v1, p1

    goto :goto_0

    :cond_5
    invoke-interface {v1, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 30
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_9

    aget-object v5, v1, v4

    .line 33
    iget-object v6, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v6, v6, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v7, :cond_7

    move-object v5, p1

    goto :goto_2

    :cond_7
    invoke-interface {v6, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 36
    :goto_2
    invoke-static {v5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 37
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0

    .line 39
    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    .line 3
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v1, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v1, v1, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_4

    move-object v1, p1

    goto :goto_0

    :cond_4
    invoke-interface {v1, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_8

    aget-object v5, v1, v4

    .line 13
    iget-object v6, p0, Lcom/android/tools/r8/dex/N;->d:Lcom/android/tools/r8/dex/Q;

    iget-object v6, v6, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v7, :cond_6

    move-object v5, p1

    goto :goto_2

    :cond_6
    invoke-interface {v6, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 16
    :goto_2
    invoke-static {v5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 17
    invoke-virtual {p0, v5, p2}, Lcom/android/tools/r8/dex/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0

    .line 19
    :cond_9
    iget-object p2, p0, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0
.end method
