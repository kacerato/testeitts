.class Lorg/openjdk/tools/doclint/DocLint$1;
.super Lorg/openjdk/tools/doclint/DocLint$DeclScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/doclint/DocLint;->run(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/doclint/DocLint;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/doclint/DocLint;Lorg/openjdk/tools/doclint/Env;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$1;->this$0:Lorg/openjdk/tools/doclint/DocLint;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;-><init>(Lorg/openjdk/tools/doclint/Env;)V

    return-void
.end method


# virtual methods
.method public visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {p2, p1}, Lorg/openjdk/source/util/DocTrees;->getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint$1;->this$0:Lorg/openjdk/tools/doclint/DocLint;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/DocLint;->checker:Lorg/openjdk/tools/doclint/Checker;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/doclint/Checker;->scan(Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/util/TreePath;)Ljava/lang/Void;

    return-void
.end method
