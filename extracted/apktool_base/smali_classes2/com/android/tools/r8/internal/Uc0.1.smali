.class public final Lcom/android/tools/r8/internal/Uc0;
.super Lcom/android/tools/r8/internal/u1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/android/tools/r8/internal/Ic0;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public transient c:[Z

.field public transient d:I

.field public transient e:Z

.field public transient f:I

.field public transient g:I

.field public h:I

.field public transient i:Lcom/android/tools/r8/internal/Rc0;

.field public transient j:Lcom/android/tools/r8/internal/Pc0;

.field public transient k:Lcom/android/tools/r8/internal/Mc0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/u1;-><init>()V

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/Uc0;->g:I

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    instance-of p1, p1, Lcom/android/tools/r8/internal/Ic0;

    if-eqz p1, :cond_0

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hc0;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Hc0;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    move v0, p1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    move v0, p1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 21
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    aget-boolean p1, p1, v0

    return p1

    :cond_0
    return v0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    return v0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean p1, p1, v2

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 25
    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_4

    return v0

    :cond_4
    if-ne p1, v3, :cond_3

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean p1, p1, v2

    return p1
.end method

.method public final a(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 10
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    goto :goto_2

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    .line 15
    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aput-boolean p2, p1, v0

    .line 18
    iget p1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->g:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x2

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Uc0;->d(I)V

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-gez p1, :cond_5

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean v1, v0, p1

    .line 20
    aput-boolean p2, v0, p1

    return v1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean p1, p1, v0

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    iget v2, p0, Lcom/android/tools/r8/internal/Uc0;->g:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Uc0;->d(I)V

    :cond_0
    return p1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Uc0;->e(I)Z

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_5

    return v0

    :cond_5
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Uc0;->e(I)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Uc0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->j:Lcom/android/tools/r8/internal/Pc0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->k:Lcom/android/tools/r8/internal/Mc0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->i:Lcom/android/tools/r8/internal/Rc0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 5

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v2, :cond_2

    return v4

    :cond_2
    add-int/2addr v1, v4

    iget v2, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    return v3

    :cond_3
    if-ne p1, v2, :cond_2

    return v4
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    aget-boolean v3, v1, v3

    if-ne v3, p1, :cond_1

    return v4

    :cond_1
    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_3

    aget-object v3, v2, v5

    if-eqz v3, :cond_2

    aget-boolean v3, v1, v5

    if-ne v3, p1, :cond_2

    return v4

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final d(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p1, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [Z

    iget v5, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    aget-object v6, v0, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v6

    and-int/2addr v6, v2

    aget-object v8, v4, v6

    if-eqz v8, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v2

    aget-object v8, v4, v6

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    aget-object v8, v0, v5

    aput-object v8, v4, v6

    aget-boolean v8, v1, v5

    aput-boolean v8, v3, v6

    move v6, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    aget-boolean v0, v1, v0

    aput-boolean v0, v3, p1

    iput p1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    iput v2, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jA;->b(IF)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/Uc0;->g:I

    iput-object v4, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    return-void
.end method

.method public final e(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean v0, v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v2, v3

    :goto_1
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    iget p1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->g:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_0

    iget p1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Uc0;->d(I)V

    :cond_0
    return v0

    :cond_1
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget v5, p0, Lcom/android/tools/r8/internal/Uc0;->d:I

    and-int/2addr v4, v5

    if-gt p1, v2, :cond_2

    if-ge p1, v4, :cond_3

    if-le v4, v2, :cond_4

    goto :goto_2

    :cond_2
    if-lt p1, v4, :cond_4

    if-le v4, v2, :cond_4

    :cond_3
    :goto_2
    aput-object v3, v1, p1

    iget-object v3, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean v4, v3, v2

    aput-boolean v4, v3, p1

    move p1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v5

    goto :goto_1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Uc0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Uc0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast v0, Ljava/util/AbstractCollection;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/I30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->i:Lcom/android/tools/r8/internal/Rc0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Rc0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Rc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->i:Lcom/android/tools/r8/internal/Rc0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->i:Lcom/android/tools/r8/internal/Rc0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-eq p0, v0, :cond_2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    xor-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    move v5, v6

    :cond_5
    add-int/2addr v2, v5

    :cond_6
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/Ud0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->j:Lcom/android/tools/r8/internal/Pc0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Pc0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Pc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->j:Lcom/android/tools/r8/internal/Pc0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->j:Lcom/android/tools/r8/internal/Pc0;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Uc0;->keySet()Lcom/android/tools/r8/internal/Ud0;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    const/high16 v0, 0x3f400000    # 0.75f

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/jA;->a(IF)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Uc0;->d(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    int-to-long v1, v2

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->f:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Uc0;->d(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Uc0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Rc0;

    new-instance v2, Lcom/android/tools/r8/internal/Nc0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Rc0;->b:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Nc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Uc0;->h:I

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Nc0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Hc0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-ne p0, v5, :cond_1

    const-string v5, "(this map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, "=>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Hc0;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->k:Lcom/android/tools/r8/internal/Mc0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Mc0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Mc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->k:Lcom/android/tools/r8/internal/Mc0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc0;->k:Lcom/android/tools/r8/internal/Mc0;

    return-object v0
.end method
