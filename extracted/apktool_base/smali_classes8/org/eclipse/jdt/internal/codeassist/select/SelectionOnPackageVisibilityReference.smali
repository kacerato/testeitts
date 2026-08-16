.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageVisibilityReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.source "SourceFile"


# direct methods
.method public constructor <init>([[C[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "<SelectOnPackageVisibility:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method
