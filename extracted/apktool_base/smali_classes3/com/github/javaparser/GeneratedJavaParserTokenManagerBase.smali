.class abstract Lcom/github/javaparser/GeneratedJavaParserTokenManagerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCommentFromToken(Lcom/github/javaparser/Token;)Lcom/github/javaparser/ast/comments/Comment;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    iget v1, p0, Lcom/github/javaparser/Token;->kind:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/github/javaparser/ast/comments/JavadocComment;

    invoke-static {p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lcom/github/javaparser/Token;)Lcom/github/javaparser/TokenRange;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/github/javaparser/ast/comments/BlockComment;

    invoke-static {p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lcom/github/javaparser/Token;)Lcom/github/javaparser/TokenRange;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/github/javaparser/ast/comments/BlockComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/github/javaparser/ast/comments/LineComment;

    invoke-static {p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManagerBase;->tokenRange(Lcom/github/javaparser/Token;)Lcom/github/javaparser/TokenRange;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/github/javaparser/ast/comments/LineComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unexpectedly got passed a non-comment token."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static tokenRange(Lcom/github/javaparser/Token;)Lcom/github/javaparser/TokenRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/TokenBase;->javaToken:Lcom/github/javaparser/JavaToken;

    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, p0, p0}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0
.end method
