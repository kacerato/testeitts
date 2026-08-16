.class public Lorg/openjdk/tools/javac/util/GraphUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;,
        Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;,
        Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;,
        Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;,
        Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;,
        Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;,
        Lorg/openjdk/tools/javac/util/GraphUtils$Node;,
        Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tarjan(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "N:",
            "Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode<",
            "TD;TN;>;>(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/util/List<",
            "+TN;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;-><init>(Lorg/openjdk/tools/javac/util/GraphUtils$1;)V

    invoke-static {v0, p0}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->access$100(Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toDot(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "N::",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode<",
            "TD;TN;>;>(",
            "Ljava/util/Collection<",
            "+TN;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digraph %s {\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "label = %s;\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;-><init>()V

    invoke-virtual {p1, p0, v0}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visit(Ljava/util/Collection;Ljava/lang/Object;)V

    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
