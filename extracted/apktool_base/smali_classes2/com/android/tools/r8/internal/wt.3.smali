.class public final Lcom/android/tools/r8/internal/wt;
.super Lcom/android/tools/r8/internal/K0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Cl;

.field public final c:Lcom/android/tools/r8/internal/Kw;

.field public final d:[Lcom/android/tools/r8/internal/Ol;

.field public final e:Lcom/android/tools/r8/internal/pv0;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;[Lcom/android/tools/r8/internal/Ol;Lcom/android/tools/r8/internal/pv0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/K0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/wt;->f:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    iput-object p3, p0, Lcom/android/tools/r8/internal/wt;->d:[Lcom/android/tools/r8/internal/Ol;

    iput-object p4, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    new-array v0, v0, [Lcom/android/tools/r8/internal/Ol;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/wt;

    .line 6
    sget-object v2, Lcom/android/tools/r8/internal/Kw;->d:Lcom/android/tools/r8/internal/Kw;

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 8
    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/tools/r8/internal/wt;-><init>(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;[Lcom/android/tools/r8/internal/Ol;Lcom/android/tools/r8/internal/pv0;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;)Z
    .locals 3

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 13
    iget v1, v1, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 14
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v1

    if-nez v1, :cond_1

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 16
    :cond_1
    sget-object v2, Lcom/android/tools/r8/internal/Ck;->d:Lcom/android/tools/r8/internal/Ck;

    if-ne v1, v2, :cond_0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;)Lcom/android/tools/r8/internal/wt;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

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

.method public final getSerializedSize()I
    .locals 10

    iget v0, p0, Lcom/android/tools/r8/internal/wt;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/mv0;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/m8;

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v8

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    invoke-static {v9}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v9

    invoke-static {v4, v9, v8}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/m8;)I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_3

    :cond_3
    add-int/2addr v2, v6

    goto :goto_2

    :cond_4
    add-int/2addr v3, v2

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->b()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int v3, v1, v0

    :goto_4
    iput v3, p0, Lcom/android/tools/r8/internal/wt;->f:I

    return v3
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wt;->a(Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/Kw;)Z

    move-result v0

    return v0
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    .line 2
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/vt;->a(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/vt;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/vt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/vt;->a(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/vt;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->b:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/util/Map$Entry;Lcom/android/tools/r8/internal/Ie;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/util/Map$Entry;Lcom/android/tools/r8/internal/Ie;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/mv0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/Ie;->c(ILcom/android/tools/r8/internal/m8;)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->c:Lcom/android/tools/r8/internal/Kw;

    :goto_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/wt;->e:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
