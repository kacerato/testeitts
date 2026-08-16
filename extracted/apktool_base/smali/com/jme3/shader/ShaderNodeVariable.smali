.class public Lcom/jme3/shader/ShaderNodeVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private condition:Ljava/lang/String;

.field private defaultValue:Ljava/lang/String;

.field private multiplicity:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameSpace:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private shaderOutput:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    .line 4
    iput-object p2, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    .line 18
    iput-object p3, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    .line 9
    iput-object p3, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p5, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/shader/ShaderNodeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

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
    invoke-virtual {p0}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/shader/ShaderNodeVariable;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return v0

    :cond_5
    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    return v0

    :cond_7
    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_3
    return v0

    :cond_9
    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_4
    return v0

    :cond_b
    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    iget-object p1, p1, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_5
    return v0

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiplicity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0xcb

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v2, v1

    return v2
.end method

.method public isShaderOutput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

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

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    const-string v0, "type"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    const-string v0, "nameSpace"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    const-string v0, "condition"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    const-string v0, "shaderOutput"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    const-string v0, "multiplicity"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    const-string v0, "defaultValue"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setMultiplicity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameSpace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setShaderOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->name:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->type:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->prefix:Ljava/lang/String;

    const-string v1, "prefix"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->nameSpace:Ljava/lang/String;

    const-string v1, "nameSpace"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->condition:Ljava/lang/String;

    const-string v1, "condition"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->shaderOutput:Z

    const-string v1, "shaderOutput"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->multiplicity:Ljava/lang/String;

    const-string v1, "multiplicity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/ShaderNodeVariable;->defaultValue:Ljava/lang/String;

    const-string v1, "defaultValue"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
