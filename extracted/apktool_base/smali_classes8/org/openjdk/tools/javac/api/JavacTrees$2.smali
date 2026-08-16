.class Lorg/openjdk/tools/javac/api/JavacTrees$2;
.super Lorg/openjdk/source/util/DocTreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;->getLastChild(Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/DocTreeScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

.field final synthetic val$last:[Lorg/openjdk/source/doctree/DocTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;[Lorg/openjdk/source/doctree/DocTree;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$2;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees$2;->val$last:[Lorg/openjdk/source/doctree/DocTree;

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/api/JavacTrees$2;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees$2;->val$last:[Lorg/openjdk/source/doctree/DocTree;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
