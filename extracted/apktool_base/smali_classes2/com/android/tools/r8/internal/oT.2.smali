.class public final Lcom/android/tools/r8/internal/oT;
.super Lcom/android/tools/r8/internal/bT;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/internal/qd0;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/bT;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/oT;->b:Lcom/android/tools/r8/internal/qd0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)I
    .locals 1

    .line 23
    sget-boolean v0, Lcom/android/tools/r8/internal/oT;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/android/tools/r8/internal/uT;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/qT;->b:Lcom/android/tools/r8/internal/qT;

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/qT;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qT;-><init>([I)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sT;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sT;

    .line 4
    sget-boolean p2, Lcom/android/tools/r8/internal/oT;->d:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 5
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez v0, :cond_4

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/sT;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/sT;-><init>(I)V

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;I)V
    .locals 7

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/oT;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    add-int/lit8 v3, v0, 0x1

    const v4, 0x8000

    if-ge p2, v4, :cond_9

    .line 15
    sget-boolean v4, Lcom/android/tools/r8/internal/o8;->a:Z

    if-nez v4, :cond_4

    invoke-static {p2}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const v5, 0xffff

    and-int v6, p2, v5

    shl-int/lit8 v6, v6, 0x10

    if-nez v4, :cond_6

    .line 16
    invoke-static {v0}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    and-int/2addr v0, v5

    const/high16 v4, -0x80000000

    or-int/2addr v4, v6

    or-int/2addr v0, v4

    .line 17
    sget-boolean v4, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez v4, :cond_8

    if-gez v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_8
    :goto_4
    new-instance v4, Lcom/android/tools/r8/internal/sT;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/sT;-><init>(I)V

    .line 19
    invoke-virtual {v2, v1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    .line 20
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-string p2, "No support for more than 15-bit block index."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/oT;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)Z
    .locals 2

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/oT;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sT;

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/oT;->d:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    :goto_1
    iget p1, p1, Lcom/android/tools/r8/internal/sT;->a:I

    if-ne p2, p1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method
