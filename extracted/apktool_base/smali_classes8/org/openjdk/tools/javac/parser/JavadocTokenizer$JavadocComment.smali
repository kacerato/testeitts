.class public Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;
.super Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavadocTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavadocComment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment<",
        "Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEPRECATED_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private docComment:Ljava/lang/String;

.field private docPosns:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?sm).*^\\s*@deprecated( |$).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->DEPRECATED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;-><init>(Lorg/openjdk/tools/javac/parser/UnicodeReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    if-nez v1, :cond_1

    return v0

    :cond_1
    array-length v0, v1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_4

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    aget v4, v3, v2

    if-ge v4, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    if-ne v4, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget p1, v3, v2

    return p1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    aget v0, v0, v1

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    return v2

    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->cs:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->scanDocComment()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    return-object v0
.end method

.method public scanDocComment()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    :goto_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 v6, 0x2a

    if-ge v4, v5, :cond_0

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v6, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    const/16 v8, 0x2f

    if-ge v4, v5, :cond_2

    :try_start_1
    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v8, :cond_2

    iput-object v7, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    iput-object v2, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->DEPRECATED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    :cond_1
    return-void

    :cond_2
    :try_start_2
    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 v9, 0xd

    const/16 v10, 0xa

    const/4 v11, 0x0

    if-ge v4, v5, :cond_4

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v10, :cond_3

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    :goto_1
    move v0, v11

    goto :goto_2

    :cond_3
    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v9, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v10, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_2
    iget-object v4, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v5, v4

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v12, v4

    check-cast v12, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v12, v12, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v5, v12, :cond_17

    move-object v5, v4

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    :goto_3
    iget-object v12, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v13, v12

    check-cast v13, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v13, v13, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v14, v12

    check-cast v14, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v14, v14, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 v15, 0x20

    const/16 v2, 0xc

    const/16 v9, 0x9

    if-ge v13, v14, :cond_8

    move-object v13, v12

    check-cast v13, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v13, v13, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v13, v9, :cond_7

    if-eq v13, v2, :cond_6

    if-eq v13, v15, :cond_5

    goto :goto_5

    :cond_5
    check-cast v12, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    :goto_4
    const/4 v2, 0x0

    const/16 v9, 0xd

    goto :goto_3

    :cond_6
    move-object v2, v12

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iput v11, v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    check-cast v12, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_4

    :cond_7
    move-object v2, v12

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    move-object v9, v12

    check-cast v9, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v9, v9, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    sub-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x8

    mul-int/lit8 v9, v9, 0x8

    add-int/lit8 v9, v9, 0x8

    iput v9, v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    check-cast v12, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_4

    :cond_8
    :goto_5
    move-object v13, v12

    check-cast v13, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v13, v13, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v13, v6, :cond_a

    :cond_9
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v4, v6, :cond_9

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v8, :cond_b

    goto/16 :goto_9

    :cond_a
    if-nez v0, :cond_b

    move-object v0, v12

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iput v5, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    check-cast v12, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iput-char v4, v12, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    :cond_b
    :goto_6
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v4, v5, :cond_16

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v4, v9, :cond_14

    if-eq v4, v10, :cond_12

    if-eq v4, v2, :cond_11

    const/16 v5, 0xd

    if-eq v4, v5, :cond_10

    if-eq v4, v15, :cond_15

    if-eq v4, v6, :cond_e

    const/16 v12, 0x5c

    if-eq v4, v12, :cond_c

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {v4, v0, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_6

    :cond_c
    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0, v12, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->isDoubleBackslash()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0, v12, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    :cond_d
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_7

    :cond_e
    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v8, :cond_f

    goto :goto_9

    :cond_f
    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0, v6, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    goto :goto_6

    :cond_10
    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v10, :cond_13

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0, v10, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    goto :goto_8

    :cond_11
    const/16 v5, 0xd

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_8

    :cond_12
    const/16 v5, 0xd

    :cond_13
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {v2, v0, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto :goto_8

    :cond_14
    const/16 v5, 0xd

    :cond_15
    :goto_7
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {v4, v0, v11}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanCommentChar()V

    goto/16 :goto_6

    :cond_16
    const/16 v5, 0xd

    :goto_8
    move v9, v5

    move v0, v11

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_17
    :goto_9
    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    if-lez v2, :cond_1a

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    sub-int/2addr v0, v3

    :goto_a
    const/4 v2, -0x1

    if-le v0, v2, :cond_19

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    aget-char v2, v2, v0

    if-eq v2, v6, :cond_18

    goto :goto_b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_19
    :goto_b
    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    add-int/2addr v0, v3

    iput v0, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pp:I

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docPosns:[I

    check-cast v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    array-length v4, v2

    invoke-static {v0, v11, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_1a
    iput-object v7, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_c
    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-object v0, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    if-eqz v0, :cond_1b

    sget-object v2, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->DEPRECATED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    :cond_1b
    return-void

    :goto_d
    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->docComment:Ljava/lang/String;

    if-eqz v2, :cond_1c

    sget-object v4, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$JavadocComment;->DEPRECATED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-boolean v3, v1, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    :cond_1c
    throw v0
.end method
