.class public Lorg/openjdk/tools/javac/parser/ReferenceParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;,
        Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;
    }
.end annotation


# instance fields
.field private final fac:Lorg/openjdk/tools/javac/parser/ParserFactory;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    return-void
.end method

.method private parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseParams(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const-string v1, "..."

    const-string v2, "[]"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;

    const-string v0, "dc.ref.unexpected.input"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "("

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_1

    if-ne v2, v5, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    move-object v3, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    move-object v3, v1

    move-object v1, v6

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseType(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    :goto_0
    if-ne v2, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseMember(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    :goto_1
    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, ")"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parseParams(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->getDiagnostics()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;

    invoke-direct {p1, v1, v3, v6}, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V

    return-object p1

    :cond_5
    :try_start_1
    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;

    const-string v1, "dc.ref.syntax.error"

    invoke-direct {p1, v1}, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;

    const-string v1, "dc.ref.bad.parens"

    invoke-direct {p1, v1}, Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1
.end method
