.class Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;
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
    name = "LineOffsetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private curr:I

.field private idx:I

.field private final input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    .line 4
    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    .line 5
    iput-object p1, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/google/googlejavaformat/Newlines$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private advance()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    iget-object v1, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    iget v1, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    iget v2, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    :cond_1
    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 2

    .line 2
    iget v0, p0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->advance()V

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
