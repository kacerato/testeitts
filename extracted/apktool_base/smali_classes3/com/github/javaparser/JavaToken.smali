.class public Lcom/github/javaparser/JavaToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/JavaToken$Kind;,
        Lcom/github/javaparser/JavaToken$Category;
    }
.end annotation


# static fields
.field public static final INVALID:Lcom/github/javaparser/JavaToken;


# instance fields
.field private kind:I

.field private nextToken:Lcom/github/javaparser/JavaToken;

.field private previousToken:Lcom/github/javaparser/JavaToken;

.field private range:Lcom/github/javaparser/Range;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/JavaToken;

    invoke-direct {v0}, Lcom/github/javaparser/JavaToken;-><init>()V

    sput-object v0, Lcom/github/javaparser/JavaToken;->INVALID:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    const-string v3, "INVALID"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/JavaToken;-><init>(Lcom/github/javaparser/Range;ILjava/lang/String;Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    .line 23
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    .line 24
    sget-object v0, Lcom/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 25
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string v0, " "

    .line 31
    :cond_2
    :goto_0
    iput p1, p0, Lcom/github/javaparser/JavaToken;->kind:I

    .line 32
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kind",
            "text"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/JavaToken;-><init>(Lcom/github/javaparser/Range;ILjava/lang/String;Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/Range;ILjava/lang/String;Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "kind",
            "text",
            "previousToken",
            "nextToken"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    .line 35
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    .line 36
    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->range:Lcom/github/javaparser/Range;

    .line 38
    iput p2, p0, Lcom/github/javaparser/JavaToken;->kind:I

    .line 39
    iput-object p3, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    .line 41
    iput-object p5, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/Token;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "tokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/Token;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/JavaToken;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    .line 5
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    .line 6
    iget v1, p1, Lcom/github/javaparser/Token;->beginLine:I

    iget v2, p1, Lcom/github/javaparser/Token;->beginColumn:I

    iget v3, p1, Lcom/github/javaparser/Token;->endLine:I

    iget v4, p1, Lcom/github/javaparser/Token;->endColumn:I

    invoke-static {v1, v2, v3, v4}, Lcom/github/javaparser/Range;->range(IIII)Lcom/github/javaparser/Range;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    .line 8
    iget v3, p1, Lcom/github/javaparser/Token;->kind:I

    const/16 v4, 0x96

    if-ne v3, v4, :cond_0

    .line 9
    iget v1, p1, Lcom/github/javaparser/Token;->beginLine:I

    iget v2, p1, Lcom/github/javaparser/Token;->beginColumn:I

    iget v3, p1, Lcom/github/javaparser/Token;->endLine:I

    invoke-static {v1, v2, v3, v2}, Lcom/github/javaparser/Range;->range(IIII)Lcom/github/javaparser/Range;

    move-result-object v1

    .line 10
    const-string v2, ">"

    goto :goto_0

    :cond_0
    const/16 v4, 0x95

    if-ne v3, v4, :cond_1

    .line 11
    iget v1, p1, Lcom/github/javaparser/Token;->beginLine:I

    iget v2, p1, Lcom/github/javaparser/Token;->beginColumn:I

    iget v3, p1, Lcom/github/javaparser/Token;->endLine:I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/github/javaparser/Range;->range(IIII)Lcom/github/javaparser/Range;

    move-result-object v1

    .line 12
    const-string v2, ">>"

    .line 13
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/github/javaparser/JavaToken;->range:Lcom/github/javaparser/Range;

    .line 14
    iget p1, p1, Lcom/github/javaparser/Token;->kind:I

    iput p1, p0, Lcom/github/javaparser/JavaToken;->kind:I

    .line 15
    iput-object v2, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    .line 18
    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    .line 19
    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    goto :goto_1

    .line 20
    :cond_2
    iput-object v0, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$insertAfter$1(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$insert$0(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$replaceToken$5(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$replaceToken$4(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$deleteToken$3(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/JavaToken;->lambda$deleteToken$2(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method private static synthetic lambda$deleteToken$2(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "nextToken",
            "p"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/JavaToken;

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private static synthetic lambda$deleteToken$3(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "previousToken",
            "n"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/JavaToken;

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private static synthetic lambda$insert$0(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "p"
        }
    .end annotation

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private static synthetic lambda$insertAfter$1(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "n"
        }
    .end annotation

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private static synthetic lambda$replaceToken$4(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "p"
        }
    .end annotation

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method private static synthetic lambda$replaceToken$5(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newToken",
            "n"
        }
    .end annotation

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-object v0
.end method

.method public deleteToken()V
    .locals 3

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/q;

    invoke-direct {v2, v0}, Lcom/github/javaparser/q;-><init>(Ljava/util/Optional;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/github/javaparser/r;

    invoke-direct {v2, v1}, Lcom/github/javaparser/r;-><init>(Ljava/util/Optional;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/JavaToken;

    iget v2, p0, Lcom/github/javaparser/JavaToken;->kind:I

    iget v3, p1, Lcom/github/javaparser/JavaToken;->kind:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public findFirstToken()Lcom/github/javaparser/JavaToken;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findLastToken()Lcom/github/javaparser/JavaToken;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCategory()Lcom/github/javaparser/JavaToken$Category;
    .locals 1

    iget v0, p0, Lcom/github/javaparser/JavaToken;->kind:I

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/JavaToken;->kind:I

    return v0
.end method

.method public getNextToken()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousToken()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/JavaToken;->range:Lcom/github/javaparser/Range;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasRange()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/JavaToken;->kind:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public insert(Lcom/github/javaparser/JavaToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/u;

    invoke-direct {v1, p1}, Lcom/github/javaparser/u;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method public insertAfter(Lcom/github/javaparser/JavaToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/v;

    invoke-direct {v1, p1}, Lcom/github/javaparser/v;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->nextToken:Lcom/github/javaparser/JavaToken;

    iput-object p0, p1, Lcom/github/javaparser/JavaToken;->previousToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method public invalid()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken;->INVALID:Lcom/github/javaparser/JavaToken;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replaceToken(Lcom/github/javaparser/JavaToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newToken"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/s;

    invoke-direct {v1, p1}, Lcom/github/javaparser/s;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/t;

    invoke-direct {v1, p1}, Lcom/github/javaparser/t;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setKind(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    iput p1, p0, Lcom/github/javaparser/JavaToken;->kind:I

    return-void
.end method

.method public setRange(Lcom/github/javaparser/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->range:Lcom/github/javaparser/Range;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/JavaToken;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\\r\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/w;

    invoke-direct {v3}, Lcom/github/javaparser/w;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "(?)-(?)"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\"%s\"   <%s>   %s"

    invoke-static {v1, v0}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTokenRange()Lcom/github/javaparser/TokenRange;
    .locals 3

    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->findFirstToken()Lcom/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->findLastToken()Lcom/github/javaparser/JavaToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0
.end method

.method public valid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->invalid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
