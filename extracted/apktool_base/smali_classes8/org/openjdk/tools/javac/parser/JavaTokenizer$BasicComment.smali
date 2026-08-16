.class public Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavaTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicComment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lorg/openjdk/tools/javac/parser/UnicodeReader;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/parser/Tokens$Comment;"
    }
.end annotation


# instance fields
.field comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field cs:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

.field protected deprecatedFlag:Z

.field protected scanned:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/UnicodeReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->cs:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getStyle()Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->cs:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->cs:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanDocComment()V

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    return v0
.end method

.method public scanDocComment()V
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v2, v3, v2

    iput-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v2, v1, :cond_c

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 v4, 0xc

    const/16 v5, 0x9

    const/16 v6, 0x20

    if-ge v2, v3, :cond_2

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 v7, 0x2f

    const/16 v8, 0x2a

    if-ge v2, v3, :cond_3

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v8, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v7, :cond_2

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v2, v3, :cond_5

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_5

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    if-nez v1, :cond_8

    const-string v1, "@deprecated"

    const/4 v2, 0x0

    :cond_6
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v4, v3, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v5, v3, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v4, v5, :cond_8

    iget-char v3, v3, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v2, v3, :cond_8

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v8, :cond_8

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v7, :cond_8

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    return-void

    :cond_8
    :goto_3
    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v2, v3, :cond_0

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b

    const/16 v4, 0xd

    if-eq v2, v4, :cond_a

    if-eq v2, v8, :cond_9

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v7, :cond_8

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    return-void

    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v3, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_c
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    return-void

    :goto_4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    throw v1
.end method
