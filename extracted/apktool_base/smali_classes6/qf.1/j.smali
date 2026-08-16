.class public final Lqf/j;
.super Lpf/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements LNf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/j<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "LNf/h;"
    }
.end annotation


# static fields
.field public static final c:Lqf/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lqf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lqf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/d<",
            "TE;*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqf/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqf/j$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lqf/j;->c:Lqf/j$a;

    new-instance v0, Lqf/j;

    sget-object v1, Lqf/d;->o:Lqf/d$a;

    invoke-virtual {v1}, Lqf/d$a;->e()Lqf/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lqf/j;-><init>(Lqf/d;)V

    sput-object v0, Lqf/j;->d:Lqf/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lqf/d;

    invoke-direct {v0}, Lqf/d;-><init>()V

    invoke-direct {p0, v0}, Lqf/j;-><init>(Lqf/d;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    new-instance v0, Lqf/d;

    invoke-direct {v0, p1}, Lqf/d;-><init>(I)V

    invoke-direct {p0, v0}, Lqf/j;-><init>(Lqf/d;)V

    return-void
.end method

.method public constructor <init>(Lqf/d;)V
    .locals 1
    .param p1    # Lqf/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqf/d<",
            "TE;*>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lpf/j;-><init>()V

    .line 2
    iput-object p1, p0, Lqf/j;->b:Lqf/d;

    return-void
.end method

.method private final c(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lqf/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lqf/h;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The set cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->size()I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0, p1}, Lqf/d;->l(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->o()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->n()Ljava/util/Map;

    invoke-virtual {p0}, Lpf/j;->size()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lqf/j;->d:Lqf/j;

    :goto_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0, p1}, Lqf/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->I()Lqf/d$e;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0, p1}, Lqf/d;->T(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->o()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqf/j;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->o()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
