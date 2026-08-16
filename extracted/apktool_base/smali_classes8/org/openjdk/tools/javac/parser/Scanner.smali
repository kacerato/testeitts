.class public Lorg/openjdk/tools/javac/parser/Scanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Lexer;


# instance fields
.field private prevToken:Lorg/openjdk/tools/javac/parser/Tokens$Token;

.field private savedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Token;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

.field private tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

.field private tokens:Lorg/openjdk/tools/javac/parser/Tokens;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    .line 6
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    .line 7
    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens;->DUMMY:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->prevToken:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/Scanner;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/JavaTokenizer;)V

    return-void
.end method

.method private ensureLookahead(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->readToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public errPos()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos()I

    move-result v0

    return v0
.end method

.method public errPos(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos(I)V

    return-void
.end method

.method public getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->prevToken:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokenizer:Lorg/openjdk/tools/javac/parser/JavaTokenizer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->readToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    :goto_0
    return-void
.end method

.method public prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->prevToken:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object v0
.end method

.method public split()Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->split(Lorg/openjdk/tools/javac/parser/Tokens;)[Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->prevToken:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object v0
.end method

.method public token()Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/Scanner;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    return-object v0
.end method

.method public token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/Scanner;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/Scanner;->ensureLookahead(I)V

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Scanner;->savedTokens:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object p1
.end method
