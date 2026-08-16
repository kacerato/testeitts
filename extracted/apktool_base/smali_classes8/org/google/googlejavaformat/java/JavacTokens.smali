.class Lorg/google/googlejavaformat/java/JavacTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/JavacTokens$AccessibleScanner;,
        Lorg/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;,
        Lorg/google/googlejavaformat/java/JavacTokens$RawTok;,
        Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;,
        Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;
    }
.end annotation


# static fields
.field private static final EOF_COMMENT:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n//EOF"

    sput-object v0, Lorg/google/googlejavaformat/java/JavacTokens;->EOF_COMMENT:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTokens(Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;Ljava/util/Set;)Lcom/google/common/collect/g1;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "context",
            "stopTokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavacTokens$RawTok;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/ScannerFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ScannerFactory;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavacTokens;->EOF_COMMENT:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Lorg/google/googlejavaformat/java/JavacTokens$AccessibleScanner;

    new-instance v2, Lorg/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;

    array-length v3, v0

    invoke-direct {v2, p1, v0, v3}, Lorg/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v1, p1, v2}, Lorg/google/googlejavaformat/java/JavacTokens$AccessibleScanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Scanner;->nextToken()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Scanner;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v3

    iget-object v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comments:Lorg/openjdk/tools/javac/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/google/common/collect/M1;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-interface {v6, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v7

    if-ge v2, v7, :cond_2

    new-instance v7, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-interface {v6, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v8

    invoke-direct {v7, v5, v5, v2, v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {p1, v7}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :cond_2
    new-instance v2, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-interface {v6, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v7

    invoke-interface {v6, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v8

    invoke-interface {v6}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v2, v5, v5, v7, v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {p1, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-interface {v6, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v2

    invoke-interface {v6}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p2, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq p2, v0, :cond_7

    iget p0, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    goto :goto_2

    :cond_4
    iget v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    if-ge v2, v4, :cond_5

    new-instance v6, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-direct {v6, v5, v5, v2, v4}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {p1, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :cond_5
    new-instance v2, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    iget-object v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v6, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v5

    :goto_1
    iget-object v6, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget v7, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget v8, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-direct {v2, v4, v6, v7, v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {p1, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    iget v2, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Scanner;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_1

    :cond_7
    :goto_2
    if-ge v2, p0, :cond_8

    new-instance p2, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-direct {p2, v5, v5, v2, p0}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {p1, p2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :cond_8
    invoke-virtual {p1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method
