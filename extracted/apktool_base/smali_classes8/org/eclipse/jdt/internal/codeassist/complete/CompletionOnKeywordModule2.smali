.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
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

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;-><init>([[C[J)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;->token:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;->possibleKeywords:[[C

    const/16 p1, 0x20

    ushr-long v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const-wide v0, 0xffffffffL

    and-long p1, p2, v0

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public getPossibleKeywords()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;->possibleKeywords:[[C

    return-object v0
.end method

.method public getToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeywordModule2;->token:[C

    return-object v0
.end method
