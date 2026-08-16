.class public Lcom/android/tools/r8/internal/ls0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/is0;

.field public final b:Lcom/android/tools/r8/internal/js0;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/is0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/ns0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ls0;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/is0;

    const-string v2, "<zero>"

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/is0;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    instance-of v0, p3, Lcom/android/tools/r8/internal/ms0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/tools/r8/internal/ms0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    :goto_0
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/is0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ls0;->a:Lcom/android/tools/r8/internal/is0;

    new-instance v0, Lcom/android/tools/r8/internal/js0;

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/ns0;->c:Z

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/tools/r8/internal/js0;-><init>(Lcom/android/tools/r8/internal/ls0;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;)Lcom/android/tools/r8/internal/is0;
    .locals 1

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/is0;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/is0;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ks0;ZLjava/util/Deque;Ljava/lang/String;Lcom/android/tools/r8/internal/is0;)V
    .locals 4

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/internal/ks0;->a:Lcom/android/tools/r8/internal/is0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/jj1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jj1;-><init>(Z)V

    .line 18
    invoke-interface {p0, p3, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/is0;

    .line 19
    iget-wide v0, p0, Lcom/android/tools/r8/internal/is0;->d:J

    iget-wide v2, p4, Lcom/android/tools/r8/internal/is0;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/tools/r8/internal/is0;->d:J

    .line 20
    iget-object p1, p4, Lcom/android/tools/r8/internal/is0;->g:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/is0;->g:Ljava/util/LinkedHashMap;

    .line 21
    iget-object p1, p4, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/ks0;

    invoke-direct {p1, p0, p4}, Lcom/android/tools/r8/internal/ks0;-><init>(Lcom/android/tools/r8/internal/is0;Lcom/android/tools/r8/internal/is0;)V

    invoke-interface {p2, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/ls0;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ls0;->a:Lcom/android/tools/r8/internal/is0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/is0;->a:Ljava/lang/String;

    .line 25
    sget-boolean v2, Lcom/android/tools/r8/internal/ns0;->g:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Ambiguous timing chain. Insert a begin/end to fix"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/is0;->a()V

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/ls0;->a:Lcom/android/tools/r8/internal/is0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/is0;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/is0;->b:Z

    .line 2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ns0;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v3, v2, Lcom/android/tools/r8/internal/ms0;

    if-eqz v3, :cond_1

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/ms0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ms0;->h:Lcom/android/tools/r8/internal/ns0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v2, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    .line 8
    :goto_1
    sget-boolean v4, Lcom/android/tools/r8/internal/ls0;->e:Z

    if-nez v4, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected sub-timing to have completed prior to merge"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_3
    :goto_2
    iget v3, p0, Lcom/android/tools/r8/internal/ls0;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/ls0;->c:I

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/ls0;->b:Lcom/android/tools/r8/internal/js0;

    iget-wide v4, v3, Lcom/android/tools/r8/internal/is0;->d:J

    iget-object v2, v2, Lcom/android/tools/r8/internal/ns0;->a:Lcom/android/tools/r8/internal/is0;

    iget-wide v6, v2, Lcom/android/tools/r8/internal/is0;->d:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/tools/r8/internal/is0;->d:J

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    if-eqz v4, :cond_4

    iget-wide v5, v2, Lcom/android/tools/r8/internal/is0;->d:J

    iget-wide v7, v4, Lcom/android/tools/r8/internal/is0;->d:J

    cmp-long v4, v5, v7

    if-lez v4, :cond_4

    .line 12
    iput-object v2, p0, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    .line 13
    :cond_4
    new-instance v4, Lcom/android/tools/r8/internal/ks0;

    invoke-direct {v4, v3, v2}, Lcom/android/tools/r8/internal/ks0;-><init>(Lcom/android/tools/r8/internal/is0;Lcom/android/tools/r8/internal/is0;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ks0;

    .line 16
    iget-object v2, p1, Lcom/android/tools/r8/internal/ks0;->b:Lcom/android/tools/r8/internal/is0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/kj1;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/tools/r8/internal/kj1;-><init>(Lcom/android/tools/r8/internal/ks0;ZLjava/util/Deque;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_3

    :cond_6
    return-void
.end method
