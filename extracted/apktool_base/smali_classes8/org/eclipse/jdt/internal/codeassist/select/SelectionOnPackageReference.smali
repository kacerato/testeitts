.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageReference;
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
.method public print(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "<SelectOnPackage:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length p3, p3

    if-lt p1, p3, :cond_0

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    if-lez p1, :cond_1

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
