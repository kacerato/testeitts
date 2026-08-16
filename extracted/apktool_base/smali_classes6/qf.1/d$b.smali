.class public final Lqf/d$b;
.super Lqf/d$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lqf/d$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "LNf/d;"
    }
.end annotation


# direct methods
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
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqf/d$d;-><init>(Lqf/d;)V

    return-void
.end method


# virtual methods
.method public j()Lqf/d$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf/d$c<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lqf/d$d;->a()V

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    invoke-static {v1}, Lqf/d;->g(Lqf/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lqf/d$d;->g(I)V

    invoke-virtual {p0, v0}, Lqf/d$d;->h(I)V

    new-instance v0, Lqf/d$c;

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    invoke-virtual {p0}, Lqf/d$d;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lqf/d$c;-><init>(Lqf/d;I)V

    invoke-virtual {p0}, Lqf/d$d;->f()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final k(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    invoke-static {v1}, Lqf/d;->g(Lqf/d;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lqf/d$d;->g(I)V

    invoke-virtual {p0, v0}, Lqf/d$d;->h(I)V

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v0

    invoke-static {v0}, Lqf/d;->f(Lqf/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lqf/d$d;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v0

    invoke-static {v0}, Lqf/d;->j(Lqf/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lqf/d$d;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lqf/d$d;->f()V

    return-void

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public final m()I
    .locals 4

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v1

    invoke-static {v1}, Lqf/d;->g(Lqf/d;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lqf/d$d;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lqf/d$d;->g(I)V

    invoke-virtual {p0, v0}, Lqf/d$d;->h(I)V

    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v0

    invoke-static {v0}, Lqf/d;->f(Lqf/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lqf/d$d;->d()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lqf/d$d;->e()Lqf/d;

    move-result-object v2

    invoke-static {v2}, Lqf/d;->j(Lqf/d;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lqf/d$d;->d()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lqf/d$d;->f()V

    return v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqf/d$b;->j()Lqf/d$c;

    move-result-object v0

    return-object v0
.end method
