.class public abstract Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
.implements Lcom/github/javaparser/printer/lexicalpreservation/PrintableTextElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->lambda$null$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->lambda$matchByRange$1(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$matchByRange$1(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "textElement"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/g0;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/g0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "textElement",
            "r1"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/h0;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/h0;-><init>(Lcom/github/javaparser/Range;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract expand()Ljava/lang/String;
.end method

.method public abstract getRange()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation
.end method

.method public isChild()Z
    .locals 1

    const-class v0, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isChildOfClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public abstract isChildOfClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isComment()Z
.end method

.method public final isCommentToken()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract isIdentifier()Z
.end method

.method public abstract isKeyword()Z
.end method

.method public abstract isLiteral()Z
.end method

.method public abstract isNewline()Z
.end method

.method public abstract isNode(Lcom/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isSeparator()Z
.end method

.method public abstract isSpaceOrTab()Z
.end method

.method public abstract isToken(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation
.end method

.method public abstract isWhiteSpace()Z
.end method

.method public final isWhiteSpaceOrComment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public matchByRange()Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/f0;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/f0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-object v0
.end method
