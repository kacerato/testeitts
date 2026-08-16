.class public Lorg/openjdk/tools/javac/parser/Tokens$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;
    }
.end annotation


# instance fields
.field public final comments:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation
.end field

.field public final endPos:I

.field public final kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

.field public final pos:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            "II",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput p2, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iput p3, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    iput-object p4, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->checkKind()V

    return-void
.end method

.method private getComments(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comments:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getStyle()Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkKind()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->tag:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad token kind - expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->STRING:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 1

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->getComments(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    :goto_0
    return-object p1
.end method

.method public deprecatedFlag()Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->getComments(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->isDeprecated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public name()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public radix()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public split(Lorg/openjdk/tools/javac/parser/Tokens;)[Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->tag:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comments:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V

    new-instance v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    iget v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v0, v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V

    filled-new-array {v1, v2}, [Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cant split - bad subtokens"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cant split"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public stringVal()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
