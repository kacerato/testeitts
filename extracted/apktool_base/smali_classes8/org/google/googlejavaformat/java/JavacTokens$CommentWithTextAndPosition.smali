.class Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentWithTextAndPosition"
.end annotation


# instance fields
.field private final endPos:I

.field private final pos:I

.field private final reader:Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;

.field private final style:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "endPos",
            "reader",
            "style"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    iput p1, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    iput p2, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    iput-object p3, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->reader:Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    iput-object p4, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->style:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    iget v1, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    iget v2, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    sub-int/2addr v1, v2

    const-string v2, "Expected %s in the range [0, %s)"

    invoke-static {v0, v2, p1, v1}, Lw2/H;->m(ZLjava/lang/String;II)V

    iget v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getStyle()Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->style:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->reader:Lorg/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->getText()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Comment: \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
