.class public Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;
.super Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DotVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N::",
        "Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode<",
        "TD;TN;>;>",
        "Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor<",
        "TD;TN;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public formatProperties(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{"

    const-string v1, "["

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\}"

    const-string v1, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            "TN;TN;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p2, p3, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;->dependencyAttributes(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->formatProperties(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;

    check-cast p3, Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;

    check-cast p4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;->nodeAttributes()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->formatProperties(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Ljava/lang/StringBuilder;)V

    return-void
.end method
