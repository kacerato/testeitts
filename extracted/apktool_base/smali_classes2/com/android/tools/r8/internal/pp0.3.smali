.class public final Lcom/android/tools/r8/internal/pp0;
.super Lcom/android/tools/r8/internal/D1;
.source "SourceFile"


# static fields
.field public static final g:Lcom/android/tools/r8/internal/pp0;

.field public static final h:Lcom/android/tools/r8/internal/pp0;

.field public static final synthetic i:Z = true


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/pp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pp0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/pp0;->g:Lcom/android/tools/r8/internal/pp0;

    new-instance v0, Lcom/android/tools/r8/internal/pp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pp0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/pp0;->h:Lcom/android/tools/r8/internal/pp0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/D1;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/pp0;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/HashSet;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/D1;-><init>()V

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/pp0;->i:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Creating an instance of BOTTOM"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    .line 14
    iput-object p2, p0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    .line 15
    iput-object p3, p0, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    .line 16
    iput-object p4, p0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    .line 17
    iput-object p5, p0, Lcom/android/tools/r8/internal/pp0;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/pp0;->h:Lcom/android/tools/r8/internal/pp0;

    if-ne p0, v0, :cond_2

    return-object p1

    :cond_2
    if-ne p1, v0, :cond_3

    return-object p0

    .line 5
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/pp0;->i:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/op0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/op0;-><init>(Lcom/android/tools/r8/internal/pp0;)V

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    if-nez v1, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    iget-object v2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    if-ne v2, v3, :cond_7

    .line 9
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    .line 10
    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->d()V

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/kq1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/kq1;-><init>(Lcom/android/tools/r8/internal/op0;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/lq1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/lq1;-><init>(Lcom/android/tools/r8/internal/op0;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/op0;->a()Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    check-cast p2, Lcom/android/tools/r8/internal/pp0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/pp0;->a(Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/D1;
    .locals 0

    return-object p0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pp0;->g:Lcom/android/tools/r8/internal/pp0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/pp0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/pp0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result p1

    return p1

    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/pp0;->h:Lcom/android/tools/r8/internal/pp0;

    if-ne p0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    sget-boolean v4, Lcom/android/tools/r8/internal/TU;->a:Z

    if-ne v1, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    if-ne v1, v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_a

    goto :goto_2

    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/internal/pp0;->h:Lcom/android/tools/r8/internal/pp0;

    if-ne p0, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
