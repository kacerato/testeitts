.class public Lcom/github/javaparser/TokenTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eolTokenKind()I
    .locals 1

    .line 5
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->eolTokenKind(Lcom/github/javaparser/utils/LineSeparator;)I

    move-result v0

    return v0
.end method

.method public static eolTokenKind(Lcom/github/javaparser/utils/LineSeparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_1
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown EOL character sequence"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static getCategory(I)Lcom/github/javaparser/JavaToken$Category;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to categorise token kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " -- has it recently been added to the grammar but not classified within TokenTypes.java, perhaps?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->OPERATOR:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->SEPARATOR:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->IDENTIFIER:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->LITERAL:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->KEYWORD:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->COMMENT:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->EOL:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lcom/github/javaparser/JavaToken$Category;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public static isComment(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isComment()Z

    move-result p0

    return p0
.end method

.method public static isEndOfLineToken(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result p0

    return p0
.end method

.method public static isSpaceOrTab(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->isWhitespaceButNotEndOfLine(I)Z

    move-result p0

    return p0
.end method

.method public static isWhitespace(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result p0

    return p0
.end method

.method public static isWhitespaceButNotEndOfLine(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespaceButNotEndOfLine()Z

    move-result p0

    return p0
.end method

.method public static isWhitespaceOrComment(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->getCategory(I)Lcom/github/javaparser/JavaToken$Category;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespaceOrComment()Z

    move-result p0

    return p0
.end method

.method public static spaceTokenKind()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
