.class public abstract Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;
.super Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode<",
        "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
        "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
        ">;",
        "Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode<",
        "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
        "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
        ">;"
    }
.end annotation


# instance fields
.field depsByKind:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    invoke-static {}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->values()[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dependencyAttributes(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;
    .locals 1

    .line 2
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 3
    const-string v0, "label"

    invoke-virtual {p1, v0, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic dependencyAttributes(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->dependencyAttributes(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->depsByKind:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->values()[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public nodeAttributes()Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/GraphUtils$DotVisitor;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
