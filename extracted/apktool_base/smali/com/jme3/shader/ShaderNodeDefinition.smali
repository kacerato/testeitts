.class public Lcom/jme3/shader/ShaderNodeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private documentation:Ljava/lang/String;

.field private inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private noOutput:Z

.field private outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private shadersLanguage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shadersPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/jme3/shader/Shader$ShaderType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->noOutput:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->noOutput:Z

    .line 8
    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    .line 10
    iget-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDocumentation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getShadersLanguage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    return-object v0
.end method

.method public getShadersPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/jme3/shader/Shader$ShaderType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    return-object v0
.end method

.method public isNoOutput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->noOutput:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    const-string v0, "shadersLanguage"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    :goto_0
    const-string v0, "shadersPath"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    :goto_1
    const-string v0, "type"

    const-class v2, Lcom/jme3/shader/Shader$ShaderType;

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderType;

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inputs"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "outputs"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    return-void
.end method

.method public setDocumentation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->documentation:Ljava/lang/String;

    return-void
.end method

.method public setInputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->noOutput:Z

    return-void
.end method

.method public setOutputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->path:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nShaderNodeDefinition{\nname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nshaderPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nshaderLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ndocumentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->documentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ninputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\noutputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->name:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersLanguage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "shadersLanguage"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeDefinition;->shadersPath:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "shadersPath"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->type:Lcom/jme3/shader/Shader$ShaderType;

    const-string v1, "type"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->inputs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "inputs"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeDefinition;->outputs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "outputs"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
