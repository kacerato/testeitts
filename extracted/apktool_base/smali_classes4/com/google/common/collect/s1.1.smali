.class public Lcom/google/common/collect/s1;
.super Lcom/google/common/collect/m1;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/C2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/s1$c;,
        Lcom/google/common/collect/s1$b;,
        Lcom/google/common/collect/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m1<",
        "TK;TV;>;",
        "Lcom/google/common/collect/C2<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final m:J
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public final transient j:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient k:Lcom/google/common/collect/s1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s1<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field

.field public transient l:Lcom/google/common/collect/r1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;ILjava/util/Comparator;)V
    .locals 0
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "TK;",
            "Lcom/google/common/collect/r1<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/m1;-><init>(Lcom/google/common/collect/i1;I)V

    invoke-static {p3}, Lcom/google/common/collect/s1;->T(Ljava/util/Comparator;)Lcom/google/common/collect/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s1;->j:Lcom/google/common/collect/r1;

    return-void
.end method

.method public static P()Lcom/google/common/collect/s1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/s1$a;

    invoke-direct {v0}, Lcom/google/common/collect/s1$a;-><init>()V

    return-object v0
.end method

.method public static Q(Lcom/google/common/collect/S1;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/s1;->R(Lcom/google/common/collect/S1;Ljava/util/Comparator;)Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lcom/google/common/collect/S1;Ljava/util/Comparator;)Lcom/google/common/collect/s1;
    .locals 2
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/S1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/s1;->a0()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/s1;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/s1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->B()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/s1;->V(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/lang/Iterable;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/s1$a;

    invoke-direct {v0}, Lcom/google/common/collect/s1$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/s1$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/util/Comparator;)Lcom/google/common/collect/r1;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static V(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/s1;
    .locals 5
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/s1;->a0()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/i1$b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/i1$b;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p1, v2}, Lcom/google/common/collect/s1;->k0(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/r1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/common/collect/s1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/collect/s1;-><init>(Lcom/google/common/collect/i1;ILjava/util/Comparator;)V

    return-object p0
.end method

.method public static a0()Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/a0;->n:Lcom/google/common/collect/a0;

    return-object v0
.end method

.method public static b0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object p0

    return-object p0
.end method

.method private h0(Ljava/io/ObjectInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {v0}, Lcom/google/common/collect/s1;->l0(Ljava/util/Comparator;)Lcom/google/common/collect/r1$a;

    move-result-object v8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ne v9, v7, :cond_1

    invoke-virtual {v2, v6, v8}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Duplicate key-value pairs exist for key "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/google/common/collect/m1$e;->a:Lcom/google/common/collect/B2$b;

    invoke-virtual {v1, p0, p1}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/common/collect/m1$e;->b:Lcom/google/common/collect/B2$b;

    invoke-virtual {p1, p0, v5}, Lcom/google/common/collect/B2$b;->a(Ljava/lang/Object;I)V

    sget-object p1, Lcom/google/common/collect/s1$c;->a:Lcom/google/common/collect/B2$b;

    invoke-static {v0}, Lcom/google/common/collect/s1;->T(Ljava/util/Comparator;)Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/B2$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1

    :cond_4
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid key count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k0(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/r1;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/r1;->s(Ljava/util/Collection;)Lcom/google/common/collect/r1;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/x1;->U(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/x1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l0(Ljava/util/Comparator;)Lcom/google/common/collect/r1$a;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/r1$a<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/common/collect/r1$a;

    invoke-direct {p0}, Lcom/google/common/collect/r1$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/x1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x1$a;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private m0(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->z()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->j(Lcom/google/common/collect/S1;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A()Lcom/google/common/collect/m1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->X()Lcom/google/common/collect/s1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->i0(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/c1;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1;->j0(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public U()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s1;->l:Lcom/google/common/collect/r1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/s1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s1$b;-><init>(Lcom/google/common/collect/s1;)V

    iput-object v0, p0, Lcom/google/common/collect/s1;->l:Lcom/google/common/collect/r1;

    :cond_0
    return-object v0
.end method

.method public W(Ljava/lang/Object;)Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/r1;

    iget-object v0, p0, Lcom/google/common/collect/s1;->j:Lcom/google/common/collect/r1;

    invoke-static {p1, v0}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/r1;

    return-object p1
.end method

.method public X()Lcom/google/common/collect/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/s1<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s1;->k:Lcom/google/common/collect/s1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->Y()Lcom/google/common/collect/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/s1;->k:Lcom/google/common/collect/s1;

    :cond_0
    return-object v0
.end method

.method public final Y()Lcom/google/common/collect/s1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/s1<",
            "TV;TK;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->U()Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object v0

    iput-object p0, v0, Lcom/google/common/collect/s1;->k:Lcom/google/common/collect/s1;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->i0(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->i0(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1;->j0(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1;->j0(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->W(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->W(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Ljava/lang/Object;)Lcom/google/common/collect/r1;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final j0(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/r1;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic u()Lcom/google/common/collect/c1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1;->U()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/s1;->U()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/s1;->U()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1;->W(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public z()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s1;->j:Lcom/google/common/collect/r1;

    instance-of v1, v0, Lcom/google/common/collect/x1;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
