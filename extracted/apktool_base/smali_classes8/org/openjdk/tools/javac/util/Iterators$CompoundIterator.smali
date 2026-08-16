.class Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final convertor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TI;",
            "Ljava/util/Iterator<",
            "TO;>;>;"
        }
    .end annotation
.end field

.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final inputs:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "TI;",
            "Ljava/util/Iterator<",
            "TO;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Iterators;->access$000()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->inputs:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->convertor:Ljava/util/function/Function;

    return-void
.end method

.method private update()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->inputs:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->convertor:Ljava/util/function/Function;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->update()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    invoke-static {}, Lorg/openjdk/tools/javac/util/Iterators;->access$000()Ljava/util/Iterator;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
