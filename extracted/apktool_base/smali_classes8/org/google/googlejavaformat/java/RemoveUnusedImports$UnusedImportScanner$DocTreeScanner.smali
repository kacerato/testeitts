.class Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;
.super Lorg/openjdk/source/util/DocTreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocTreeScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/DocTreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;->this$0:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTreePathScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "aVoid"
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;->visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "aVoid"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "referenceTree",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;->visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referenceTree",
            "unused"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/source/util/DocTreePath;->getDocComment()Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree;->getSourcePosition(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)J

    move-result-wide v0

    .line 4
    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;

    invoke-direct {p2, p0, v0, v1}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;-><init>(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;J)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p2, v0, v2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->paramTypes:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 8
    new-instance v0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;

    const-wide/16 v3, -0x1

    invoke-direct {v0, p0, v3, v4}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;-><init>(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;J)V

    invoke-virtual {v0, p2, v2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method
