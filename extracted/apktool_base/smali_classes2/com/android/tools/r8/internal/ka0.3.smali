.class public final Lcom/android/tools/r8/internal/ka0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yZ;
.implements Lcom/android/tools/r8/internal/BZ;
.implements Lcom/android/tools/r8/internal/jx;


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Hb0;

.field public final c:Lcom/android/tools/r8/internal/qa0;

.field public final d:Lcom/android/tools/r8/internal/La0;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/Set;

.field public final i:Lcom/android/tools/r8/internal/m80;

.field public final j:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->g:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->h:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->i:Lcom/android/tools/r8/internal/m80;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka0;->j:Ljava/util/IdentityHashMap;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    iget-object p1, v0, Lcom/android/tools/r8/internal/Oa0;->a:Lcom/android/tools/r8/internal/Hb0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ka0;->b:Lcom/android/tools/r8/internal/Hb0;

    iget-object p1, v0, Lcom/android/tools/r8/internal/Oa0;->b:Lcom/android/tools/r8/internal/qa0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ka0;->c:Lcom/android/tools/r8/internal/qa0;

    iget-object p1, v0, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ua0;
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ua0;

    return-object p1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ua0;

    return-object p1

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-nez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;)V

    .line 337
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ua0;

    return-object p1
.end method

.method public final a()Ljava/util/IdentityHashMap;
    .locals 5

    .line 110
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->i:Lcom/android/tools/r8/internal/m80;

    .line 112
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 113
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 115
    iget-object v3, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 116
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v2

    .line 117
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/android/tools/r8/internal/Lg1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Lg1;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 119
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 120
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/IdentityHashMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V
    .locals 3

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j;->h()Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 39
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ka0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    .line 44
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/La0;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    sget-object p2, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/H1;->y()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    .line 48
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 49
    invoke-virtual {p3, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 50
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->i:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lcom/android/tools/r8/internal/ka0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/ua0;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 56
    :cond_2
    sget-boolean p3, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 57
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;)V
    .locals 5

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 59
    sget-boolean v1, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    .line 62
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 63
    iget-object v2, p0, Lcom/android/tools/r8/internal/ka0;->b:Lcom/android/tools/r8/internal/Hb0;

    .line 64
    sget-boolean v3, Lcom/android/tools/r8/internal/Hb0;->c:Z

    if-nez v3, :cond_3

    .line 65
    iget-object v3, v2, Lcom/android/tools/r8/internal/Hb0;->b:Lcom/android/tools/r8/internal/La0;

    .line 66
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_3
    :goto_1
    iget-object v3, v2, Lcom/android/tools/r8/internal/Hb0;->b:Lcom/android/tools/r8/internal/La0;

    .line 68
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/Ra0;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 69
    iget-object v4, v2, Lcom/android/tools/r8/internal/Hb0;->b:Lcom/android/tools/r8/internal/La0;

    .line 70
    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/Ra0;->b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 71
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/Ow0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Nw0;

    move-result-object v1

    .line 72
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Nw0;)Lcom/android/tools/r8/internal/ua0;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 73
    :goto_2
    invoke-virtual {p2, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/No0;)V
    .locals 6

    .line 168
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 171
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 174
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    if-nez p1, :cond_2

    .line 175
    sget-boolean p1, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 176
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/La0;->r:Lcom/android/tools/r8/internal/Ja0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Ja0;->e:Lcom/android/tools/r8/graph/A2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_4

    .line 180
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 182
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    goto :goto_0

    .line 184
    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/Ja0;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_5

    .line 185
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 187
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 188
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_5
    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->q:Lcom/android/tools/r8/internal/Ga0;

    .line 190
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ga0;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v2, :cond_6

    .line 191
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ga0;->b:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_a

    .line 192
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 194
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 195
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    instance-of v1, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v1, :cond_7

    goto :goto_2

    .line 198
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 199
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->j:Ljava/util/IdentityHashMap;

    .line 200
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/Kg1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Kg1;-><init>()V

    .line 201
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 202
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 203
    :cond_9
    :goto_1
    sget-boolean p1, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz p1, :cond_b

    :cond_a
    :goto_2
    return-void

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    .line 124
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 126
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/IdentityHashMap;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    instance-of p2, p1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz p2, :cond_6

    .line 131
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 133
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    if-nez p2, :cond_3

    .line 134
    sget-boolean p2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/La0;->h:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_3
    instance-of p1, p2, Lcom/android/tools/r8/graph/F5;

    if-eqz p1, :cond_4

    .line 136
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/Ng1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng1;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f80;

    .line 138
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    return-void

    .line 139
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 140
    :cond_6
    sget-boolean p2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez p2, :cond_a

    if-nez p2, :cond_8

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 142
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-nez p2, :cond_a

    .line 143
    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/La0;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    iget-object v0, p2, Lcom/android/tools/r8/internal/La0;->E:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    iget-object v0, p2, Lcom/android/tools/r8/internal/La0;->z:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 148
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p2, Lcom/android/tools/r8/internal/La0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ka0;->a()Ljava/util/IdentityHashMap;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Mg1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Mg1;-><init>(Lcom/android/tools/r8/internal/ka0;Lcom/android/tools/r8/shaking/N;)V

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 107
    iget-object p1, p0, Lcom/android/tools/r8/internal/ka0;->i:Lcom/android/tools/r8/internal/m80;

    .line 108
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;)V
    .locals 4

    .line 150
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 151
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    if-nez p2, :cond_1

    .line 152
    sget-boolean p1, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 154
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 155
    invoke-static {v0, p2, p3}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;)Lcom/android/tools/r8/internal/e80;

    move-result-object p2

    .line 156
    iget-object p3, p3, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 157
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 158
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    .line 159
    iget-object v1, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 160
    sget-object v2, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 161
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, v0}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 162
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Lcom/android/tools/r8/internal/No0;

    if-nez v0, :cond_4

    .line 164
    sget-boolean v0, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 167
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/No0;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;)V
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ua0;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/ua0;->a:Lcom/android/tools/r8/graph/H5;

    .line 207
    iget-object v3, v1, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    .line 208
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/na0;

    .line 209
    iget-object v6, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v6, v1}, Lcom/android/tools/r8/internal/na0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_e

    .line 211
    iget-object v7, p1, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/l1;

    .line 212
    iget-object v7, v7, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 213
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/o3;

    if-eqz v7, :cond_7

    .line 214
    iget-object v9, v7, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 215
    iget v7, v7, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v9, v7, 0x8

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    and-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_7

    goto :goto_5

    .line 216
    :cond_7
    iget-object v7, p1, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/l1;

    .line 217
    iget-object v7, v7, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 218
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/o3;

    if-nez v7, :cond_8

    goto :goto_2

    .line 219
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    sget-object v10, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 221
    iget-object v10, v7, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/graph/d;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 222
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v7, v5

    goto :goto_4

    :cond_a
    :goto_3
    move v7, v8

    goto :goto_4

    .line 223
    :cond_b
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v7

    :goto_4
    if-nez v7, :cond_c

    .line 224
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/na0;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 225
    :cond_c
    :goto_5
    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    :cond_d
    :goto_6
    move v7, v8

    goto :goto_7

    .line 226
    :cond_e
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/na0;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 227
    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_6

    :cond_f
    move v7, v5

    :goto_7
    if-eqz v7, :cond_12

    .line 228
    iget-object v7, v4, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 229
    instance-of v9, v7, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v9, :cond_10

    .line 230
    iget-object v6, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v6, v1}, Lcom/android/tools/r8/internal/na0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v6

    goto/16 :goto_c

    .line 231
    :cond_10
    iget v9, v1, Lcom/android/tools/r8/internal/ua0;->b:I

    .line 232
    sget-boolean v10, Lcom/android/tools/r8/internal/Ra0;->a:Z

    and-int/2addr v9, v8

    if-eqz v9, :cond_11

    move v9, v8

    goto :goto_8

    :cond_11
    move v9, v5

    .line 233
    :goto_8
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/pa0;->a(Z)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 234
    iget-object v7, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v7, v1}, Lcom/android/tools/r8/internal/na0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v4

    .line 235
    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    move-object v6, v4

    goto/16 :goto_c

    .line 236
    :cond_12
    iget-object v7, v4, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 237
    instance-of v9, v7, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v9, :cond_13

    .line 238
    iget-object v7, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 239
    invoke-virtual {v4, v7, v1}, Lcom/android/tools/r8/internal/na0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 240
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto/16 :goto_c

    .line 241
    :cond_13
    iget v9, v1, Lcom/android/tools/r8/internal/ua0;->b:I

    .line 242
    sget-boolean v10, Lcom/android/tools/r8/internal/Ra0;->a:Z

    and-int/2addr v9, v8

    if-eqz v9, :cond_14

    move v9, v8

    goto :goto_9

    :cond_14
    move v9, v5

    .line 243
    :goto_9
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/pa0;->a(Z)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 244
    iget-object v7, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 245
    invoke-virtual {v4, v7, v1}, Lcom/android/tools/r8/internal/na0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 246
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v9}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_1

    .line 247
    :cond_15
    iget-object v9, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ;->C:Z

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 248
    iget-boolean v9, v9, Lcom/android/tools/r8/graph/y;->D:Z

    if-eqz v9, :cond_1a

    .line 249
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/g1;

    .line 250
    iget-object v7, v7, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 251
    sget-boolean v9, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v9, :cond_18

    .line 252
    iget-object v9, v4, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 253
    iget v10, v1, Lcom/android/tools/r8/internal/ua0;->b:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_16

    move v10, v8

    goto :goto_a

    :cond_16
    move v10, v5

    .line 254
    :goto_a
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/pa0;->a(Z)Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_b

    .line 255
    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 256
    :cond_18
    :goto_b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v4

    rem-int/lit8 v4, v4, 0x20

    add-int/2addr v4, v8

    .line 257
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/vw;->h()I

    move-result v7

    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/P6;->c(II)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1

    :cond_19
    const/4 v6, 0x0

    :cond_1a
    :goto_c
    if-eqz v6, :cond_2

    .line 258
    new-instance v4, Lcom/android/tools/r8/internal/Og1;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/Og1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 259
    iget-object v7, p1, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/l1;

    .line 260
    iget-object v7, v7, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 261
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/o3;

    if-eqz v7, :cond_1b

    .line 262
    iget-object v7, v7, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/graph/d;->a(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v5, v8

    :cond_1b
    if-eqz v5, :cond_1c

    .line 263
    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    .line 264
    :cond_1c
    invoke-virtual {p2, v6, v2}, Lcom/android/tools/r8/shaking/L0;->c(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_1

    .line 265
    :cond_1d
    iget-object v2, v1, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    :cond_1e
    if-nez v5, :cond_1f

    goto/16 :goto_0

    .line 266
    :cond_1f
    iget-object v1, v1, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Fa0;

    .line 268
    iget-object v3, v2, Lcom/android/tools/r8/internal/Fa0;->b:Lcom/android/tools/r8/internal/oa0;

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    instance-of v4, v3, Lcom/android/tools/r8/internal/HT;

    if-nez v4, :cond_21

    .line 271
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_20

    goto :goto_d

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 272
    :cond_21
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object v3

    .line 273
    iget-object v3, v3, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    .line 274
    iget-object v4, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 275
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    instance-of v4, v3, Lcom/android/tools/r8/graph/F3;

    if-nez v4, :cond_23

    .line 278
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_22

    goto :goto_d

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 279
    :cond_23
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    if-nez v3, :cond_25

    .line 280
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_24

    goto :goto_d

    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 281
    :cond_25
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    if-nez v4, :cond_27

    .line 282
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_26

    goto :goto_d

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 283
    :cond_27
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_d

    .line 284
    :cond_28
    iget-object v2, v2, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    .line 285
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    instance-of v5, v2, Lcom/android/tools/r8/internal/HT;

    if-nez v5, :cond_2a

    .line 287
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_29

    goto/16 :goto_d

    :cond_29
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 288
    :cond_2a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object v2

    .line 289
    iget-object v2, v2, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    .line 290
    iget-object v5, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    .line 291
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    instance-of v5, v2, Lcom/android/tools/r8/graph/F3;

    if-nez v5, :cond_2c

    .line 294
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_2b

    goto/16 :goto_d

    :cond_2b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 295
    :cond_2c
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 296
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    if-eq v5, v3, :cond_2d

    goto :goto_e

    .line 297
    :cond_2d
    invoke-virtual {p2, v2, v4}, Lcom/android/tools/r8/shaking/L0;->c(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_d

    .line 298
    :cond_2e
    :goto_e
    sget-boolean v2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v2, :cond_2f

    goto/16 :goto_d

    :cond_2f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_30
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 74
    const-string p3, "[Proto] Extend fixpoint"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/shaking/N;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;)V

    .line 77
    iget-object p3, p1, Lcom/android/tools/r8/shaking/N;->l:Lcom/android/tools/r8/shaking/i0;

    .line 78
    sget-object v0, Lcom/android/tools/r8/internal/la0;->r:Lcom/android/tools/r8/shaking/i0;

    if-ne p3, v0, :cond_9

    .line 79
    sget-boolean p3, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez p3, :cond_1

    .line 80
    iget-object p3, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 81
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_1
    :goto_0
    iget-object p3, p2, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 83
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 84
    iget-object p3, p0, Lcom/android/tools/r8/internal/ka0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p3}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ua0;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/ua0;->a:Lcom/android/tools/r8/graph/H5;

    .line 87
    iget-object v2, p0, Lcom/android/tools/r8/internal/ka0;->h:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 88
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/na0;

    .line 90
    iget-object v4, v3, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 92
    :cond_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v5, v0}, Lcom/android/tools/r8/internal/na0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 93
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_7
    :goto_3
    if-ge v5, v3, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/Ba0;

    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    instance-of v7, v6, Lcom/android/tools/r8/internal/Da0;

    if-eqz v7, :cond_8

    .line 97
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ba0;->c()Lcom/android/tools/r8/internal/Da0;

    move-result-object v6

    .line 98
    iget-object v6, v6, Lcom/android/tools/r8/internal/Da0;->a:Lcom/android/tools/r8/graph/l1;

    .line 99
    invoke-virtual {p2, v6, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_3

    .line 100
    :cond_8
    instance-of v7, v6, Lcom/android/tools/r8/internal/Pa0;

    if-eqz v7, :cond_7

    .line 101
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ba0;->d()Lcom/android/tools/r8/internal/Pa0;

    move-result-object v6

    .line 102
    iget-object v6, v6, Lcom/android/tools/r8/internal/Pa0;->a:Lcom/android/tools/r8/graph/M2;

    .line 103
    invoke-virtual {p2, v6, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_3

    .line 104
    :cond_9
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/na0;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v2, 0x32

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/pa0;->b:Z

    if-eqz v1, :cond_1

    :goto_0
    return v3

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/ka0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$n;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lcom/android/tools/r8/internal/Ea0;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pa0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->c:Lcom/android/tools/r8/internal/qa0;

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 9
    instance-of v4, v1, Lcom/android/tools/r8/internal/Ea0;

    const/16 v5, 0x9

    const/16 v6, 0x11

    if-eqz v4, :cond_7

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pa0;->a()Lcom/android/tools/r8/internal/Ea0;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pa0;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x33

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qa0;->a(I)Lcom/android/tools/r8/internal/pa0;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/android/tools/r8/internal/pa0;->a:I

    if-ne v0, v6, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v5, :cond_f

    .line 14
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ba0;

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, p1, Lcom/android/tools/r8/internal/Pa0;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ba0;->d()Lcom/android/tools/r8/internal/Pa0;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pa0;->a:Lcom/android/tools/r8/graph/M2;

    goto :goto_7

    .line 20
    :cond_7
    iget v0, v1, Lcom/android/tools/r8/internal/pa0;->a:I

    if-ne v0, v5, :cond_8

    goto :goto_3

    :cond_8
    if-ne v0, v6, :cond_b

    .line 21
    :goto_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ba0;

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of v0, p1, Lcom/android/tools/r8/internal/HT;

    if-eqz v0, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    .line 27
    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    goto :goto_7

    :cond_b
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_c

    goto :goto_5

    :cond_c
    const/16 v1, 0x31

    if-ne v0, v1, :cond_f

    .line 28
    :goto_5
    iget-object p1, p1, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ba0;

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    instance-of v0, p1, Lcom/android/tools/r8/internal/Pa0;

    if-eqz v0, :cond_d

    goto :goto_6

    .line 31
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ba0;->d()Lcom/android/tools/r8/internal/Pa0;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pa0;->a:Lcom/android/tools/r8/graph/M2;

    goto :goto_7

    :cond_f
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_12

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ua0;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/ua0;)Z

    move-result p1

    return p1

    .line 36
    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find proto message info for `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_12
    :goto_8
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/ua0;)Z
    .locals 5

    .line 304
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->j:Ljava/util/IdentityHashMap;

    .line 305
    iget-object v2, p1, Lcom/android/tools/r8/internal/ua0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 306
    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->g:Ljava/util/IdentityHashMap;

    .line 308
    sget-object v2, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 309
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/t40;

    .line 310
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->g:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p1, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/na0;

    .line 316
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/na0;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->g:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->j:Ljava/util/IdentityHashMap;

    .line 319
    iget-object v3, p1, Lcom/android/tools/r8/internal/ua0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 320
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    .line 321
    sget-object v4, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    .line 322
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 323
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ua0;

    move-result-object v3

    .line 325
    sget-boolean v4, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 326
    :cond_6
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/internal/ua0;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->g:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_7
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-nez p2, :cond_3

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/La0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka0;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    const/4 v2, 0x5

    .line 5
    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    return-void

    .line 6
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/ka0;->k:Z

    if-eqz p2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p2, Ljava/lang/AssertionError;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected class `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to declare a dynamicMethod()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
