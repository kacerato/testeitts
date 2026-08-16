.class public abstract Lcom/android/tools/r8/internal/iz;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Kw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Kw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kw;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hz;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/hz;->b:Lcom/android/tools/r8/internal/Hw;

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/Kw;->d:Lcom/android/tools/r8/internal/Kw;

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/Kw;->d:Lcom/android/tools/r8/internal/Kw;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/Hw;->b:Z

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    .line 12
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/in0;Z)Lcom/android/tools/r8/internal/Vm0;

    move-result-object v1

    move p1, v0

    .line 14
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/in0;->i()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Iw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Kw;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/Kw;-><init>(Lcom/android/tools/r8/internal/in0;)V

    .line 21
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/Kw;->c:Z

    .line 22
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    return-void
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/wz;->access$800(Lcom/android/tools/r8/internal/wz;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllFieldsRaw()Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/wz;->access$800(Lcom/android/tools/r8/internal/wz;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

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

    :cond_4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/wz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/wz;->getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/wz;->getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I

    move-result p1

    return p1
.end method

.method public final hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/wz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1
.end method

.method public final makeExtensionsImmutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->d()V

    return-void
.end method

.method public final parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/pW;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/pW;-><init>(Lcom/android/tools/r8/internal/Kw;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/qW;I)Z

    move-result p1

    return p1
.end method

.method public final parseUnknownFieldProto3(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/iz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result p1

    return p1
.end method
