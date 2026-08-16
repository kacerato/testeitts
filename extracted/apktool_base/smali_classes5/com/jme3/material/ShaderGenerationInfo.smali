.class public Lcom/jme3/material/ShaderGenerationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected fragmentGlobals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected fragmentUniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected unusedNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected varyings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

.field protected vertexUniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/material/ShaderGenerationInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/ShaderGenerationInfo;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    .line 10
    iget-object v3, v0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    .line 12
    iget-object v3, v0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    .line 16
    iget-object v3, v0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    .line 18
    iget-object v3, v0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    .line 20
    iget-object v3, v0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_5
    iget-object v1, v0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    iget-object v2, p0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/material/ShaderGenerationInfo;->clone()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getFragmentGlobals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    return-object v0
.end method

.method public getFragmentUniforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    return-object v0
.end method

.method public getUnusedNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    return-object v0
.end method

.method public getVaryings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    return-object v0
.end method

.method public getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    return-object v0
.end method

.method public getVertexUniforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "attributes"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "vertexUniforms"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "varyings"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "fragmentUniforms"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "fragmentGlobals"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    const-string v0, "vertexGlobal"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/shader/ShaderNodeVariable;

    iput-object p1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    return-void
.end method

.method public setUnusedNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/material/ShaderGenerationInfo;->unusedNodes:Ljava/util/List;

    return-void
.end method

.method public setVertexGlobal(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShaderGenerationInfo{attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vertexUniforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vertexGlobal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", varyings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentUniforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentGlobals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->attributes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "attributes"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexUniforms:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "vertexUniforms"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->varyings:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "varyings"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentUniforms:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "fragmentUniforms"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->fragmentGlobals:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "fragmentGlobals"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/ShaderGenerationInfo;->vertexGlobal:Lcom/jme3/shader/ShaderNodeVariable;

    const-string v1, "vertexGlobal"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
