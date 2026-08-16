.class Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;
.super Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PruneVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor<",
        "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
        "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Dependencies$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V
    .locals 0

    .line 2
    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    invoke-virtual {p3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p3, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;->visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V

    return-void
.end method

.method public visitNode(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;->visitNode(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V

    return-void
.end method
