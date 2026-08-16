.class public Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.super Lorg/openjdk/tools/javac/util/Dependencies;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphDependencies"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;,
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;,
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;,
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;,
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;
    }
.end annotation


# instance fields
.field private dependenciesFile:Ljava/lang/String;

.field private dependenciesModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;",
            ">;"
        }
    .end annotation
.end field

.field dependencyNodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
            ">;"
        }
    .end annotation
.end field

.field nodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Dependencies;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->nodeStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    const-string v1, "debug.completionDeps"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "file="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesFile:Ljava/lang/String;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->getDependenciesModes([Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesModes:Ljava/util/EnumSet;

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public static preRegister(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies;->dependenciesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v1, Lorg/openjdk/tools/javac/util/a;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Lorg/openjdk/tools/javac/util/Context$Factory;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesModes:Ljava/util/EnumSet;

    sget-object v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->REDUNDANT:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$PruneVisitor;-><init>(Lorg/openjdk/tools/javac/util/Dependencies$1;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visit(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesModes:Ljava/util/EnumSet;

    sget-object v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;

    sget-object v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    invoke-direct {v0, p0, v2, v1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;-><init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;Lorg/openjdk/tools/javac/util/Dependencies$1;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visit(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesModes:Ljava/util/EnumSet;

    sget-object v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;->SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$DependenciesMode;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;

    sget-object v2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    invoke-direct {v0, p0, v2, v1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$FilterVisitor;-><init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;Lorg/openjdk/tools/javac/util/Dependencies$1;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;->visit(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesFile:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependenciesFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "CompletionDeps"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/openjdk/tools/javac/util/GraphUtils;->toDot(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v1, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->OTHER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->pop()V

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void
.end method

.method public getNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isTerminal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pop()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public push(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->dependencyNodeMap:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    .line 8
    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->addDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;)V

    .line 9
    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->nodeStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->push(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;

    move-result-object p2

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    :cond_0
    return-void
.end method
