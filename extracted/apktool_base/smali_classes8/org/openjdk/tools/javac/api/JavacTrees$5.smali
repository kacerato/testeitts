.class Lorg/openjdk/tools/javac/api/JavacTrees$5;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;->makeTreePath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/doctree/DocCommentTree;)Lorg/openjdk/source/util/TreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

.field final synthetic val$jfo:Lorg/openjdk/javax/tools/JavaFileObject;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$5;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    iput-object p3, p0, Lorg/openjdk/tools/javac/api/JavacTrees$5;->val$jfo:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLineMap()Lorg/openjdk/source/tree/LineMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTrees$5;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees$5;->val$jfo:Lorg/openjdk/javax/tools/JavaFileObject;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0, v1}, Lorg/openjdk/tools/javac/util/Position;->makeLineMap([CIZ)Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSourcefile()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees$5;->val$jfo:Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0
.end method
