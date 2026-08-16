.class Lorg/google/googlejavaformat/Newlines$LineIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Newlines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field curr:Ljava/lang/String;

.field idx:I

.field private final indices:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/google/googlejavaformat/Newlines$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/Newlines$LineIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private advance()V
    .locals 3

    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/google/googlejavaformat/Newlines$LineIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    :goto_0
    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    iget v2, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->curr:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->idx:I

    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/Newlines$LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/google/googlejavaformat/Newlines$LineIterator;->advance()V

    .line 3
    iget-object v0, p0, Lorg/google/googlejavaformat/Newlines$LineIterator;->curr:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
