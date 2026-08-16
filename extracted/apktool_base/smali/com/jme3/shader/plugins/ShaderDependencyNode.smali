.class Lcom/jme3/shader/plugins/ShaderDependencyNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dependOnMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/plugins/ShaderDependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/plugins/ShaderDependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field private final dependencyInjectIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/lang/String;

.field private shaderName:Ljava/lang/String;

.field private shaderSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencyInjectIndices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependOnMe:Ljava/util/List;

    iput-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->shaderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDependency(ILcom/jme3/shader/plugins/ShaderDependencyNode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencyInjectIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependOnMe:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDependOnMe()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/plugins/ShaderDependencyNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependOnMe:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/plugins/ShaderDependencyNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyInjectIndices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencyInjectIndices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->extensions:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->shaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->shaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public removeDependency(Lcom/jme3/shader/plugins/ShaderDependencyNode;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->dependencyInjectIndices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/plugins/ShaderDependencyNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in this node\'s ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/plugins/ShaderDependencyNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") dependency list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtensions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->extensions:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->shaderName:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/plugins/ShaderDependencyNode;->shaderSource:Ljava/lang/String;

    return-void
.end method
