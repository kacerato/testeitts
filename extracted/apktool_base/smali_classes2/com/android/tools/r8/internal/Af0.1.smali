.class public final Lcom/android/tools/r8/internal/Af0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/J0;


# instance fields
.field public a:Lcom/android/tools/r8/internal/gz;

.field public b:Ljava/util/List;

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/yf0;

.field public g:Lcom/android/tools/r8/internal/xf0;

.field public h:Lcom/android/tools/r8/internal/zf0;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/I0;
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->d()V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/K0;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/Em0;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/wz;)Lcom/android/tools/r8/internal/I0;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->d()V

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    .line 47
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/wz;)Lcom/android/tools/r8/internal/I0;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->d()V

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)Lcom/android/tools/r8/internal/K0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/K0;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/K0;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K0;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 3

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/K0;

    .line 23
    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    if-ltz v0, :cond_3

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 31
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 32
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/K0;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Af0;->a(Lcom/android/tools/r8/internal/K0;)V

    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final b(I)Lcom/android/tools/r8/internal/nW;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nW;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nW;

    return-object p1

    .line 5
    :cond_1
    iget-object p1, v0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz p1, :cond_2

    return-object p1

    .line 6
    :cond_2
    iget-object p1, v0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 5

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    .line 16
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/fW;

    .line 20
    iget-object v4, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Em0;

    if-eqz v4, :cond_1

    .line 21
    iput-boolean v0, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    .line 22
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    return-object v0

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    move v1, v2

    .line 25
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 26
    iget-object v3, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 28
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    return-object v0
.end method

.method public final b(ILcom/android/tools/r8/internal/wz;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/Em0;

    if-eqz v4, :cond_0

    .line 21
    iput-object v3, v4, Lcom/android/tools/r8/internal/Em0;->a:Lcom/android/tools/r8/internal/J0;

    goto :goto_0

    .line 22
    :cond_1
    iput-object v3, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Em0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 14
    iput-object v0, p1, Lcom/android/tools/r8/internal/Em0;->a:Lcom/android/tools/r8/internal/J0;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/wz;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->e()V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Em0;

    if-eqz p1, :cond_0

    .line 7
    iput-object v0, p1, Lcom/android/tools/r8/internal/Em0;->a:Lcom/android/tools/r8/internal/J0;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->j()V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Af0;->i()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->c:Z

    :cond_0
    return-void
.end method

.method public final f()Lcom/android/tools/r8/internal/xf0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->g:Lcom/android/tools/r8/internal/xf0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/xf0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/xf0;-><init>(Lcom/android/tools/r8/internal/Af0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->g:Lcom/android/tools/r8/internal/xf0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->g:Lcom/android/tools/r8/internal/xf0;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/yf0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->f:Lcom/android/tools/r8/internal/yf0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/yf0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yf0;-><init>(Lcom/android/tools/r8/internal/Af0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->f:Lcom/android/tools/r8/internal/yf0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->f:Lcom/android/tools/r8/internal/yf0;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/zf0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->h:Lcom/android/tools/r8/internal/zf0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/zf0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zf0;-><init>(Lcom/android/tools/r8/internal/Af0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Af0;->h:Lcom/android/tools/r8/internal/zf0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->h:Lcom/android/tools/r8/internal/zf0;

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->f:Lcom/android/tools/r8/internal/yf0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yf0;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->g:Lcom/android/tools/r8/internal/xf0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xf0;->a()V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->h:Lcom/android/tools/r8/internal/zf0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zf0;->a()V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/J0;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Af0;->e:Z

    :cond_0
    return-void
.end method
