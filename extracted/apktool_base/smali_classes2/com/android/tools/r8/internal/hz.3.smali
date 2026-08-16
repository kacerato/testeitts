.class public abstract Lcom/android/tools/r8/internal/hz;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:Lcom/android/tools/r8/internal/Hw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;
    .locals 2

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->b()V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hw;->a()V

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/android/tools/r8/internal/jW;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Hw;->c:Z

    .line 25
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Hw;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 31
    :goto_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ol;)V
    .locals 1

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    .line 36
    invoke-interface {p0}, Lcom/android/tools/r8/internal/eW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/iz;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->b()V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hw;->a()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Hw;->a(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hw;->a(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->b()V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Kw;->d:Lcom/android/tools/r8/internal/Kw;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Hw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hw;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw;->b(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Kw;->b(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 3

    invoke-static {p0}, Lcom/android/tools/r8/internal/fz;->access$900(Lcom/android/tools/r8/internal/fz;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/in0;->e:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

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
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getFieldBuilder(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/vt;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object v1

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/eW;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/internal/fW;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/fW;->toBuilder()Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->getFieldBuilder(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hw;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/android/tools/r8/internal/jW;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/jW;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jW;->build()Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldBuilder(Lcom/android/tools/r8/internal/Ol;I)Lcom/android/tools/r8/internal/eW;
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->b()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    const-string v2, "getRepeatedFieldBuilder() called on a non-Message type."

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    const-string v3, "getRepeatedField() can only be called on repeated fields."

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/tools/r8/internal/eW;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/fW;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/fW;->toBuilder()Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hw;->a()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/Hw;->c:Z

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Hw;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->getRepeatedFieldBuilder(Lcom/android/tools/r8/internal/Ol;I)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I

    move-result p1

    return p1
.end method

.method public final hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1
.end method

.method public final newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/vt;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vt;-><init>(Lcom/android/tools/r8/internal/Cl;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method
