.class public final Lcom/android/tools/r8/internal/Kc0;
.super Lcom/android/tools/r8/internal/u1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ic0;
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;

.field public transient c:Lcom/android/tools/r8/internal/K30;

.field public transient d:Lcom/android/tools/r8/internal/Wd0;

.field public transient e:Lcom/android/tools/r8/internal/l7;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/u1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kc0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kc0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/K30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/K30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/I30;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->c:Lcom/android/tools/r8/internal/K30;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/v1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/v1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    sget-object v1, Lcom/android/tools/r8/internal/L30;->a:Lcom/android/tools/r8/internal/J30;

    new-instance v1, Lcom/android/tools/r8/internal/K30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/K30;-><init>(Lcom/android/tools/r8/internal/v1;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Kc0;->c:Lcom/android/tools/r8/internal/K30;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->c:Lcom/android/tools/r8/internal/K30;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit16 v0, v0, 0x4cf

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/Ud0;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->d:Lcom/android/tools/r8/internal/Wd0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    sget-object v1, Lcom/android/tools/r8/internal/Xd0;->a:Lcom/android/tools/r8/internal/Vd0;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Wd0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Wd0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    iput-object v1, p0, Lcom/android/tools/r8/internal/Kc0;->d:Lcom/android/tools/r8/internal/Wd0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->d:Lcom/android/tools/r8/internal/Wd0;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kc0;->keySet()Lcom/android/tools/r8/internal/Ud0;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kc0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>true}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->e:Lcom/android/tools/r8/internal/l7;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/m7;->a:Lcom/android/tools/r8/internal/k7;

    new-instance v0, Lcom/android/tools/r8/internal/l7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/l7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->e:Lcom/android/tools/r8/internal/l7;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kc0;->e:Lcom/android/tools/r8/internal/l7;

    return-object v0
.end method
