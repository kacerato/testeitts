.class final Lorg/google/googlejavaformat/java/javadoc/CharStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field remaining:Ljava/lang/String;

.field toConsume:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isExhausted()Z
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public readAndResetRecorded()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    iget v1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    iget v3, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    iput v2, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    return-object v0
.end method

.method public tryConsume(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expected"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    const/4 p1, 0x1

    return p1
.end method

.method public tryConsumeRegex(Ljava/util/regex/Pattern;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lw2/H;->d(Z)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    iput p1, p0, Lorg/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    return v2
.end method
