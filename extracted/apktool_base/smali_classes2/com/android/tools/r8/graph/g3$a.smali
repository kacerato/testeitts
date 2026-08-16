.class public Lcom/android/tools/r8/graph/g3$a;
.super Lcom/android/tools/r8/graph/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/w0;"
    }
.end annotation


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public h:Lcom/android/tools/r8/internal/XB;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/g3;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/w0;-><init>(Lcom/android/tools/r8/graph/x0;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->k:Ljava/util/Set;

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/w4;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/w0;-><init>(Lcom/android/tools/r8/graph/x0;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->k:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/v4;

    iget-object v1, p1, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    iget-object v2, p1, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    iget-object v3, p1, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/v4;-><init>(Lcom/android/tools/r8/internal/TR;Lcom/android/tools/r8/internal/je;Lcom/android/tools/r8/internal/a80;Lcom/android/tools/r8/internal/nJ;)V

    .line 5
    iget-object p1, v0, Lcom/android/tools/r8/graph/v4;->b:Lcom/android/tools/r8/internal/nC;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/graph/v4;->c:Lcom/android/tools/r8/internal/nC;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    .line 9
    iget-object p1, v0, Lcom/android/tools/r8/graph/v4;->a:Lcom/android/tools/r8/internal/nC;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u2;)V
    .locals 1

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/g3$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/g3$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/u2;",
            ">;)",
            "Lcom/android/tools/r8/graph/g3$a;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 18
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 19
    new-instance v1, Lcom/android/tools/r8/graph/vd;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/vd;-><init>(Lcom/android/tools/r8/internal/kC;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->k:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/IdentityHashMap;Ljava/lang/Iterable;)Z
    .locals 4

    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I5;

    .line 14
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/graph/g3$a;->k:Ljava/util/Set;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I5;

    .line 16
    sget-boolean v2, Lcom/android/tools/r8/graph/g3$a;->l:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was already present."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    return v0
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/g3$a;
    .locals 6

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 4
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/I0;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/I0;

    .line 9
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/graph/g3$a;->l:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/graph/x0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/w0;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/graph/g3;
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/g3$a;->a(Ljava/util/IdentityHashMap;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/I0;

    iget-object v5, p0, Lcom/android/tools/r8/graph/g3$a;->k:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-ge v6, v5, :cond_2

    array-length v6, v1

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_2
    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_3
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    :cond_4
    move-object v8, v1

    iget-object v1, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/g3$a;->a(Ljava/util/IdentityHashMap;Ljava/lang/Iterable;)Z

    new-instance v1, Lcom/android/tools/r8/graph/g3;

    iget-object v3, p0, Lcom/android/tools/r8/graph/w0;->d:Lcom/android/tools/r8/naming/b;

    iget-object v4, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3$a;->i:Ljava/lang/Object;

    instance-of v2, v0, Lcom/android/tools/r8/internal/nC;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/android/tools/r8/internal/nC;

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v11, p0, Lcom/android/tools/r8/graph/w0;->e:Lcom/android/tools/r8/internal/ns0;

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/tools/r8/graph/g3;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/XB;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    return-object v1
.end method
