.class public Lorg/openjdk/tools/sjavac/options/ArgumentIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffered:Ljava/lang/String;

.field private current:Ljava/lang/String;

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->iter:Ljava/util/Iterator;

    return-void
.end method

.method private fillBuffer()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->current:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->fillBuffer()V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->current:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->fillBuffer()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->buffered:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
