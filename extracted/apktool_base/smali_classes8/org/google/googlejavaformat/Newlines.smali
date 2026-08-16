.class public Lorg/google/googlejavaformat/Newlines;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;,
        Lorg/google/googlejavaformat/Newlines$LineIterator;
    }
.end annotation


# static fields
.field private static final BREAKS:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n"

    const-string v1, "\r"

    const-string v2, "\r\n"

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/r1;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/r1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsBreaks(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "\n\r"

    invoke-static {v0}, Lw2/e;->d(Ljava/lang/CharSequence;)Lw2/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw2/e;->D(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static count(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/E1;->Z(Ljava/util/Iterator;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static firstBreak(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getLineEnding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/r1;

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\n"

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_1

    const-string p0, "\r\n"

    return-object p0

    :cond_1
    const-string p0, "\r"

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static hasNewlineAt(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "idx"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/r1;

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isNewline(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/r1;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static lineIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Newlines$LineIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/google/googlejavaformat/Newlines$LineIterator;-><init>(Ljava/lang/String;Lorg/google/googlejavaformat/Newlines$1;)V

    return-object v0
.end method

.method public static lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/google/googlejavaformat/Newlines$LineOffsetIterator;-><init>(Ljava/lang/String;Lorg/google/googlejavaformat/Newlines$1;)V

    return-object v0
.end method
