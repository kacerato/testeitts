.class public interface abstract Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->lambda$and$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$and$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "textElementMatcher",
            "textElement"
        }
    .end annotation

    invoke-interface {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public and(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElementMatcher"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/i0;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/i0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V

    return-object v0
.end method

.method public abstract match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation
.end method
