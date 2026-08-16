.class Lcom/android/tools/r8/naming/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/naming/j0;

.field public final c:Ljava/util/Collection;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Z

.field public final h:Lcom/android/tools/r8/naming/e;

.field public final i:Z

.field public final j:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/j0;Ljava/util/Collection;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/naming/f;->f:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    iput-object p3, p0, Lcom/android/tools/r8/naming/f;->c:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/shaking/I3;->e:Z

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p3

    :goto_1
    iput-boolean p2, p0, Lcom/android/tools/r8/naming/f;->g:Z

    new-instance p2, Lcom/android/tools/r8/naming/e;

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p2, p0, v4, v3}, Lcom/android/tools/r8/naming/e;-><init>(Lcom/android/tools/r8/naming/f;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/tools/r8/naming/f;->h:Lcom/android/tools/r8/naming/e;

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o3;->I:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/android/tools/r8/naming/f;->i:Z

    new-instance p1, Lcom/android/tools/r8/naming/Y2;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/naming/Y2;-><init>(Lcom/android/tools/r8/naming/f;)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/f;->j:Ljava/util/function/Predicate;

    return-void

    :cond_2
    iput-boolean p3, p0, Lcom/android/tools/r8/naming/f;->i:Z

    new-instance p1, Lcom/android/tools/r8/internal/Yi1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yi1;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/f;->j:Ljava/util/function/Predicate;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 87
    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 5

    .line 57
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/f;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/e4;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_d

    .line 61
    iget-object v1, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 62
    sget-boolean v2, Lcom/android/tools/r8/naming/f;->k:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v1

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    .line 64
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 66
    sget-boolean v3, Lcom/android/tools/r8/internal/Bl;->b:Z

    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    const/16 v3, 0x24

    if-eqz v2, :cond_9

    if-nez v1, :cond_8

    goto :goto_5

    .line 67
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v2, v4, v1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 69
    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_a

    .line 70
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/android/tools/r8/naming/f;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/e;

    if-nez v3, :cond_c

    .line 73
    iget-object v3, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    if-nez v3, :cond_b

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v3, Lcom/android/tools/r8/naming/e;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/tools/r8/naming/e;-><init>(Lcom/android/tools/r8/naming/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v1, v3

    :cond_d
    if-nez v1, :cond_e

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/f;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/e;

    move-result-object v1

    .line 80
    :cond_e
    iget-object v0, v1, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    .line 81
    iget-object v2, v0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    iget-object v3, v1, Lcom/android/tools/r8/naming/e;->c:[C

    iget-object v0, v0, Lcom/android/tools/r8/naming/f;->j:Ljava/util/function/Predicate;

    invoke-interface {v2, p1, v3, v1, v0}, Lcom/android/tools/r8/naming/c;->a(Lcom/android/tools/r8/graph/M2;[CLcom/android/tools/r8/naming/e;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 82
    sget-boolean v0, Lcom/android/tools/r8/naming/e;->g:Z

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    iget-object v0, v0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_10
    :goto_7
    iget-object v0, v1, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    .line 85
    iget-boolean v0, v0, Lcom/android/tools/r8/naming/f;->i:Z

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/naming/d;
    .locals 6

    .line 1
    const-string v0, "reserve"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I5;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/r8/naming/c;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    sget-boolean v3, Lcom/android/tools/r8/naming/f;->k:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2
    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 9
    new-instance v1, Lcom/android/tools/r8/naming/U2;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/U2;-><init>(Lcom/android/tools/r8/naming/f;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/u2;->a(Ljava/util/function/Consumer;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 12
    const-string v0, "rename-classes"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I5;

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-boolean v3, Lcom/android/tools/r8/naming/f;->k:Z

    if-nez v3, :cond_4

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 19
    const-string v0, "rename-dangling-types"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I5;

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/I5;)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 23
    new-instance p1, Lcom/android/tools/r8/naming/d;

    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    .line 25
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/naming/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/e;

    .line 29
    iget-object v3, v3, Lcom/android/tools/r8/naming/e;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 31
    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_4

    .line 32
    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    .line 33
    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/naming/d;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/nC;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/L2;)V
    .locals 3

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/naming/f;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/naming/f;->g:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->s1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/naming/c;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/f;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/f;->d(Lcom/android/tools/r8/graph/M2;)V

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/f;->d(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I5;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/tools/r8/naming/V2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/V2;-><init>(Lcom/android/tools/r8/naming/f;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/S;->c(Ljava/util/function/Consumer;)V

    .line 41
    new-instance v0, Lcom/android/tools/r8/naming/W2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/W2;-><init>(Lcom/android/tools/r8/naming/f;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/S;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    iget-boolean v1, p0, Lcom/android/tools/r8/naming/f;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-boolean p1, p0, Lcom/android/tools/r8/naming/f;->g:Z

    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/e4;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    .line 54
    iget-object p2, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    .line 55
    invoke-interface {p2, p1}, Lcom/android/tools/r8/naming/c;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    if-nez p2, :cond_3

    .line 56
    iget-object p2, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    :cond_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/naming/X2;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/X2;-><init>(Lcom/android/tools/r8/naming/f;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/e;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/naming/e;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/naming/e;

    const/16 v1, 0x2f

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/naming/e;-><init>(Lcom/android/tools/r8/naming/f;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/tools/r8/naming/f;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/naming/c;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/f;->e:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/f;->h:Lcom/android/tools/r8/naming/e;

    iget-object v2, v0, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    iget-object v3, v2, Lcom/android/tools/r8/naming/f;->b:Lcom/android/tools/r8/naming/j0;

    iget-object v4, v0, Lcom/android/tools/r8/naming/e;->c:[C

    iget-object v2, v2, Lcom/android/tools/r8/naming/f;->j:Ljava/util/function/Predicate;

    invoke-interface {v3, p1, v4, v0, v2}, Lcom/android/tools/r8/naming/c;->a(Lcom/android/tools/r8/graph/M2;[CLcom/android/tools/r8/naming/e;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/naming/e;->g:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    iget-object v3, v3, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/naming/e;->f:Lcom/android/tools/r8/naming/f;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/naming/f;->d:Ljava/util/HashSet;

    iget-boolean v0, v0, Lcom/android/tools/r8/naming/f;->i:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_3
    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
