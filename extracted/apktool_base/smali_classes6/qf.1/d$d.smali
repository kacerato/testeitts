.class public Lqf/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lqf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf/d$d;->b:Lqf/d;

    const/4 v0, -0x1

    iput v0, p0, Lqf/d$d;->d:I

    invoke-static {p1}, Lqf/d;->h(Lqf/d;)I

    move-result p1

    iput p1, p0, Lqf/d$d;->e:I

    invoke-virtual {p0}, Lqf/d$d;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    invoke-static {v0}, Lqf/d;->h(Lqf/d;)I

    move-result v0

    iget v1, p0, Lqf/d$d;->e:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lqf/d$d;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lqf/d$d;->d:I

    return v0
.end method

.method public final e()Lqf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    return-object v0
.end method

.method public final f()V
    .locals 2

    :goto_0
    iget v0, p0, Lqf/d$d;->c:I

    iget-object v1, p0, Lqf/d$d;->b:Lqf/d;

    invoke-static {v1}, Lqf/d;->g(Lqf/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    invoke-static {v0}, Lqf/d;->i(Lqf/d;)[I

    move-result-object v0

    iget v1, p0, Lqf/d$d;->c:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lqf/d$d;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lqf/d$d;->c:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lqf/d$d;->d:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lqf/d$d;->c:I

    iget-object v1, p0, Lqf/d$d;->b:Lqf/d;

    invoke-static {v1}, Lqf/d;->g(Lqf/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Lqf/d$d;->a()V

    iget v0, p0, Lqf/d$d;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    invoke-virtual {v0}, Lqf/d;->o()V

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    iget v2, p0, Lqf/d$d;->d:I

    invoke-static {v0, v2}, Lqf/d;->k(Lqf/d;I)V

    iput v1, p0, Lqf/d$d;->d:I

    iget-object v0, p0, Lqf/d$d;->b:Lqf/d;

    invoke-static {v0}, Lqf/d;->h(Lqf/d;)I

    move-result v0

    iput v0, p0, Lqf/d$d;->e:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
