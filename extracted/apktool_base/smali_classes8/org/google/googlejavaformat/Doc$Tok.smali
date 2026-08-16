.class final Lorg/google/googlejavaformat/Doc$Tok;
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
    name = "Tok"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field private final tok:Lorg/google/googlejavaformat/Input$Tok;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Input$Tok;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tok"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Doc;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    return-void
.end method

.method public static make(Lorg/google/googlejavaformat/Input$Tok;)Lorg/google/googlejavaformat/Doc$Tok;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tok"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Doc$Tok;

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/Doc$Tok;-><init>(Lorg/google/googlejavaformat/Input$Tok;)V

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

.method public computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 2
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

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    iget v1, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-interface {p1, v0, p2, v1}, Lorg/google/googlejavaformat/CommentsHelper;->rewrite(Lorg/google/googlejavaformat/Input$Tok;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lorg/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    invoke-static {p2}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/E1;->H(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1
.end method

.method public computeFlat()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

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

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

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
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/google/googlejavaformat/Newlines;->firstBreak(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_0

    int-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "tok"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Tok;->tok:Lorg/google/googlejavaformat/Input$Tok;

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

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Tok;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    return-void
.end method
