.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageVisibilityReference;
.super Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnImportReference;
.source "SourceFile"


# instance fields
.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>([[C[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnImportReference;-><init>([[C[JI)V

    new-instance p2, Ljava/lang/String;

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageVisibilityReference;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "<CompleteOnPackageVisibilityReference:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageVisibilityReference;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method
