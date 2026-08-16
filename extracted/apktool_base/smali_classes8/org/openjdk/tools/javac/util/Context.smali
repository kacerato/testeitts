.class public Lorg/openjdk/tools/javac/util/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Context$Factory;,
        Lorg/openjdk/tools/javac/util/Context$Key;
    }
.end annotation


# instance fields
.field private final ft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "*>;",
            "Lorg/openjdk/tools/javac/util/Context$Factory<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final ht:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final kt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ft:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->kt:Ljava/util/Map;

    return-void
.end method

.method private static checkState(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public dump()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Context;->key(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/Context$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/openjdk/tools/javac/util/Context$Factory;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/openjdk/tools/javac/util/Context$Factory;

    .line 5
    invoke-interface {v0, p0}, Lorg/openjdk/tools/javac/util/Context$Factory;->make(Lorg/openjdk/tools/javac/util/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lorg/openjdk/tools/javac/util/Context$Factory;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "T extends Context.Factory"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_2
    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public key(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/Context$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Context$Key;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Context;->key(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/Context$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/Class;Lorg/openjdk/tools/javac/util/Context$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/util/Context$Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Context;->key(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/Context$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Lorg/openjdk/tools/javac/util/Context$Factory;)V

    return-void
.end method

.method public put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 6
    instance-of v0, p2, Lorg/openjdk/tools/javac/util/Context$Factory;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    instance-of v0, p1, Lorg/openjdk/tools/javac/util/Context$Factory;

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "duplicate context value"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "T extends Context.Factory"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public put(Lorg/openjdk/tools/javac/util/Context$Key;Lorg/openjdk/tools/javac/util/Context$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/util/Context$Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "duplicate context value"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
