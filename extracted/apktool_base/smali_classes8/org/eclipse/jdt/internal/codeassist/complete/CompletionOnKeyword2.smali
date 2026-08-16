.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;
.super Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;


# instance fields
.field private possibleKeywords:[[C

.field private token:[C


# direct methods
.method public constructor <init>([CJ[[C)V
    .locals 3

    filled-new-array {p1}, [[C

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;->token:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;->possibleKeywords:[[C

    return-void
.end method


# virtual methods
.method public getPossibleKeywords()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;->possibleKeywords:[[C

    return-object v0
.end method

.method public getToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;->token:[C

    return-object v0
.end method

.method public print(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "<CompleteOnKeyword:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;->token:[C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method
