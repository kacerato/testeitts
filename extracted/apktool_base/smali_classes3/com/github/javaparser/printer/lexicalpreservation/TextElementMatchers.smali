.class Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->lambda$byTokenType$0(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method public static byNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public static byTokenType(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/j0;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/j0;-><init>(I)V

    return-object v0
.end method

.method private static synthetic lambda$byTokenType$0(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "tokenType",
            "textElement"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result p0

    return p0
.end method
