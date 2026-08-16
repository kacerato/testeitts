.class public final Lcom/android/tools/r8/internal/vt;
.super Lcom/android/tools/r8/internal/I0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Cl;

.field public c:Lcom/android/tools/r8/internal/Kw;

.field public final d:[Lcom/android/tools/r8/internal/Ol;

.field public e:Lcom/android/tools/r8/internal/pv0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cl;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/I0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    new-instance v0, Lcom/android/tools/r8/internal/Kw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kw;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    iget-object p1, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/Ol;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/vt;
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/wt;

    if-eqz v0, :cond_6

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/wt;

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_5

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    .line 6
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->b:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->clone()Lcom/android/tools/r8/internal/Kw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Kw;)V

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    .line 13
    sget-object v2, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    .line 15
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    const/4 v0, 0x0

    move v1, v0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 18
    aget-object v3, v2, v1

    if-nez v3, :cond_1

    .line 19
    iget-object v3, p1, Lcom/android/tools/r8/internal/wt;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 20
    aget-object v3, v3, v1

    aput-object v3, v2, v1

    goto :goto_1

    .line 21
    :cond_1
    iget-object v2, p1, Lcom/android/tools/r8/internal/wt;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 22
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    if-eq v3, v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    .line 24
    iget-object v4, v2, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 25
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/in0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v3, v2, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    iput-boolean v0, v2, Lcom/android/tools/r8/internal/Kw;->c:Z

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 29
    iget-object v3, p1, Lcom/android/tools/r8/internal/wt;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 30
    aget-object v3, v3, v1

    aput-object v3, v2, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/tools/r8/internal/vt;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/wt;
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    .line 35
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->g:Z

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ol;

    .line 40
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 41
    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 42
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v2

    if-nez v2, :cond_1

    .line 43
    sget-object v2, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 44
    :cond_1
    sget-object v3, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    if-ne v2, v3, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 47
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 48
    sget-object v3, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v2, v3, :cond_2

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->d()V

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/wt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    array-length v4, v3

    .line 53
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/internal/Ol;

    iget-object v4, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/wt;-><init>(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;[Lcom/android/tools/r8/internal/Ol;Lcom/android/tools/r8/internal/pv0;)V

    return-object v0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->clone()Lcom/android/tools/r8/internal/Kw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Kw;->c(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vt;->a()Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    array-length v4, v3

    .line 4
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/internal/Ol;

    iget-object v4, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/wt;-><init>(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;[Lcom/android/tools/r8/internal/Ol;Lcom/android/tools/r8/internal/pv0;)V

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vt;->a()Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    array-length v4, v3

    .line 9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/internal/Ol;

    iget-object v4, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/wt;-><init>(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;[Lcom/android/tools/r8/internal/Ol;Lcom/android/tools/r8/internal/pv0;)V

    .line 10
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vt;->a()Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/vt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Kw;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    sget-object v3, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    new-instance v3, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    iget-object v2, v0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vt;->a(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/vt;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vt;->a(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/vt;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    sget-object v1, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method

.method public final newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/vt;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 5

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->clone()Lcom/android/tools/r8/internal/Kw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    sget-object v1, Lcom/android/tools/r8/internal/Nl;->g:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    const-string v1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lcom/android/tools/r8/internal/Kl;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/tools/r8/internal/Kl;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/tools/r8/internal/Sl;->b:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    if-eq v2, p1, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v4, v3, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/in0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v1, v3, Lcom/android/tools/r8/internal/Kw;->c:Z

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/vt;->d:[Lcom/android/tools/r8/internal/Ol;

    aput-object p1, v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v2, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    iget-object v0, p2, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p2, Lcom/android/tools/r8/internal/Kw;->c:Z

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vt;->e:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method
