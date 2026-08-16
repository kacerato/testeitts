.class public final Lorg/google/googlejavaformat/java/JavaInput;
.super Lorg/google/googlejavaformat/Input;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/JavaInput$Token;,
        Lorg/google/googlejavaformat/java/JavaInput$Tok;
    }
.end annotation


# instance fields
.field private kN:I

.field private final kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

.field private final positionToColumnMap:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final positionTokenMap:Lcom/google/common/collect/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p1<",
            "Ljava/lang/Integer;",
            "Lorg/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final tokens:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Input;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->lineIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->s(Ljava/util/Iterator;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/InputOutput;->setLines(Lcom/google/common/collect/g1;)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaInput;->makePositionToColumnMap(Ljava/util/List;)Lcom/google/common/collect/i1;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->positionToColumnMap:Lcom/google/common/collect/i1;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaInput;->buildTokens(Ljava/util/List;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/g1;

    invoke-static {}, Lcom/google/common/collect/p1;->n()Lcom/google/common/collect/p1$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-static {v1}, Lorg/google/googlejavaformat/java/JavaOutput;->endTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v2

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v3

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v3, v2

    :cond_0
    invoke-static {v1}, Lorg/google/googlejavaformat/java/JavaOutput;->startTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v2

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/p1$c;->c(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/p1$c;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/p1$c;->a()Lcom/google/common/collect/p1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->positionTokenMap:Lcom/google/common/collect/p1;

    iget p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->kN:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lorg/google/googlejavaformat/java/JavaInput$Token;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/g1;

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInput;->kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    aput-object v0, v3, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInput;->kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getTok()Lorg/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v2

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v2

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v3

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInput;->kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    aput-object v0, v3, v2

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/JavaInput;->lambda$buildToks$0(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p0

    return p0
.end method

.method private static buildTokens(Ljava/util/List;)Lcom/google/common/collect/g1;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    if-ge v5, v2, :cond_b

    :goto_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isToken()Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v3, v5}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-static {v5}, Lorg/google/googlejavaformat/java/JavaInput;->isParamComment(Lorg/google/googlejavaformat/java/JavaInput$Tok;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v6, v0

    goto :goto_2

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v5, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v7

    :goto_3
    if-ge v6, v2, :cond_a

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isToken()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v10, "<"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x2

    goto :goto_4

    :sswitch_1
    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v9, v0

    goto :goto_4

    :sswitch_2
    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move v9, v4

    :goto_4
    packed-switch v9, :pswitch_data_0

    :cond_6
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isJavadocComment()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_7
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-static {v8}, Lorg/google/googlejavaformat/java/JavaInput;->isParamComment(Lorg/google/googlejavaformat/java/JavaInput$Tok;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v3}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v7

    invoke-direct {v8, v3, v5, v7}, Lorg/google/googlejavaformat/java/JavaInput$Token;-><init>(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v3

    add-int/lit8 v5, v6, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v3, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    move-result-object v3

    :goto_5
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/2addr v5, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v6, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v7, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/google/googlejavaformat/Newlines;->containsBreaks(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v8

    goto :goto_6

    :cond_9
    move v6, v8

    goto/16 :goto_3

    :cond_a
    :goto_6
    :pswitch_0
    new-instance v8, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v3}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v7

    invoke-direct {v8, v3, v5, v7}, Lorg/google/googlejavaformat/java/JavaInput$Token;-><init>(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v3

    move v5, v6

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x2e -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private buildToks(Ljava/lang/String;)Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;Lcom/google/common/collect/r1;)Lcom/google/common/collect/g1;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v0

    iput v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->kN:I

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/InputOutput;->computeRanges(Ljava/util/List;)V

    return-object p1
.end method

.method public static buildToks(Ljava/lang/String;Lcom/google/common/collect/r1;)Lcom/google/common/collect/g1;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "stopTokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/r1<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4
    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/r1$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/r1$a;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    .line 6
    new-instance v3, Lorg/openjdk/tools/javac/file/JavacFileManager;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5, v4}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    .line 7
    new-instance v3, Lorg/openjdk/javax/tools/DiagnosticCollector;

    invoke-direct {v3}, Lorg/openjdk/javax/tools/DiagnosticCollector;-><init>()V

    .line 8
    const-class v4, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {v2, v4, v3}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    .line 10
    new-instance v4, Lorg/google/googlejavaformat/java/JavaInput$1;

    const-string v6, "Source.java"

    .line 11
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    sget-object v7, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {v4, v6, v7, v0}, Lorg/google/googlejavaformat/java/JavaInput$1;-><init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 13
    new-instance v4, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-direct {v4, v3}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    .line 14
    invoke-static {v0, v2, v1}, Lorg/google/googlejavaformat/java/JavacTokens;->getTokens(Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;Ljava/util/Set;)Lcom/google/common/collect/g1;

    move-result-object v2

    .line 15
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->getDiagnostics()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/google/googlejavaformat/java/d;

    invoke-direct {v4}, Lorg/google/googlejavaformat/java/d;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    new-instance v0, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lorg/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-static {v0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v2}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v2

    const/4 v4, 0x0

    move v6, v4

    move v7, v6

    move/from16 v16, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;

    .line 19
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_11

    .line 20
    :cond_1
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->pos()I

    move-result v9

    .line 21
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->endPos()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v10

    sget-object v11, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v10, v11, :cond_2

    .line 23
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v9

    .line 24
    :goto_1
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 25
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 27
    invoke-static {v9}, Lorg/google/googlejavaformat/Newlines;->lineIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v11

    .line 28
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 29
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 30
    invoke-static {v13}, Lorg/google/googlejavaformat/Newlines;->getLineEnding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 31
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v14, v17, v18

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 33
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_4
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 36
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v14, v4

    :goto_3
    move-object v15, v9

    move-object v11, v10

    const/16 v25, 0x0

    move v9, v14

    goto/16 :goto_a

    .line 37
    :cond_7
    const-string v13, "\'"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "\""

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_9

    .line 38
    :cond_8
    const-string v13, "//"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "/*"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_7

    .line 39
    :cond_9
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v13

    if-nez v13, :cond_c

    .line 40
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-nez v13, :cond_c

    const/16 v13, 0x2e

    if-ne v11, v13, :cond_a

    .line 41
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v5, :cond_a

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_6

    .line 42
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    array-length v13, v11

    move v14, v4

    :goto_4
    if-ge v14, v13, :cond_b

    aget-char v15, v11, v14

    .line 43
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    move v14, v5

    goto :goto_3

    .line 44
    :cond_c
    :goto_6
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 45
    :cond_d
    :goto_7
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "\n"

    .line 46
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "\r"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 47
    :cond_e
    invoke-static {v9}, Lorg/google/googlejavaformat/Newlines;->getLineEnding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v9, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    .line 50
    :goto_8
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v15, v9

    move-object v11, v10

    move-object/from16 v25, v14

    move v14, v4

    move v9, v5

    goto :goto_a

    .line 51
    :cond_10
    :goto_9
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 52
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v5, :cond_12

    .line 53
    new-instance v12, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    if-eqz v9, :cond_11

    add-int/lit8 v9, v7, 0x1

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    goto :goto_b

    :cond_11
    move v9, v13

    .line 54
    :goto_b
    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v17

    move-object v8, v12

    move-object v10, v15

    move-object v13, v12

    move/from16 v12, v16

    move-object v4, v13

    move v13, v6

    move-object/from16 v26, v15

    move-object/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Lorg/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    .line 55
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    add-int v16, v16, v4

    move-object/from16 v4, v26

    .line 57
    invoke-static {v6, v4}, Lorg/google/googlejavaformat/java/JavaInput;->updateColumn(ILjava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    goto :goto_f

    :cond_12
    move-object v4, v15

    .line 58
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v5, :cond_14

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_c

    .line 59
    :cond_13
    new-instance v0, Lorg/google/googlejavaformat/java/FormatterException;

    const-string v1, "Unicode escapes not allowed in whitespace or multi-character operators"

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_14
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 61
    new-instance v11, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    if-eqz v9, :cond_15

    add-int/lit8 v12, v7, 0x1

    move/from16 v18, v7

    move v7, v12

    goto :goto_e

    :cond_15
    move/from16 v18, v13

    :goto_e
    const/16 v24, 0x0

    move-object/from16 v17, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v10

    move/from16 v21, v16

    move/from16 v22, v6

    move/from16 v23, v14

    invoke-direct/range {v17 .. v24}, Lorg/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v16, v16, v10

    .line 63
    invoke-static {v6, v4}, Lorg/google/googlejavaformat/java/JavaInput;->updateColumn(ILjava/lang/String;)I

    move-result v6

    goto :goto_d

    :cond_16
    move/from16 v22, v6

    :goto_f
    if-eqz v25, :cond_17

    .line 64
    new-instance v4, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    move-object/from16 v17, v4

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v16

    invoke-direct/range {v17 .. v24}, Lorg/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    add-int v16, v16, v4

    const/4 v6, 0x0

    goto :goto_10

    :cond_17
    move/from16 v6, v22

    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 66
    :cond_18
    :goto_11
    new-instance v0, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v8, ""

    const-string v9, ""

    move v4, v6

    move-object v6, v0

    move/from16 v10, v16

    move v11, v4

    invoke-direct/range {v6 .. v13}, Lorg/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {v3}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method private static isParamComment(Lorg/google/googlejavaformat/java/JavaInput$Tok;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tok"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\/\\*[A-Za-z0-9\\s_\\-]+=\\s*\\*\\/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$buildToks$0(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object p0

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makePositionToColumnMap(Ljava/util/List;)Lcom/google/common/collect/i1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)",
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getColumn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->a()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method private static updateColumn(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnI",
            "originalTokText"
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->H(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public characterRangeToTokenRange(II)Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-gez p2, :cond_0

    sget-object p1, Lorg/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/p1;->r(Lcom/google/common/collect/j2;)Lcom/google/common/collect/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/p1;->m()Lcom/google/common/collect/i1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/i1;->L()Lcom/google/common/collect/c1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lorg/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getTok()Lorg/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object p2

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getTok()Lorg/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object p1

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/google/googlejavaformat/java/FormatterException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "error: invalid length %d, offset + length (%d) is outside the file"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/m2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "characterRanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInput;->characterRangeToTokenRange(II)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColumnNumber(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Expected compilation unit to be set."

    invoke-static {v0, v2, v1}, Lw2/W;->z(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMap;->getColumnNumber(I)I

    move-result p1

    return p1
.end method

.method public getLineNumber(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Expected compilation unit to be set."

    invoke-static {v0, v2, v1}, Lw2/W;->z(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result p1

    return p1
.end method

.method public getPositionToColumnMap()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->positionToColumnMap:Lcom/google/common/collect/i1;

    return-object v0
.end method

.method public getPositionTokenMap()Lcom/google/common/collect/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/p1<",
            "Ljava/lang/Integer;",
            "Lorg/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->positionTokenMap:Lcom/google/common/collect/p1;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToken(I)Lorg/google/googlejavaformat/java/JavaInput$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->kToToken:[Lorg/google/googlejavaformat/java/JavaInput$Token;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTokens()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public getkN()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/java/JavaInput;->kN:I

    return v0
.end method

.method public setCompilationUnit(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput;->unit:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "tokens"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/g1;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "super"

    invoke-super {p0}, Lorg/google/googlejavaformat/Input;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
