.class public Lcom/android/tools/r8/shaking/I4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic E:Z = true


# instance fields
.field public final A:Lcom/android/tools/r8/shaking/I3;

.field public final B:Lcom/android/tools/r8/shaking/g1;

.field public final C:Lcom/android/tools/r8/shaking/g1;

.field public final D:Lcom/android/tools/r8/shaking/g1;

.field public final a:Lcom/android/tools/r8/graph/y;

.field public b:Lcom/android/tools/r8/shaking/k;

.field public final c:Lcom/android/tools/r8/shaking/x4;

.field public final d:Lcom/android/tools/r8/graph/Y5;

.field public final e:Lcom/android/tools/r8/graph/g3;

.field public final f:Ljava/lang/Iterable;

.field public final g:Lcom/android/tools/r8/shaking/A;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/Set;

.field public final l:Lcom/android/tools/r8/internal/W60;

.field public final m:Ljava/util/IdentityHashMap;

.field public final n:Ljava/util/IdentityHashMap;

.field public final o:Ljava/util/Set;

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public final q:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final r:Lcom/android/tools/r8/internal/nJ;

.field public final s:Lcom/android/tools/r8/internal/dI;

.field public final t:Lcom/android/tools/r8/shaking/D;

.field public final u:Ljava/util/Set;

.field public final v:Ljava/util/LinkedHashMap;

.field public final w:Ljava/util/Set;

.field public final x:Lcom/android/tools/r8/internal/o40;

.field public final y:Lcom/android/tools/r8/internal/yI;

.field public final z:Lcom/android/tools/r8/internal/h80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/x4;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/A;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/A;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->h:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->i:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->j:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->k:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/W60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/W60;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->l:Lcom/android/tools/r8/internal/W60;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->n:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->o:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/android/tools/r8/internal/dI;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->s:Lcom/android/tools/r8/internal/dI;

    new-instance v0, Lcom/android/tools/r8/shaking/D;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/D;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->u:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->v:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->w:Ljava/util/Set;

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->x:Lcom/android/tools/r8/internal/o40;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/I4;->c:Lcom/android/tools/r8/shaking/x4;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/I4;->f:Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/android/tools/r8/internal/yI;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/yI;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/android/tools/r8/shaking/I4;->y:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/tools/r8/shaking/I3;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/I3;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I3;->a()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/shaking/I4;->A:Lcom/android/tools/r8/shaking/I3;

    iget-boolean p2, p1, Lcom/android/tools/r8/shaking/I3;->k:Z

    iget-boolean p3, p1, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    :goto_2
    iput-object p2, p0, Lcom/android/tools/r8/shaking/I4;->B:Lcom/android/tools/r8/shaking/g1;

    iget-boolean p2, p1, Lcom/android/tools/r8/shaking/I3;->o:Z

    iget-boolean p3, p1, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    sget-object p2, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    :cond_7
    sget-object p2, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    :goto_3
    iput-object p2, p0, Lcom/android/tools/r8/shaking/I4;->C:Lcom/android/tools/r8/shaking/g1;

    iget-boolean p2, p1, Lcom/android/tools/r8/shaking/I3;->m:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    sget-object p1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    sget-object p1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    sget-object p1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/shaking/I4;->D:Lcom/android/tools/r8/shaking/g1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    invoke-interface {v2, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 224
    :goto_0
    sget-boolean p1, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/G5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 667
    check-cast p1, Lcom/android/tools/r8/graph/G0;

    .line 668
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 669
    new-instance v0, Lcom/android/tools/r8/shaking/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/M5;-><init>()V

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 671
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;
    .locals 8

    .line 302
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object p0, Lcom/android/tools/r8/shaking/c;->a:Lcom/android/tools/r8/shaking/c;

    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i4;

    .line 306
    iget-object v2, p2, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    .line 307
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_2
    if-nez v6, :cond_4

    return-object v5

    .line 308
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    new-instance v1, Lcom/android/tools/r8/shaking/e;

    .line 310
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object v2

    invoke-direct {v1, v2, v6, p3}, Lcom/android/tools/r8/shaking/e;-><init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    .line 311
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_5
    new-instance p0, Lcom/android/tools/r8/shaking/d;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/d;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 920
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/E40;)Ljava/util/Set;
    .locals 1

    .line 954
    new-instance p0, Ljava/util/TreeSet;

    new-instance v0, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;Ljava/util/function/Predicate;)V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 238
    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 239
    new-instance v2, Lcom/android/tools/r8/shaking/P6;

    invoke-direct {v2, p2, p1}, Lcom/android/tools/r8/shaking/P6;-><init>(Ljava/util/function/Predicate;Ljava/io/PrintStream;)V

    .line 240
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/shaking/y1;->c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 241
    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 242
    new-instance v2, Lcom/android/tools/r8/shaking/Q6;

    invoke-direct {v2, p2, p1}, Lcom/android/tools/r8/shaking/Q6;-><init>(Ljava/util/function/Predicate;Ljava/io/PrintStream;)V

    .line 243
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 244
    iget-object v1, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 245
    new-instance v2, Lcom/android/tools/r8/shaking/R6;

    invoke-direct {v2, p2, p0, p1}, Lcom/android/tools/r8/shaking/R6;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;)V

    .line 246
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/shaking/y1;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 247
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 256
    iget-object v0, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    iget-object p0, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 259
    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 260
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    if-nez p0, :cond_3

    .line 261
    sget-boolean p0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->w6:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    iget-object p1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 264
    const-string p0, "<clinit>"

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 266
    iget-object p0, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_5
    iget-object p0, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 270
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 271
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 273
    :goto_1
    const-string p0, "("

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    iget-object p0, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length p1, p0

    const/4 p3, 0x0

    move v1, p3

    :goto_2
    if-ge v1, p1, :cond_7

    aget-object v2, p0, v1

    if-nez v0, :cond_6

    .line 275
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 276
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v0, p3

    goto :goto_2

    .line 277
    :cond_7
    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/io/PrintStream;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 248
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/io/PrintStream;Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 250
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 251
    iget-object p0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 252
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 253
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 254
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/b1;)Z
    .locals 0

    .line 3
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/G0;Ljava/util/function/Consumer;)Z
    .locals 5

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/graph/p0;->b:Lcom/android/tools/r8/graph/p0;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/tools/r8/graph/p0;->c:Lcom/android/tools/r8/graph/p0;

    .line 27
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    .line 29
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    move v0, v2

    .line 31
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/z5;->j(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    .line 36
    sget-object v4, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    .line 37
    invoke-static {p0, p1, v3, v4}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 38
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/b1;)Z
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->x0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Lcom/android/tools/r8/graph/H0;
    .locals 4

    .line 298
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/U3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H0;

    .line 300
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/n6;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/n6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/D4;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 130
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Build root set..."

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 131
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/xr0;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    .line 132
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    const/4 v3, -0x1

    move-object/from16 v4, p1

    invoke-direct {v0, v2, v4, v3}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    .line 133
    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->f:Ljava/lang/Iterable;

    if-eqz v2, :cond_2

    .line 134
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/v3;

    .line 135
    instance-of v5, v3, Lcom/android/tools/r8/shaking/G3;

    if-eqz v5, :cond_0

    .line 136
    check-cast v3, Lcom/android/tools/r8/shaking/G3;

    .line 137
    iget-object v4, v1, Lcom/android/tools/r8/shaking/I4;->u:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 138
    :cond_0
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_2
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/I4;->a()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/I4;->b()V

    .line 143
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, v0, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/D;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;)Lcom/android/tools/r8/graph/D;

    move-result-object v0

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 147
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/o6;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/o6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    .line 148
    :cond_3
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/p6;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/p6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    .line 149
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, v0, Lcom/android/tools/r8/internal/Oa0;->d:Lcom/android/tools/r8/internal/cz;

    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 152
    :cond_4
    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/q6;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/q6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 153
    new-instance v0, Lcom/android/tools/r8/shaking/D4;

    iget-object v4, v1, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->h:Ljava/util/LinkedHashMap;

    .line 154
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    iget-object v6, v1, Lcom/android/tools/r8/shaking/I4;->i:Ljava/util/Set;

    iget-object v7, v1, Lcom/android/tools/r8/shaking/I4;->j:Ljava/util/Set;

    iget-object v8, v1, Lcom/android/tools/r8/shaking/I4;->k:Ljava/util/Set;

    iget-object v9, v1, Lcom/android/tools/r8/shaking/I4;->l:Lcom/android/tools/r8/internal/W60;

    iget-object v10, v1, Lcom/android/tools/r8/shaking/I4;->n:Ljava/util/IdentityHashMap;

    iget-object v11, v1, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    iget-object v12, v1, Lcom/android/tools/r8/shaking/I4;->o:Ljava/util/Set;

    iget-object v13, v1, Lcom/android/tools/r8/shaking/I4;->u:Ljava/util/Set;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 155
    invoke-static {v2}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v14

    iget-object v15, v1, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->s:Lcom/android/tools/r8/internal/dI;

    move-object v3, v0

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/android/tools/r8/shaking/D4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nI;)V

    return-object v0

    .line 156
    :goto_1
    iget-object v2, v1, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    iget-object v2, v2, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 157
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/k;)Lcom/android/tools/r8/shaking/I4;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/s1;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 926
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    .line 927
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 928
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/s1;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 922
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 923
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 924
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 657
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 658
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->w:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 660
    new-instance v3, Lcom/android/tools/r8/shaking/M6;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/shaking/M6;-><init>(Lcom/android/tools/r8/shaking/s2;)V

    .line 661
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v4

    .line 662
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v3

    goto :goto_1

    .line 664
    :cond_1
    sget-object v3, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    .line 665
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 652
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 653
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 654
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->n()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/shaking/M3;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/shaking/L3;)V
    .locals 5

    .line 751
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    .line 754
    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 755
    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 756
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vw;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    sget-boolean p1, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p1, :cond_26

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 758
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 759
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 761
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 762
    sget-boolean p1, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p1, :cond_26

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 763
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 764
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->t5:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v5:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 766
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto/16 :goto_6

    .line 767
    :cond_5
    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->a:Z

    if-eqz p3, :cond_6

    .line 768
    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->b:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->c:Z

    if-nez p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->d:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->g:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->f:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->h:Z

    if-nez p3, :cond_6

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->i:Z

    if-eqz p3, :cond_6

    goto/16 :goto_6

    .line 769
    :cond_6
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p3, :cond_7

    iget-boolean p3, p4, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    .line 770
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p3

    if-nez p3, :cond_7

    .line 771
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p3

    if-nez p3, :cond_7

    .line 772
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    .line 773
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/H6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/H6;-><init>()V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 774
    invoke-interface {p3, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    :cond_7
    if-eqz p2, :cond_a

    .line 776
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p3

    if-nez p3, :cond_9

    .line 777
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_0

    .line 778
    :cond_8
    new-instance p3, Lcom/android/tools/r8/shaking/Z;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/shaking/Z;-><init>(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 779
    :cond_9
    :goto_0
    new-instance p3, Lcom/android/tools/r8/shaking/a0;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/shaking/a0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 780
    :cond_a
    sget-object p3, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 781
    :goto_1
    instance-of p2, p0, Lcom/android/tools/r8/shaking/C4;

    if-nez p2, :cond_d

    .line 782
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    .line 783
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 784
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 785
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 786
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_d

    .line 787
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 788
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->y:Lcom/android/tools/r8/internal/yI;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->c:Lcom/android/tools/r8/shaking/x4;

    .line 790
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 791
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    .line 792
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    sget-object v3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 794
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 795
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v0, Lcom/android/tools/r8/internal/sR;

    new-instance v2, Lcom/android/tools/r8/shaking/I6;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/tools/r8/shaking/I6;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;)V

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 797
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 799
    iget-boolean v1, p4, Lcom/android/tools/r8/shaking/M3;->f:Z

    if-nez v1, :cond_b

    .line 800
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 801
    check-cast v1, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    .line 802
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 803
    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p4, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez v1, :cond_c

    .line 804
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    check-cast v0, Lcom/android/tools/r8/shaking/s1;

    .line 806
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 807
    invoke-interface {v1, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    .line 810
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 811
    :cond_c
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->F()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_6

    .line 812
    :cond_d
    new-instance v0, Lcom/android/tools/r8/internal/sR;

    new-instance v1, Lcom/android/tools/r8/shaking/K6;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/tools/r8/shaking/K6;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/D5;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 813
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 814
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j1:Lcom/android/tools/r8/internal/U1;

    .line 815
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/U1;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 816
    iget-boolean v2, p4, Lcom/android/tools/r8/shaking/M3;->a:Z

    if-nez v2, :cond_e

    .line 817
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 818
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->e()Lcom/android/tools/r8/shaking/s1;

    .line 819
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 820
    :cond_e
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    .line 821
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v3, :cond_12

    .line 822
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p4, Lcom/android/tools/r8/shaking/M3;->b:Z

    if-nez v2, :cond_12

    .line 823
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->B:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v2

    if-nez v2, :cond_f

    .line 824
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 825
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->B:Lcom/android/tools/r8/shaking/g1;

    .line 826
    iget-object v4, v2, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 827
    iget-object v4, v4, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 828
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/g1;)V

    .line 829
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    .line 830
    :cond_f
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->C:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v2

    if-nez v2, :cond_10

    .line 831
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 832
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->C:Lcom/android/tools/r8/shaking/g1;

    .line 833
    iget-object v4, v2, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 834
    iget-object v4, v4, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    .line 835
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/g1;)V

    .line 836
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    .line 837
    :cond_10
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->D:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v2

    if-nez v2, :cond_11

    .line 838
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 839
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    .line 840
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->D:Lcom/android/tools/r8/shaking/g1;

    .line 841
    iget-object v2, v2, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 842
    check-cast v2, Lcom/android/tools/r8/shaking/G1;

    .line 843
    iget-object v2, v2, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    .line 844
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/g1;)V

    .line 845
    :cond_11
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 846
    :cond_12
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->A:Lcom/android/tools/r8/shaking/I3;

    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-eqz v2, :cond_13

    .line 847
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 848
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->j()Lcom/android/tools/r8/shaking/s1;

    .line 849
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 850
    :cond_13
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->A:Lcom/android/tools/r8/shaking/I3;

    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-eqz v2, :cond_14

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 851
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 852
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/H1;->D()Lcom/android/tools/r8/shaking/H1;

    .line 853
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 854
    :cond_14
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->A:Lcom/android/tools/r8/shaking/I3;

    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-eqz v2, :cond_15

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 855
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 856
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/H1;->w()Lcom/android/tools/r8/shaking/H1;

    .line 857
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 858
    :cond_15
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 859
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 860
    iget-boolean v2, p4, Lcom/android/tools/r8/shaking/M3;->g:Z

    if-nez v2, :cond_16

    .line 861
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 862
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    .line 863
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 864
    :cond_16
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->V()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 865
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 866
    iget-boolean v2, p4, Lcom/android/tools/r8/shaking/M3;->d:Z

    if-nez v2, :cond_17

    move v2, v3

    goto :goto_2

    .line 867
    :cond_17
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/wf0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_18

    .line 868
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 869
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    .line 870
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 871
    :cond_18
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 872
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 873
    iget-boolean v2, p4, Lcom/android/tools/r8/shaking/M3;->f:Z

    if-nez v2, :cond_19

    .line 874
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 875
    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    .line 876
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 877
    :cond_19
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz p2, :cond_1b

    :cond_1a
    iget-boolean p2, p4, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez p2, :cond_1b

    .line 878
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    .line 879
    check-cast p2, Lcom/android/tools/r8/shaking/s1;

    .line 880
    iget-object v1, p2, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 881
    invoke-interface {v1, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    .line 883
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    .line 884
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 885
    :cond_1b
    iget-boolean p2, p4, Lcom/android/tools/r8/shaking/M3;->h:Z

    if-eqz p2, :cond_20

    .line 886
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 887
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 888
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1, p6, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/L3;Lcom/android/tools/r8/shaking/d0;)V

    .line 889
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 890
    invoke-virtual {p0, v1, p6, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/L3;Lcom/android/tools/r8/shaking/d0;)V

    goto :goto_3

    .line 891
    :cond_1c
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 892
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    .line 893
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 894
    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 895
    invoke-virtual {p0, p2, p6, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/L3;Lcom/android/tools/r8/shaking/d0;)V

    goto :goto_4

    .line 896
    :cond_1d
    sget-boolean p2, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p2, :cond_1f

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_4

    :cond_1e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 897
    :cond_1f
    :goto_4
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 898
    :cond_20
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 899
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 900
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    .line 901
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->J:Z

    if-nez p2, :cond_21

    .line 902
    iget-boolean p2, p4, Lcom/android/tools/r8/shaking/M3;->c:Z

    if-eqz p2, :cond_21

    .line 903
    iget-object p2, v0, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    .line 904
    check-cast p2, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/H1;->q()Lcom/android/tools/r8/shaking/H1;

    .line 905
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 906
    :cond_21
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 907
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 908
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz p1, :cond_23

    .line 909
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-eqz p1, :cond_22

    goto :goto_5

    :cond_22
    const/4 v3, 0x0

    :cond_23
    :goto_5
    if-eqz v3, :cond_24

    .line 910
    iget-boolean p1, p4, Lcom/android/tools/r8/shaking/M3;->i:Z

    if-nez p1, :cond_24

    .line 911
    iget-object p1, v0, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    .line 912
    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->r()Lcom/android/tools/r8/shaking/k1;

    .line 913
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 914
    :cond_24
    sget-boolean p1, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p1, :cond_26

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 915
    iget-object p1, v0, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    .line 916
    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    .line 917
    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 918
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/r1;->b(Lcom/android/tools/r8/shaking/t1;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_6

    .line 919
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_26
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/K3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V
    .locals 20

    move-object/from16 v3, p4

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v3, Lcom/android/tools/r8/shaking/H3;->a:Lcom/android/tools/r8/shaking/G3;

    iget-object v1, v3, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    .line 5
    new-instance v2, Lcom/android/tools/r8/shaking/G3;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    .line 7
    iget-object v6, v0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v8

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v9

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v10

    .line 12
    iget-boolean v11, v0, Lcom/android/tools/r8/shaking/f3;->g:Z

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v12

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v13

    .line 15
    iget-object v14, v0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v15

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v16

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v17

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    move-object v4, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    .line 20
    invoke-direct/range {v4 .. v19}, Lcom/android/tools/r8/shaking/G3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/K3;Lcom/android/tools/r8/graph/E0;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    .line 21
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v4

    .line 22
    new-instance v5, Lcom/android/tools/r8/shaking/O6;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/android/tools/r8/shaking/O6;-><init>(Lcom/android/tools/r8/shaking/K3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/shaking/M3;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/shaking/L3;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 10

    .line 192
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 195
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    sget-boolean v3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 197
    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 198
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    .line 199
    iget-object v7, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 200
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    iget-object v8, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v9, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 201
    iget-object v7, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 202
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j;

    .line 203
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 205
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    if-ne v7, p1, :cond_5

    goto :goto_1

    .line 206
    :cond_5
    iget-object v7, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    .line 207
    iget-object v7, v7, Lcom/android/tools/r8/shaking/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/E4;

    if-eqz v6, :cond_6

    .line 209
    iget-object v7, v6, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    iget-object v8, v6, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/E4;->c:Z

    invoke-static {v7, v8, v6}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;

    move-result-object v6

    goto :goto_2

    .line 210
    :cond_6
    sget-object v6, Lcom/android/tools/r8/internal/F4;->d:Lcom/android/tools/r8/internal/F4;

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    if-nez v5, :cond_8

    move-object v5, v6

    goto :goto_1

    .line 211
    :cond_8
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/F4;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_9
    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    .line 213
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iget-object v3, v4, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 216
    iget-object v5, v2, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 217
    iget-object v3, v4, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 218
    iget-object v5, v2, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 219
    iget-boolean v3, v4, Lcom/android/tools/r8/internal/F4;->c:Z

    .line 220
    iget-boolean v4, v2, Lcom/android/tools/r8/internal/E4;->c:Z

    if-nez v4, :cond_b

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/E4;->c:Z

    goto/16 :goto_0

    :cond_c
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/a3;)V
    .locals 2

    .line 626
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/a3;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 631
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 632
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 633
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->f()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 635
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 636
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v0

    if-lez v0, :cond_2

    .line 637
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    .line 638
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    .line 639
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->w:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 640
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 641
    :cond_2
    monitor-exit p0

    return-void

    .line 642
    :goto_2
    monitor-exit p0

    throw p1

    .line 643
    :cond_3
    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The rule `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "` matches a class not in the program."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 644
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 645
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 646
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 647
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/n;)V
    .locals 4

    .line 731
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    const-string v1, "."

    const-string v2, "The rule `"

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 734
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 735
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p2

    .line 736
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 737
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 738
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->x()Lcom/android/tools/r8/shaking/k1;

    return-void

    .line 739
    :cond_0
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 740
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "` matches the non-enum class "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 742
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 743
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 744
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 745
    :cond_1
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 746
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "` matches the non-program class "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 747
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 748
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 749
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 750
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    .line 40
    iget-object v0, v7, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/l3;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    .line 47
    iget-boolean v1, v9, Lcom/android/tools/r8/shaking/f3;->g:Z

    if-eq v0, v1, :cond_26

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    .line 52
    invoke-static {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 53
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/f;)V

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_9

    .line 56
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v11

    .line 57
    instance-of v0, v9, Lcom/android/tools/r8/shaking/K3;

    const-string v1, "-if rule will be evaluated separately, not here."

    if-eqz v0, :cond_d

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_9

    .line 59
    :cond_4
    sget-object v0, Lcom/android/tools/r8/shaking/y4;->a:[I

    move-object v2, v9

    check-cast v2, Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto/16 :goto_9

    .line 60
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "keepspec rules are evaluated separately, not here."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_7
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/R3;

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_0

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->B0()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    return-void

    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    .line 67
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    if-eqz v10, :cond_b

    .line 68
    new-instance v1, Lcom/android/tools/r8/shaking/v6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/v6;-><init>()V

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/android/tools/r8/shaking/w6;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/w6;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 71
    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_b
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v6, p3

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 75
    :cond_c
    new-instance v0, Lcom/android/tools/r8/shaking/x6;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/x6;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 76
    new-instance v12, Lcom/android/tools/r8/internal/Rm0;

    invoke-direct {v12, v0, v1}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v6, p3

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 79
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_f

    if-nez v10, :cond_e

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_f
    :goto_2
    instance-of v2, v9, Lcom/android/tools/r8/shaking/G3;

    if-nez v2, :cond_25

    .line 81
    instance-of v1, v9, Lcom/android/tools/r8/shaking/a3;

    if-eqz v1, :cond_10

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->o()Lcom/android/tools/r8/shaking/a3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/a3;)V

    return-void

    .line 83
    :cond_10
    instance-of v1, v9, Lcom/android/tools/r8/shaking/n;

    if-eqz v1, :cond_11

    .line 84
    move-object v0, v9

    check-cast v0, Lcom/android/tools/r8/shaking/n;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/n;)V

    return-void

    .line 85
    :cond_11
    instance-of v1, v9, Lcom/android/tools/r8/shaking/w2;

    if-nez v1, :cond_24

    instance-of v1, v9, Lcom/android/tools/r8/shaking/q4;

    if-eqz v1, :cond_12

    goto/16 :goto_a

    .line 86
    :cond_12
    instance-of v1, v9, Lcom/android/tools/r8/shaking/U2;

    if-eqz v1, :cond_13

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object/from16 v6, p3

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 88
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->c(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 90
    :cond_13
    instance-of v1, v9, Lcom/android/tools/r8/shaking/W2;

    if-nez v1, :cond_22

    instance-of v1, v9, Lcom/android/tools/r8/shaking/Y2;

    if-eqz v1, :cond_14

    goto/16 :goto_8

    .line 91
    :cond_14
    instance-of v1, v9, Lcom/android/tools/r8/shaking/y2;

    if-nez v1, :cond_21

    instance-of v1, v9, Lcom/android/tools/r8/shaking/I2;

    if-eqz v1, :cond_15

    goto/16 :goto_7

    .line 92
    :cond_15
    instance-of v1, v9, Lcom/android/tools/r8/shaking/Y0;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/n1;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/e2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/C2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/E2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/G2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/K2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/c2;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/v4;

    if-nez v1, :cond_20

    instance-of v1, v9, Lcom/android/tools/r8/shaking/d5;

    if-nez v1, :cond_20

    .line 93
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->w()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_6

    .line 94
    :cond_16
    instance-of v1, v9, Lcom/android/tools/r8/shaking/s;

    if-nez v1, :cond_1c

    instance-of v1, v9, Lcom/android/tools/r8/shaking/M2;

    if-nez v1, :cond_1c

    instance-of v1, v9, Lcom/android/tools/r8/shaking/Q2;

    if-nez v1, :cond_1c

    instance-of v1, v9, Lcom/android/tools/r8/shaking/A2;

    if-nez v1, :cond_1c

    instance-of v1, v9, Lcom/android/tools/r8/shaking/t4;

    if-eqz v1, :cond_17

    goto :goto_4

    .line 95
    :cond_17
    instance-of v1, v9, Lcom/android/tools/r8/shaking/O2;

    if-eqz v1, :cond_18

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object/from16 v6, p3

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 98
    :cond_18
    instance-of v1, v9, Lcom/android/tools/r8/shaking/D3;

    if-eqz v1, :cond_19

    .line 99
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    .line 100
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    return-void

    :cond_19
    if-nez v0, :cond_1b

    .line 101
    instance-of v0, v9, Lcom/android/tools/r8/shaking/w;

    if-eqz v0, :cond_1a

    goto :goto_3

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_1b
    :goto_3
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 103
    :cond_1c
    :goto_4
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/R3;

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_5

    .line 106
    :cond_1d
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->B0()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_5

    :cond_1e
    return-void

    :cond_1f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p3

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 108
    :cond_20
    :goto_6
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 109
    :cond_21
    :goto_7
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 110
    :cond_22
    :goto_8
    iget-object v0, v7, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    if-eqz v0, :cond_23

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move-object/from16 v6, p3

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 112
    invoke-virtual {p0, p1, v11, p2, v10}, Lcom/android/tools/r8/shaking/I4;->c(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    :cond_23
    :goto_9
    return-void

    :cond_24
    :goto_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p3

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    const/4 v5, 0x1

    move-object v2, v11

    move-object v3, p2

    move-object/from16 v6, p3

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V

    return-void

    .line 117
    :cond_25
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 7

    .line 234
    new-instance v6, Lcom/android/tools/r8/shaking/S6;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/shaking/S6;-><init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_2

    if-nez p5, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/E6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/shaking/E6;-><init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;)V

    .line 233
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V
    .locals 7

    .line 322
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/shaking/R3;

    .line 323
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/n6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/n6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {v4, p1, v0, v1, v2}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 324
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/shaking/W2;)V
    .locals 2

    .line 947
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 948
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/E40;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    .line 949
    iget-object p2, p2, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    .line 950
    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/E40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 951
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->v:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/N6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/N6;-><init>()V

    .line 952
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 953
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V
    .locals 7

    if-eqz p3, :cond_0

    .line 313
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 314
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 315
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/shaking/R3;

    .line 317
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/n6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/n6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {v4, p1, v0, v1, v2}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 318
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 319
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 320
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 321
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/a3;)V
    .locals 1

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 649
    new-instance v0, Lcom/android/tools/r8/shaking/J6;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/J6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    .line 650
    iput-boolean p1, p2, Lcom/android/tools/r8/shaking/v3;->o:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/L3;Lcom/android/tools/r8/shaking/d0;)V
    .locals 3

    .line 325
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez v1, :cond_4

    .line 332
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 333
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    .line 334
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v1

    .line 335
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    .line 336
    iget-object v2, v1, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 337
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    .line 339
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    .line 340
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 341
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 342
    iget-boolean p2, v0, Lcom/android/tools/r8/shaking/M3;->g:Z

    if-nez p2, :cond_5

    .line 343
    iget-object p2, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 344
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 345
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p2

    .line 346
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/W2;Lcom/android/tools/r8/shaking/R3;)V
    .locals 10

    .line 672
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 673
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->s()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 674
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g0()Lcom/android/tools/r8/graph/G0;

    move-result-object p1

    .line 675
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v8, 0x1

    if-ne v1, v2, :cond_5

    if-nez v0, :cond_4

    .line 676
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 677
    :cond_4
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/shaking/W2;)V

    goto :goto_2

    .line 678
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Le;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Le;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/r6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/r6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 679
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    .line 680
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/R3;->k()Z

    move-result v1

    new-instance v9, Lcom/android/tools/r8/shaking/A6;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/shaking/A6;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/shaking/W2;)V

    .line 681
    invoke-virtual {v0, v1, v9}, Lcom/android/tools/r8/shaking/k;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/k;

    move-result-object p3

    .line 682
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 683
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object p3

    .line 684
    iput-boolean v8, p3, Lcom/android/tools/r8/internal/E4;->c:Z

    .line 685
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 686
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 688
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->x:Lcom/android/tools/r8/internal/o40;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 690
    iget p3, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 p3, p3, 0x2

    .line 691
    iput p3, p1, Lcom/android/tools/r8/internal/WY;->u:I

    .line 692
    :cond_6
    :goto_2
    iput-boolean v8, p2, Lcom/android/tools/r8/shaking/v3;->o:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/Y2;Lcom/android/tools/r8/shaking/R3;)V
    .locals 5

    .line 709
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 710
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/R3;->k()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 711
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g0()Lcom/android/tools/r8/graph/G0;

    move-result-object p1

    .line 712
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Le;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Le;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/r6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/r6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 713
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 715
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/T3;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/T3;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 716
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/T3;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 717
    sget-boolean v1, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v1, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    goto :goto_1

    .line 718
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 719
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/shaking/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 720
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->b:Lcom/android/tools/r8/shaking/k;

    .line 721
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object v3

    .line 723
    iget-object v4, v3, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 724
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    iput-object v1, v3, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 725
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 726
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object p1

    .line 727
    iget-object v1, p1, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 728
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    iput-object v1, p1, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 729
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/internal/F1;)V

    const/4 p1, 0x1

    .line 730
    iput-boolean p1, p2, Lcom/android/tools/r8/shaking/v3;->o:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 5

    .line 929
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_1

    .line 930
    instance-of v1, p0, Lcom/android/tools/r8/shaking/C4;

    if-nez v1, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 932
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 933
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    .line 934
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 935
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->c()Lcom/android/tools/r8/graph/F0;

    move-result-object p3

    .line 936
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 937
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 938
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 939
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 940
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 941
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p3

    .line 942
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rule matches the static final field `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "`, which may have been inlined: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 943
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 944
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 945
    :cond_5
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->o:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g0()Lcom/android/tools/r8/graph/G0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 946
    iput-boolean p1, p2, Lcom/android/tools/r8/shaking/v3;->o:Z

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V
    .locals 1

    monitor-enter p0

    .line 350
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    instance-of v0, p2, Lcom/android/tools/r8/shaking/K3;

    if-eqz v0, :cond_1

    .line 352
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_f

    .line 353
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p1

    .line 354
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->q()Lcom/android/tools/r8/shaking/K3;

    move-result-object p2

    .line 355
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/K3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_16

    .line 356
    :cond_1
    :try_start_1
    instance-of p4, p2, Lcom/android/tools/r8/shaking/U2;

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    .line 357
    iget-object p4, p0, Lcom/android/tools/r8/shaking/I4;->n:Ljava/util/IdentityHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {p4, p1, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 359
    :cond_2
    :try_start_2
    instance-of p4, p2, Lcom/android/tools/r8/shaking/W2;

    if-eqz p4, :cond_3

    .line 360
    check-cast p2, Lcom/android/tools/r8/shaking/W2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/W2;Lcom/android/tools/r8/shaking/R3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 361
    :cond_3
    :try_start_3
    instance-of p4, p2, Lcom/android/tools/r8/shaking/Y2;

    if-eqz p4, :cond_4

    .line 362
    check-cast p2, Lcom/android/tools/r8/shaking/Y2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/Y2;Lcom/android/tools/r8/shaking/R3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 363
    :cond_4
    :try_start_4
    instance-of p3, p2, Lcom/android/tools/r8/shaking/q4;

    if-eqz p3, :cond_5

    .line 364
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    new-instance p4, Lcom/android/tools/r8/shaking/D6;

    invoke-direct {p4}, Lcom/android/tools/r8/shaking/D6;-><init>()V

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 365
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 366
    :cond_5
    :try_start_5
    instance-of p3, p2, Lcom/android/tools/r8/shaking/a3;

    if-eqz p3, :cond_8

    .line 367
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_7

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 368
    :cond_7
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->O()Lcom/android/tools/r8/graph/G5;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->o()Lcom/android/tools/r8/shaking/a3;

    move-result-object p2

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 370
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 371
    :cond_8
    :try_start_6
    instance-of p3, p2, Lcom/android/tools/r8/shaking/Y0;

    if-eqz p3, :cond_d

    .line 372
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_39

    .line 373
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 374
    move-object p4, p2

    check-cast p4, Lcom/android/tools/r8/shaking/Y0;

    .line 375
    iget-object p4, p4, Lcom/android/tools/r8/shaking/Y0;->r:Lcom/android/tools/r8/shaking/X0;

    .line 376
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_c

    if-eq p4, v0, :cond_b

    const/4 p3, 0x2

    if-eq p4, p3, :cond_a

    const/4 p3, 0x3

    if-ne p4, p3, :cond_9

    .line 377
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 378
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 379
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 380
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 381
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 382
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->C()Lcom/android/tools/r8/shaking/H1;

    goto :goto_1

    .line 384
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 385
    :cond_a
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 386
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 387
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 388
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 389
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->r()Lcom/android/tools/r8/shaking/H1;

    goto :goto_1

    .line 392
    :cond_b
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 393
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 394
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 395
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 396
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->u()Lcom/android/tools/r8/shaking/H1;

    goto :goto_1

    .line 399
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->i:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_1
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 401
    :cond_d
    :try_start_7
    instance-of p3, p2, Lcom/android/tools/r8/shaking/d5;

    if-eqz p3, :cond_f

    .line 402
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 403
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->j:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    .line 405
    :cond_e
    :try_start_8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 406
    :cond_f
    instance-of p3, p2, Lcom/android/tools/r8/shaking/s;

    if-eqz p3, :cond_13

    .line 407
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->m()Lcom/android/tools/r8/shaking/s;

    move-result-object p3

    .line 408
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->asClass()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    if-eqz p4, :cond_12

    .line 409
    iget-object p1, p3, Lcom/android/tools/r8/shaking/s;->r:Lcom/android/tools/r8/shaking/r;

    .line 410
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_11

    if-ne p1, v0, :cond_10

    .line 411
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 412
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 413
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 414
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 415
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->p()Lcom/android/tools/r8/shaking/k1;

    goto :goto_2

    .line 418
    :cond_10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 419
    :cond_11
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->l:Lcom/android/tools/r8/internal/W60;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 420
    iget-object p1, p1, Lcom/android/tools/r8/internal/W60;->a:Ljava/util/Set;

    .line 421
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_2
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 423
    :cond_12
    :try_start_9
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 424
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/s;->A()Ljava/lang/String;

    move-result-object p3

    .line 425
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unexpected -"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " rule for a non-class type: `"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 426
    :cond_13
    instance-of p3, p2, Lcom/android/tools/r8/shaking/w2;

    if-eqz p3, :cond_16

    .line 427
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_15

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_3

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 428
    :cond_15
    :goto_3
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 429
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 430
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 431
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 432
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->f()Lcom/android/tools/r8/shaking/s1;

    .line 434
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    .line 435
    :cond_16
    :try_start_a
    instance-of p3, p2, Lcom/android/tools/r8/shaking/y2;

    if-eqz p3, :cond_19

    .line 436
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_18

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->L()Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_4

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 437
    :cond_18
    :goto_4
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 438
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 439
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 440
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 441
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->b()Lcom/android/tools/r8/shaking/p1;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/p1;->q()Lcom/android/tools/r8/shaking/p1;

    .line 444
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    .line 445
    :cond_19
    :try_start_b
    instance-of p3, p2, Lcom/android/tools/r8/shaking/I2;

    if-eqz p3, :cond_1c

    .line 446
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_1b

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->L()Z

    move-result p3

    if-eqz p3, :cond_1a

    goto :goto_5

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 447
    :cond_1b
    :goto_5
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 448
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 449
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 450
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 451
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->b()Lcom/android/tools/r8/shaking/p1;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/p1;->r()Lcom/android/tools/r8/shaking/p1;

    .line 454
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    .line 455
    :cond_1c
    :try_start_c
    instance-of p3, p2, Lcom/android/tools/r8/shaking/M2;

    if-eqz p3, :cond_1f

    .line 456
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_1e

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p3

    if-eqz p3, :cond_1d

    goto :goto_6

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 457
    :cond_1e
    :goto_6
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 458
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 459
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 460
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 461
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->u()Lcom/android/tools/r8/shaking/k1;

    .line 464
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-void

    .line 465
    :cond_1f
    :try_start_d
    instance-of p3, p2, Lcom/android/tools/r8/shaking/Q2;

    if-eqz p3, :cond_22

    .line 466
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_21

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p3

    if-eqz p3, :cond_20

    goto :goto_7

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 467
    :cond_21
    :goto_7
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 468
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 469
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 470
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 471
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    .line 474
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-void

    .line 475
    :cond_22
    :try_start_e
    instance-of p3, p2, Lcom/android/tools/r8/shaking/A2;

    if-eqz p3, :cond_25

    .line 476
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_24

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p3

    if-eqz p3, :cond_23

    goto :goto_8

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 477
    :cond_24
    :goto_8
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 478
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 479
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 480
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 481
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    .line 484
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-void

    .line 485
    :cond_25
    :try_start_f
    instance-of p3, p2, Lcom/android/tools/r8/shaking/C2;

    if-eqz p3, :cond_28

    .line 486
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_27

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_26

    goto :goto_9

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 487
    :cond_27
    :goto_9
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 488
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 489
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 490
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 491
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->v()Lcom/android/tools/r8/shaking/H1;

    .line 494
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return-void

    .line 495
    :cond_28
    :try_start_10
    instance-of p3, p2, Lcom/android/tools/r8/shaking/E2;

    if-eqz p3, :cond_2b

    .line 496
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_2a

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_29

    goto :goto_a

    :cond_29
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 497
    :cond_2a
    :goto_a
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 498
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 499
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 500
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 501
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->y()Lcom/android/tools/r8/shaking/H1;

    .line 504
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return-void

    .line 505
    :cond_2b
    :try_start_11
    instance-of p3, p2, Lcom/android/tools/r8/shaking/G2;

    if-eqz p3, :cond_2e

    .line 506
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_2d

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_b

    :cond_2c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 507
    :cond_2d
    :goto_b
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 508
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 509
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 510
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 511
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->z()Lcom/android/tools/r8/shaking/H1;

    .line 514
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-void

    .line 515
    :cond_2e
    :try_start_12
    instance-of p3, p2, Lcom/android/tools/r8/shaking/K2;

    if-eqz p3, :cond_31

    .line 516
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_30

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_2f

    goto :goto_c

    :cond_2f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 517
    :cond_30
    :goto_c
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 518
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 519
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 520
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 521
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->B()Lcom/android/tools/r8/shaking/H1;

    .line 524
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-void

    .line 525
    :cond_31
    :try_start_13
    instance-of p3, p2, Lcom/android/tools/r8/shaking/O2;

    if-eqz p3, :cond_32

    .line 526
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result p3

    if-eqz p3, :cond_39

    .line 527
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 528
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 529
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 530
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 531
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->c()Lcom/android/tools/r8/shaking/E1;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/E1;->p()Lcom/android/tools/r8/shaking/E1;

    .line 534
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return-void

    .line 535
    :cond_32
    :try_start_14
    instance-of p3, p2, Lcom/android/tools/r8/shaking/D3;

    if-eqz p3, :cond_33

    .line 536
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit p0

    return-void

    .line 537
    :cond_33
    :try_start_15
    instance-of p3, p2, Lcom/android/tools/r8/shaking/t4;

    if-eqz p3, :cond_36

    .line 538
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 539
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p3

    if-eqz p3, :cond_39

    .line 540
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->r()Lcom/android/tools/r8/shaking/t4;

    move-result-object p3

    .line 541
    iget p3, p3, Lcom/android/tools/r8/shaking/t4;->r:I

    .line 542
    invoke-static {p3}, Lcom/android/tools/r8/c;->b(I)I

    move-result p3

    if-eqz p3, :cond_35

    if-ne p3, v0, :cond_34

    .line 543
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 544
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 545
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 546
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 547
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 548
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->A()Lcom/android/tools/r8/shaking/H1;

    goto :goto_d

    .line 550
    :cond_34
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 551
    :cond_35
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->k:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    :goto_d
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return-void

    .line 553
    :cond_36
    :try_start_16
    instance-of p3, p2, Lcom/android/tools/r8/shaking/v4;

    if-eqz p3, :cond_3a

    .line 554
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_39

    .line 555
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 556
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->s()Lcom/android/tools/r8/shaking/v4;

    move-result-object p3

    .line 557
    iget p3, p3, Lcom/android/tools/r8/shaking/v4;->r:I

    .line 558
    invoke-static {p3}, Lcom/android/tools/r8/c;->b(I)I

    move-result p3

    if-eqz p3, :cond_38

    if-ne p3, v0, :cond_37

    .line 559
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 560
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 561
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 562
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 563
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->A()Lcom/android/tools/r8/shaking/H1;

    goto :goto_e

    .line 566
    :cond_37
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 567
    :cond_38
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->k:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    :goto_e
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit p0

    return-void

    :cond_39
    :goto_f
    monitor-exit p0

    return-void

    .line 569
    :cond_3a
    :try_start_17
    instance-of p3, p2, Lcom/android/tools/r8/shaking/n1;

    if-eqz p3, :cond_3d

    .line 570
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_3c

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_3b

    goto :goto_10

    :cond_3b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 571
    :cond_3c
    :goto_10
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 572
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 573
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 574
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 575
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->t()Lcom/android/tools/r8/shaking/H1;

    .line 578
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    return-void

    .line 579
    :cond_3d
    :try_start_18
    instance-of p3, p2, Lcom/android/tools/r8/shaking/c2;

    if-eqz p3, :cond_40

    .line 580
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_3f

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_11

    :cond_3e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 581
    :cond_3f
    :goto_11
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 582
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 583
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 584
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 585
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 586
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->E()Lcom/android/tools/r8/shaking/H1;

    .line 588
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    monitor-exit p0

    return-void

    .line 589
    :cond_40
    :try_start_19
    instance-of p3, p2, Lcom/android/tools/r8/shaking/e2;

    if-eqz p3, :cond_43

    .line 590
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_42

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_41

    goto :goto_12

    :cond_41
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 591
    :cond_42
    :goto_12
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 592
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 593
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 594
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 595
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->F()Lcom/android/tools/r8/shaking/H1;

    .line 598
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    monitor-exit p0

    return-void

    .line 599
    :cond_43
    :try_start_1a
    instance-of p3, p2, Lcom/android/tools/r8/shaking/w;

    if-eqz p3, :cond_47

    .line 600
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_45

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p3

    if-eqz p3, :cond_44

    goto :goto_13

    :cond_44
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 601
    :cond_45
    :goto_13
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->x:Lcom/android/tools/r8/internal/o40;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p3

    .line 603
    iput-boolean v0, p3, Lcom/android/tools/r8/internal/WY;->h:Z

    .line 604
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_46

    .line 605
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 606
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    .line 607
    sget-object p4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 608
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p3

    .line 609
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 611
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    .line 612
    :cond_46
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    monitor-exit p0

    return-void

    .line 613
    :cond_47
    :try_start_1b
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->w()Z

    move-result p3

    if-eqz p3, :cond_4c

    .line 614
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/v3;->n()Lcom/android/tools/r8/shaking/r2;

    move-result-object p2

    .line 615
    sget-boolean p3, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez p3, :cond_49

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p3

    if-eqz p3, :cond_48

    goto :goto_14

    :cond_48
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 616
    :cond_49
    :goto_14
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->x:Lcom/android/tools/r8/internal/o40;

    .line 617
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/r2;->C()I

    move-result p4

    .line 618
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 620
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 621
    iget p3, p1, Lcom/android/tools/r8/internal/WY;->r:I

    if-nez p3, :cond_4a

    goto :goto_15

    :cond_4a
    if-nez p4, :cond_4b

    move p4, p3

    goto :goto_15

    .line 622
    :cond_4b
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 623
    :goto_15
    iput p4, p1, Lcom/android/tools/r8/internal/WY;->r:I

    .line 624
    iput-boolean v0, p2, Lcom/android/tools/r8/shaking/v3;->o:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    monitor-exit p0

    return-void

    .line 625
    :cond_4c
    :try_start_1c
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :goto_16
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/E40;Ljava/util/Set;)V
    .locals 4

    .line 956
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/y6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/y6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/errors/a;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/a;-><init>()V

    .line 958
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 959
    iget-object v3, v1, Lcom/android/tools/r8/errors/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 960
    :cond_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/E40;->a:Lcom/android/tools/r8/origin/Origin;

    .line 961
    iput-object p2, v1, Lcom/android/tools/r8/errors/a;->b:Lcom/android/tools/r8/origin/Origin;

    .line 962
    iget-object p1, p1, Lcom/android/tools/r8/internal/E40;->b:Lcom/android/tools/r8/position/Position;

    .line 963
    iput-object p1, v1, Lcom/android/tools/r8/errors/a;->c:Lcom/android/tools/r8/position/Position;

    .line 964
    invoke-virtual {v1}, Lcom/android/tools/r8/errors/a;->a()Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;

    move-result-object p1

    .line 965
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bz;)V
    .locals 10

    .line 159
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->l:Lcom/android/tools/r8/internal/W60;

    iget-object v7, p0, Lcom/android/tools/r8/shaking/I4;->i:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    new-instance v9, Lcom/android/tools/r8/internal/az;

    move-object v0, v9

    move-object v1, p1

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/az;-><init>(Lcom/android/tools/r8/internal/bz;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/W60;Ljava/util/Set;Lcom/android/tools/r8/shaking/A;)V

    .line 162
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/az;->a()V

    .line 163
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ja0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ja0;->d:Lcom/android/tools/r8/graph/A2;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->n:Lcom/android/tools/r8/graph/M2;

    .line 166
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 167
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    .line 172
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/internal/az;->a(Lcom/android/tools/r8/graph/Y5;)V

    .line 173
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ia0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 175
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    .line 180
    iget-object v0, v9, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    .line 181
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    .line 186
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 187
    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->u()Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cz;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/shaking/A;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 2

    .line 118
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/c3;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 120
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_0

    :cond_1
    return-void

    .line 122
    :cond_2
    new-instance v0, Lcom/android/tools/r8/shaking/s6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/tools/r8/shaking/s6;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/shaking/W2;Lcom/android/tools/r8/shaking/k;)V
    .locals 3

    .line 693
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/T3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/T3;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/T3;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 699
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/shaking/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 700
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object v1

    .line 702
    iget-object v2, v1, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 703
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    iput-object v0, v1, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    .line 704
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    .line 705
    invoke-virtual {p5, p3}, Lcom/android/tools/r8/shaking/k;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/E4;

    move-result-object p3

    .line 706
    iget-object p5, p3, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 707
    invoke-static {p5, p2}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p5

    iput-object p5, p3, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    .line 708
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/shaking/f;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    .line 124
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 125
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/v3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 126
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/v3;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/u2;

    .line 129
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/internal/F1;)V
    .locals 2

    .line 966
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/R3;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    sget-boolean v0, Lcom/android/tools/r8/shaking/I4;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 968
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 969
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object p2

    .line 970
    iget-object p3, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/errors/b;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/b;-><init>()V

    .line 971
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/T3;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/T3;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 972
    iput-object v1, v0, Lcom/android/tools/r8/errors/b;->a:Lcom/android/tools/r8/graph/M2;

    .line 973
    iput-object p2, v0, Lcom/android/tools/r8/errors/b;->b:Lcom/android/tools/r8/graph/L2;

    .line 974
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    .line 975
    iput-object p2, v0, Lcom/android/tools/r8/errors/b;->c:Lcom/android/tools/r8/origin/Origin;

    .line 976
    iget-object p1, p1, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    .line 977
    iput-object p1, v0, Lcom/android/tools/r8/errors/b;->d:Lcom/android/tools/r8/position/Position;

    .line 978
    invoke-virtual {v0}, Lcom/android/tools/r8/errors/b;->a()Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;

    move-result-object p1

    .line 979
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/F0;)V
    .locals 7

    .line 235
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 236
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/F0;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/H0;)V
    .locals 8

    .line 229
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 230
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/H0;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/H0;)V
    .locals 8

    .line 227
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 228
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/H0;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    .line 955
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->N:Lcom/android/tools/r8/graph/L2;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->O:Lcom/android/tools/r8/graph/L2;

    if-eq p1, v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->P:Lcom/android/tools/r8/graph/L2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 225
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-nez v0, :cond_2

    if-eq p1, p2, :cond_2

    .line 226
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 278
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 279
    iget-object v5, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-nez v5, :cond_1

    return v0

    .line 280
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 281
    iget-object v4, p2, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 282
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    .line 283
    invoke-static {v4, v5, v7, v8}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/f;)V

    return v6

    .line 285
    :cond_2
    invoke-virtual {p0, v5, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez p1, :cond_5

    return v0

    .line 287
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_6

    return v0

    .line 288
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Z)Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 290
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz v0, :cond_0

    .line 291
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 292
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 293
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/B6;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/r8/shaking/B6;-><init>(Lcom/android/tools/r8/shaking/I4;Z)V

    .line 295
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 296
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/tools/r8/shaking/C6;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/shaking/C6;-><init>(Lcom/android/tools/r8/shaking/i4;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/F0;)Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/z6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/z6;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(ZLcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/I4;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/F4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/shaking/F4;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/y;)V

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v1

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/pb0;->g:Z

    if-nez v2, :cond_2

    .line 7
    iget-object v3, v1, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/tracereferences/j;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb0;->a()V

    .line 13
    new-instance p1, Lcom/android/tools/r8/shaking/G4;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/shaking/G4;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/y;)V

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v0

    if-nez v2, :cond_4

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/android/tools/r8/ResourceShrinker;->runForTesting(Ljava/util/Collection;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V

    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 60
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I4;->v:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/L6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/L6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 7

    .line 41
    new-instance v6, Lcom/android/tools/r8/shaking/F6;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/shaking/F6;-><init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;ZLcom/android/tools/r8/shaking/H3;)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    .line 21
    iget-object v0, v7, Lcom/android/tools/r8/shaking/I4;->r:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 22
    :goto_1
    new-instance v10, Ljava/util/ArrayDeque;

    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    invoke-virtual {v10, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/tools/r8/graph/E0;

    if-nez p5, :cond_2

    .line 26
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 27
    :cond_2
    new-instance v12, Lcom/android/tools/r8/shaking/t6;

    invoke-direct {v12, p0, v11, p1}, Lcom/android/tools/r8/shaking/t6;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    new-instance v13, Lcom/android/tools/r8/shaking/u6;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/shaking/u6;-><init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {v11, v13, v12}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 28
    iget-object v0, v11, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 29
    iget-object v1, v7, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v10, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v4, p3

    .line 33
    instance-of v0, v4, Lcom/android/tools/r8/shaking/K3;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/shaking/v3;->q()Lcom/android/tools/r8/shaking/K3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-nez v0, :cond_4

    .line 35
    instance-of v0, v7, Lcom/android/tools/r8/shaking/C4;

    if-nez v0, :cond_4

    .line 36
    new-instance v9, Lcom/android/tools/r8/shaking/H4;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/shaking/H4;-><init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Ljava/util/Map;Lcom/android/tools/r8/shaking/H3;)V

    .line 38
    iget-object v0, v9, Lcom/android/tools/r8/shaking/H4;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/shaking/H4;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_4
    return-void
.end method

.method public final synthetic b(Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/F0;)V
    .locals 7

    .line 42
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/F0;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final synthetic b(Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/H0;)V
    .locals 8

    .line 39
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/h1;Ljava/util/Map;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/H0;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z
    .locals 5

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->e:Lcom/android/tools/r8/graph/g3;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p2, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    .line 49
    invoke-static {v2, v0, v3, v4}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/f;)V

    move v0, v1

    goto :goto_2

    .line 51
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Z)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    return v1

    .line 53
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 54
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;Z)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Z
    .locals 4

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/U3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F0;

    .line 57
    iget-object v1, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/n6;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/n6;-><init>(Lcom/android/tools/r8/shaking/I4;)V

    iget-object v3, p0, Lcom/android/tools/r8/shaking/I4;->t:Lcom/android/tools/r8/shaking/D;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/R3;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/Oz0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Oz0;-><init>()V

    new-instance v9, Lcom/android/tools/r8/shaking/G6;

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/shaking/G6;-><init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    invoke-virtual {p1, v9, v2}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I4;->d:Lcom/android/tools/r8/graph/Y5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
