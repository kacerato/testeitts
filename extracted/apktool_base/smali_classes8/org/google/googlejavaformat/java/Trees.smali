.class Lorg/google/googlejavaformat/java/Trees;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnclosingTypeDeclaration(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/tree/ClassTree;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Lorg/google/googlejavaformat/java/Trees$1;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/tree/ClassTree;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static getEndPosition(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "path"
        }
    .end annotation

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0
.end method

.method public static getLength(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "path"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/google/googlejavaformat/java/Trees;->getEndPosition(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I

    move-result p1

    invoke-static {p0}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodInvocation"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/source/tree/MethodInvocationTree;->getMethodSelect()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    instance-of v0, p0, Lorg/openjdk/source/tree/MemberSelectTree;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/openjdk/source/tree/IdentifierTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMethodReceiver(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodInvocation"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/source/tree/MethodInvocationTree;->getMethodSelect()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    instance-of v0, p0, Lorg/openjdk/source/tree/MemberSelectTree;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSourceForNode(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "path"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result v1

    invoke-static {p0, p1}, Lorg/google/googlejavaformat/java/Trees;->getEndPosition(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOError;

    invoke-direct {p1, p0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getStartPosition(Lorg/openjdk/source/tree/Tree;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result p0

    return p0
.end method

.method public static operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "="

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    instance-of p0, p0, Lorg/openjdk/source/tree/CompoundAssignmentTree;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->noAssignOp()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/tree/Pretty;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static precedence(Lorg/openjdk/source/tree/ExpressionTree;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->opPrec(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result p0

    return p0
.end method

.method public static skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    check-cast p0, Lorg/openjdk/source/tree/ParenthesizedTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/ParenthesizedTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    return-object p0
.end method
