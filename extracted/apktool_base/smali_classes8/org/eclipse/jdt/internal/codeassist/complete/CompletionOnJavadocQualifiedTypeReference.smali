.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;


# instance fields
.field public completionFlags:I

.field public completionIdentifier:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;)V
    .locals 2

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceStart:I

    invoke-direct {p0, v0, v1, p1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;-><init>([[C[JII)V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

    .line 6
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionIdentifier:[C

    return-void
.end method

.method public constructor <init>([[C[C[JII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;-><init>([[C[JII)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionIdentifier:[C

    return-void
.end method


# virtual methods
.method public addCompletionFlags(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

    return-void
.end method

.method public completeAnException()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    const-string v0, "<CompletionOnJavadocQualifiedTypeReference:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completionFlags:I

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completeAnException()Z

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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completeInText()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v4

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completeBaseTypes()Z

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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;->completeFormalReference()Z

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
