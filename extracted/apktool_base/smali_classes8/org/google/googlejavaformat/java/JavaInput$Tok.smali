.class final Lorg/google/googlejavaformat/java/JavaInput$Tok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Input$Tok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tok"
.end annotation


# instance fields
.field private final columnI:I

.field private final index:I

.field private final isToken:Z

.field private final kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

.field private final originalText:Ljava/lang/String;

.field private final position:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "originalText",
            "text",
            "position",
            "columnI",
            "isToken",
            "kind"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->index:I

    iput-object p2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    iput-object p3, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    iput p4, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->position:I

    iput p5, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    iput-boolean p6, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    iput-object p7, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->index:I

    return v0
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->position:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isComment()Z
    .locals 1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isSlashSlashComment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

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

.method public isJavadocComment()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewline()Z
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/google/googlejavaformat/Newlines;->isNewline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSlashSlashComment()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSlashStarComment()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isToken()Z
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    return v0
.end method

.method public kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->originalText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "index"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->index:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "text"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "position"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->position:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "columnI"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->columnI:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "isToken"

    iget-boolean v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isToken:Z

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->g(Ljava/lang/String;Z)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
