.class Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;
.super Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterVisitor"
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


# instance fields
.field ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

.field final synthetic this$0:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->this$0:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;Lorg/openjdk/tools/javac/util/Dependencies$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;-><init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;)V

    return-void
.end method


# virtual methods
.method public visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V
    .locals 1

    .line 2
    instance-of p4, p3, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    if-eqz p4, :cond_0

    .line 3
    move-object p4, p3

    check-cast p4, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    if-eq p4, v0, :cond_0

    .line 4
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p3, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V

    return-void
.end method

.method public visitNode(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V
    .locals 1

    .line 2
    instance-of p2, p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    if-eq p2, v0, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->this$0:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;->visitNode(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Ljava/lang/Void;)V

    return-void
.end method
