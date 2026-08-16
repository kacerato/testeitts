.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;


# instance fields
.field public completionFlags:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;)V
    .locals 6

    .line 3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;-><init>([CJII)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    return-void
.end method

.method public constructor <init>([CJII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;-><init>([CJII)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    return-void
.end method


# virtual methods
.method public addCompletionFlags(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    return-void
.end method

.method public completeAnException()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeBaseTypes()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeFormalReference()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeInText()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompletionFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    const-string v0, "<CompletionOnJavadocSingleTypeReference:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completionFlags:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-lez v1, :cond_8

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_7

    const-string v0, "infos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completeAnException()Z

    move-result v0

    const/16 v4, 0x2c

    if-eqz v0, :cond_0

    const-string v0, "exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completeInText()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v4

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completeBaseTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "base types"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocSingleTypeReference;->completeFormalReference()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v0, "formal reference"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-lt v3, p1, :cond_9

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
