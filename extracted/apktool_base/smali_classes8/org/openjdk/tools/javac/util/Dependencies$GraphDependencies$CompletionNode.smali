.class public Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;
.super Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletionNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;
    }
.end annotation


# instance fields
.field final ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    return-void
.end method


# virtual methods
.method public getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public nodeAttributes()Ljava/util/Properties;
    .locals 3

    invoke-super {p0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->nodeAttributes()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->ck:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->dotStyle:Ljava/lang/String;

    const-string v2, "style"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shape"

    const-string v2, "ellipse"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
