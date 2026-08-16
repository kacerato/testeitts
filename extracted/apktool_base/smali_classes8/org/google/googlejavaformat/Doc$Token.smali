.class public final Lorg/google/googlejavaformat/Doc$Token;
.super Lorg/google/googlejavaformat/Doc;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;
    }
.end annotation


# instance fields
.field private final breakAndIndentTrailingComment:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Indent;",
            ">;"
        }
    .end annotation
.end field

.field private final plusIndentCommentsBefore:Lorg/google/googlejavaformat/Indent;

.field private final realOrImaginary:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

.field private final token:Lorg/google/googlejavaformat/Input$Token;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "realOrImaginary",
            "plusIndentCommentsBefore",
            "breakAndIndentTrailingComment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Input$Token;",
            "Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Indent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Doc;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    iput-object p2, p0, Lorg/google/googlejavaformat/Doc$Token;->realOrImaginary:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    iput-object p3, p0, Lorg/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lorg/google/googlejavaformat/Indent;

    iput-object p4, p0, Lorg/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment:Lw2/C;

    return-void
.end method

.method public static make(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Op;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "realOrImaginary",
            "plusIndentCommentsBefore",
            "breakAndIndentTrailingComment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Input$Token;",
            "Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Indent;",
            ">;)",
            "Lorg/google/googlejavaformat/Op;"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Doc$Token;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/google/googlejavaformat/Doc$Token;-><init>(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/DocBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/google/googlejavaformat/DocBuilder;->add(Lorg/google/googlejavaformat/Doc;)V

    return-void
.end method

.method public breakAndIndentTrailingComment()Lw2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Indent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment:Lw2/C;

    return-object v0
.end method

.method public computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "state"
        }
    .end annotation

    iget-object p1, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object p1

    iget p2, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1
.end method

.method public computeFlat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeRange()Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/j2;->F(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-static {}, Lorg/google/googlejavaformat/Doc;->access$200()Lcom/google/common/collect/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0
.end method

.method public computeWidth()F
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPlusIndentCommentsBefore()Lorg/google/googlejavaformat/Indent;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lorg/google/googlejavaformat/Indent;

    return-object v0
.end method

.method public getToken()Lorg/google/googlejavaformat/Input$Token;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    return-object v0
.end method

.method public realOrImaginary()Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->realOrImaginary:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "token"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "realOrImaginary"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Token;->realOrImaginary:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "plusIndentCommentsBefore"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Token;->plusIndentCommentsBefore:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/google/googlejavaformat/Output;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Token;->token:Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    return-void
.end method
