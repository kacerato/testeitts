.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;


# instance fields
.field public completionFlags:I

.field public missingParams:[[C

.field public missingTypeParams:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;)V
    .locals 6

    .line 3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceStart:I

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;-><init>([CJII)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->completionFlags:I

    return-void
.end method

.method public constructor <init>([CJII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;-><init>([CJII)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->completionFlags:I

    return-void
.end method


# virtual methods
.method public addCompletionFlags(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->completionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->completionFlags:I

    return-void
.end method

.method public getCompletionFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->completionFlags:I

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "<CompletionOnJavadocParamNameReference:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
