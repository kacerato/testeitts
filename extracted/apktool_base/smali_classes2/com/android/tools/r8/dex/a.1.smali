.class public final Lcom/android/tools/r8/dex/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xr0;

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:Lcom/android/tools/r8/graph/y0;

.field public final f:Lcom/android/tools/r8/graph/h4;

.field public g:Z

.field public h:Z

.field public final synthetic i:Lcom/android/tools/r8/dex/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/c;Lcom/android/tools/r8/internal/xr0;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/android/tools/r8/graph/y0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/y0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/a;->e:Lcom/android/tools/r8/graph/y0;

    new-instance v1, Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/graph/h4;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y0;)V

    iput-object v1, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/dex/a;->g:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/dex/a;->h:Z

    iput-object p2, p0, Lcom/android/tools/r8/dex/a;->a:Lcom/android/tools/r8/internal/xr0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/V;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/internal/Ud;
    .locals 8

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 23
    sget v1, Lcom/android/tools/r8/internal/m60;->a:I

    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 26
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 27
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_0

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Td;

    .line 33
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    sget-object v1, Lcom/android/tools/r8/internal/Pt;->h:Lcom/android/tools/r8/internal/Pt;

    goto :goto_2

    .line 36
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/kC;

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 41
    invoke-static {v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 43
    invoke-virtual {v3, v6, v5}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    .line 44
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 45
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/iC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/tools/r8/internal/iC;-><init>(ILcom/android/tools/r8/internal/nC;)V

    .line 46
    :goto_2
    invoke-direct {p1, p0, v1}, Lcom/android/tools/r8/internal/Td;-><init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/iC;)V

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/Qd;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/tools/r8/internal/Qd;-><init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/ClassFileResourceProvider;Lcom/android/tools/r8/graph/h4;)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Ud;

    return-object p0

    .line 53
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/Rd;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/Rd;-><init>(Lcom/android/tools/r8/graph/V;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/C;Ljava/util/Queue;Lcom/android/tools/r8/graph/B;)V
    .locals 1

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu/i0;

    invoke-direct {v0, p1}, Lu/i0;-><init>(Ljava/util/Queue;)V

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/dex/C;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/B;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/ProgramResource;)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/o4;->b(Lcom/android/tools/r8/origin/Origin;[B)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/z0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->e:Lcom/android/tools/r8/graph/y0;

    iget-boolean v2, p0, Lcom/android/tools/r8/dex/a;->h:Z

    .line 2
    iput-boolean v2, v0, Lcom/android/tools/r8/graph/y0;->a:Z

    .line 3
    iget-boolean v3, p0, Lcom/android/tools/r8/dex/a;->g:Z

    .line 4
    iput-boolean v3, v0, Lcom/android/tools/r8/graph/y0;->b:Z

    .line 5
    new-instance v7, Lcom/android/tools/r8/graph/z0;

    iget-object v1, v0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    iget-object v1, v0, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    iget-object v0, v0, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/z0;-><init>(ZZLcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;)V

    return-object v7
.end method

.method public final a(Lcom/android/tools/r8/graph/w4$a;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H2;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    monitor-enter p1

    .line 56
    :try_start_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p1

    throw v0

    .line 59
    :cond_0
    sget-object v0, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    iget-object v1, p0, Lcom/android/tools/r8/dex/a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v2, v2, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/r8/utils/i;->d()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/graph/V;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/internal/Ud;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v1, Lcom/android/tools/r8/internal/je;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/je;-><init>(Lcom/android/tools/r8/internal/Ud;)V

    .line 63
    iput-object v1, p1, Lcom/android/tools/r8/graph/w4$a;->h:Lcom/android/tools/r8/internal/je;

    .line 64
    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    iget-object v1, p0, Lcom/android/tools/r8/dex/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v2, v2, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/utils/i;->g()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/graph/V;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/internal/Ud;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v1, Lcom/android/tools/r8/internal/TR;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/TR;-><init>(Lcom/android/tools/r8/internal/Ud;)V

    .line 68
    iput-object v1, p1, Lcom/android/tools/r8/graph/w4$a;->i:Lcom/android/tools/r8/internal/TR;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    .line 70
    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->g:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p1, Lcom/android/tools/r8/graph/w4$a;->j:Ljava/util/List;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/vJ;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/vJ;->a:Ljava/util/Collection;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 5

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/dex/a;->g:Z

    .line 13
    new-instance v0, Lcom/android/tools/r8/graph/o4;

    iget-object v1, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lu/j0;

    invoke-direct {v2, p0, p2}, Lu/j0;-><init>(Lcom/android/tools/r8/dex/a;Ljava/util/Queue;)V

    sget-object p2, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/tools/r8/graph/o4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/V;)V

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/ProgramResource;

    .line 15
    iget-object v3, p0, Lcom/android/tools/r8/dex/a;->a:Lcom/android/tools/r8/internal/xr0;

    new-instance v4, Lu/k0;

    invoke-direct {v4, v0, v2}, Lu/k0;-><init>(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/ProgramResource;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/Queue;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 72
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v0, v0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->I0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v1, v1, Lcom/android/tools/r8/dex/c;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->s3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/a;->f:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e1;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUNTIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 78
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v0, v0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    new-instance v1, Lu/g0;

    invoke-direct {v1, p0}, Lu/g0;-><init>(Lcom/android/tools/r8/dex/a;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/function/Consumer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/ProgramResource;

    .line 87
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v6, v7, :cond_0

    .line 88
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    sget-boolean v6, Lcom/android/tools/r8/dex/a;->j:Z

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/dex/a;->b(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/dex/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/dex/a;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lcom/android/tools/r8/dex/a;->h:Z

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v4, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v4, v4, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1a

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/tools/r8/ProgramResource;

    .line 6
    new-instance v15, Lcom/android/tools/r8/dex/D;

    invoke-direct {v15, v9}, Lcom/android/tools/r8/dex/D;-><init>(Lcom/android/tools/r8/ProgramResource;)V

    .line 7
    iget-object v10, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v11, v10, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v12, v11, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-eqz v12, :cond_7

    .line 8
    iget-object v12, v11, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v12, v12, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    if-nez v12, :cond_5

    .line 9
    iget-object v13, v15, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    const/4 v14, 0x0

    if-nez v12, :cond_2

    .line 10
    iget v12, v13, Lcom/android/tools/r8/internal/Ms;->b:I

    .line 11
    sget v6, Lcom/android/tools/r8/internal/nJ;->g2:I

    if-eq v12, v6, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v10, v13}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/internal/Ms;)V

    throw v14

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v6

    invoke-static {}, Lcom/android/tools/r8/internal/C2;->b()Lcom/android/tools/r8/internal/C2;

    move-result-object v11

    if-ne v6, v11, :cond_3

    .line 14
    sget-object v6, Lcom/android/tools/r8/internal/B2;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    packed-switch v6, :pswitch_data_0

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    .line 16
    :pswitch_0
    sget-object v6, Lcom/android/tools/r8/internal/C2;->M:Lcom/android/tools/r8/internal/C2;

    goto :goto_2

    .line 17
    :pswitch_1
    sget-object v6, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    goto :goto_2

    .line 18
    :pswitch_2
    sget-object v6, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    goto :goto_2

    .line 19
    :pswitch_3
    sget-object v6, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    goto :goto_2

    .line 20
    :pswitch_4
    sget-object v6, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    goto :goto_2

    .line 21
    :pswitch_5
    sget-object v6, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 22
    :goto_2
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/C2;->c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/C2;

    move-result-object v4

    goto :goto_3

    .line 23
    :cond_3
    iget-object v6, v10, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v6}, Lcom/android/tools/r8/internal/Ms;->c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/Ms;

    move-result-object v6

    iget v6, v6, Lcom/android/tools/r8/internal/Ms;->b:I

    iget v11, v13, Lcom/android/tools/r8/internal/Ms;->b:I

    if-lt v6, v11, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {v10, v13}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/internal/Ms;)V

    throw v14

    .line 26
    :cond_5
    sget-boolean v6, Lcom/android/tools/r8/dex/a;->j:Z

    if-nez v6, :cond_7

    .line 27
    iget-object v6, v15, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    .line 28
    sget-object v10, Lcom/android/tools/r8/internal/Ms;->j:Lcom/android/tools/r8/internal/Ms;

    if-ne v6, v10, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 29
    :cond_7
    :goto_3
    iget-object v6, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v6, v6, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    if-nez v6, :cond_9

    .line 30
    iget-object v6, v15, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    .line 31
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ms;->b()Z

    move-result v6

    if-nez v6, :cond_8

    .line 32
    new-instance v6, Lcom/android/tools/r8/dex/C;

    sget-object v12, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    iget-object v9, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v13, v9, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object v10, v6

    move-object v11, v15

    move-object v15, v9

    .line 33
    invoke-direct/range {v10 .. v15}, Lcom/android/tools/r8/dex/C;-><init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V

    .line 34
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 35
    :cond_8
    new-instance v1, Lcom/android/tools/r8/ResourceException;

    .line 36
    invoke-interface {v9}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    .line 37
    iget-object v3, v15, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Experimental container DEX version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_9
    new-instance v6, Lcom/android/tools/r8/internal/CH;

    const/16 v9, 0x10

    .line 40
    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 41
    iget-object v9, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/dex/s;->a(Ljava/nio/ByteOrder;)V

    .line 42
    iget-object v9, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/dex/s;->b(I)I

    move-result v9

    const v10, 0x78563412

    if-ne v9, v10, :cond_a

    .line 43
    iget-object v9, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/dex/s;->a(Ljava/nio/ByteOrder;)V

    goto :goto_4

    :cond_a
    const v10, 0x12345678

    if-ne v9, v10, :cond_19

    :goto_4
    const/4 v9, 0x0

    .line 44
    :goto_5
    iget-object v10, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v10

    if-ge v9, v10, :cond_15

    .line 45
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 46
    new-instance v10, Lcom/android/tools/r8/dex/D;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v11

    iget-object v12, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 47
    invoke-virtual {v12}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 48
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 49
    invoke-direct {v10, v11, v12, v9}, Lcom/android/tools/r8/dex/D;-><init>(Lcom/android/tools/r8/origin/Origin;[BI)V

    .line 50
    sget-boolean v11, Lcom/android/tools/r8/dex/a;->j:Z

    if-nez v11, :cond_c

    .line 51
    iget-object v10, v10, Lcom/android/tools/r8/dex/D;->d:Lcom/android/tools/r8/internal/Ms;

    .line 52
    sget-object v12, Lcom/android/tools/r8/internal/Ms;->j:Lcom/android/tools/r8/internal/Ms;

    if-ne v10, v12, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_6
    if-nez v11, :cond_e

    add-int/lit8 v10, v9, 0x24

    .line 53
    invoke-virtual {v15, v10}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v10

    const/16 v12, 0x78

    if-ne v10, v12, :cond_d

    goto :goto_7

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_7
    if-nez v11, :cond_10

    add-int/lit8 v10, v9, 0x74

    .line 54
    invoke-virtual {v15, v10}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v10

    if-ne v10, v9, :cond_f

    goto :goto_8

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    :goto_8
    add-int/lit8 v10, v9, 0x68

    .line 55
    invoke-virtual {v15, v10}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v10

    add-int/lit8 v12, v9, 0x6c

    .line 56
    invoke-virtual {v15, v12}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v12

    add-int/lit8 v13, v9, 0x20

    .line 57
    invoke-virtual {v15, v13}, Lcom/android/tools/r8/dex/m;->a(I)I

    move-result v13

    if-nez v11, :cond_12

    if-nez v12, :cond_11

    goto :goto_9

    .line 58
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_12
    :goto_9
    if-nez v11, :cond_14

    if-nez v10, :cond_13

    goto :goto_a

    .line 59
    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_a
    add-int/2addr v9, v13

    goto :goto_5

    .line 60
    :cond_15
    sget-boolean v10, Lcom/android/tools/r8/dex/a;->j:Z

    if-nez v10, :cond_17

    .line 61
    iget-object v10, v15, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v10}, Lcom/android/tools/r8/dex/s;->b()I

    move-result v10

    if-ne v9, v10, :cond_16

    goto :goto_b

    .line 62
    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 63
    :cond_17
    :goto_b
    new-instance v9, Lcom/android/tools/r8/dex/C;

    sget-object v12, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    iget-object v10, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v13, v10, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    .line 64
    iget v10, v6, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v10, v2

    .line 65
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v14

    const/16 v16, 0x0

    move-object v10, v9

    move-object v11, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/tools/r8/dex/C;-><init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V

    const/4 v15, 0x0

    .line 66
    :goto_c
    iget v10, v6, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v10, v2

    if-ge v15, v10, :cond_18

    .line 67
    new-instance v14, Lcom/android/tools/r8/dex/C;

    sget-object v12, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    iget-object v10, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v13, v10, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v6, v15}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v16

    move-object v10, v14

    move-object/from16 v11, v17

    move-object v2, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/tools/r8/dex/C;-><init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v16, 0x1

    const/4 v2, 0x1

    goto :goto_c

    .line 68
    :cond_18
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 69
    :cond_19
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Unable to determine endianess for reading dex file."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1a
    iget-object v2, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v2, v2, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_1b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/dex/C;

    .line 72
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/C;->k()V

    goto :goto_e

    .line 73
    :cond_1b
    iget-object v2, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v2, v2, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v4, v2, Lcom/android/tools/r8/internal/nJ;->O1:Z

    if-nez v4, :cond_1e

    .line 74
    new-instance v4, Lcom/android/tools/r8/graph/z;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/z;-><init>()V

    .line 75
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v5, v5, Lcom/android/tools/r8/internal/nJ$p;->z0:Z

    if-nez v5, :cond_1c

    .line 76
    new-instance v4, Lcom/android/tools/r8/graph/A;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/tools/r8/graph/A;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 77
    :cond_1c
    iget-object v2, v0, Lcom/android/tools/r8/dex/a;->i:Lcom/android/tools/r8/dex/c;

    iget-object v2, v2, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    if-nez v2, :cond_1d

    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_1e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    check-cast v5, Lcom/android/tools/r8/dex/C;

    .line 79
    iget-object v7, v0, Lcom/android/tools/r8/dex/a;->a:Lcom/android/tools/r8/internal/xr0;

    new-instance v8, Lu/h0;

    invoke-direct {v8, v5, v1, v4}, Lu/h0;-><init>(Lcom/android/tools/r8/dex/C;Ljava/util/Queue;Lcom/android/tools/r8/graph/B;)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    goto :goto_f

    :cond_1d
    const/4 v6, 0x0

    .line 80
    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_1e

    .line 81
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/dex/C;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lu/i0;

    invoke-direct {v5, v1}, Lu/i0;-><init>(Ljava/util/Queue;)V

    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/dex/C;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/B;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1e
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
