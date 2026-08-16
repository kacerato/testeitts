.class Lorg/openjdk/tools/javac/api/JavacTrees$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/tree/DocCommentTable;


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

.field final synthetic val$dcTree:Lorg/openjdk/source/doctree/DocCommentTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/source/doctree/DocCommentTree;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$6;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees$6;->val$dcTree:Lorg/openjdk/source/doctree/DocCommentTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCommentTree(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$6;->val$dcTree:Lorg/openjdk/source/doctree/DocCommentTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    return-object p1
.end method

.method public hasComment(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public putComment(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
