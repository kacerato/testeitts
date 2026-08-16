.class public Lcom/jme3/shader/VariableMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private condition:Ljava/lang/String;

.field private leftSwizzling:Ljava/lang/String;

.field private leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

.field private rightExpression:Ljava/lang/String;

.field private rightSwizzling:Ljava/lang/String;

.field private rightVariable:Lcom/jme3/shader/ShaderNodeVariable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    .line 8
    iput-object p3, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    .line 9
    iput-object p5, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    .line 11
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/shader/VariableMapping;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/VariableMapping;

    .line 3
    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    .line 4
    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->clone()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    :cond_0
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
    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->clone()Lcom/jme3/shader/VariableMapping;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftSwizzling()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    return-object v0
.end method

.method public getRightExpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getRightSwizzling()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    return-object v0
.end method

.method public getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

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

    const-string v0, "leftVariable"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    const-string v0, "rightVariable"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    const-string v0, "rightExpression"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightExpression:Ljava/lang/String;

    const-string v0, "condition"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    const-string v0, "leftSwizzling"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    const-string v0, "rightSwizzling"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    return-void
.end method

.method public setLeftSwizzling(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    return-void
.end method

.method public setLeftVariable(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    return-void
.end method

.method public setRightExpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->rightExpression:Ljava/lang/String;

    return-void
.end method

.method public setRightSwizzling(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    return-void
.end method

.method public setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2e

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->rightExpression:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
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

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftVariable:Lcom/jme3/shader/ShaderNodeVariable;

    const-string v1, "leftVariable"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightVariable:Lcom/jme3/shader/ShaderNodeVariable;

    const-string v1, "rightVariable"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightExpression:Ljava/lang/String;

    const-string v1, "rightExpression"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->condition:Ljava/lang/String;

    const-string v1, "condition"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->leftSwizzling:Ljava/lang/String;

    const-string v1, "leftSwizzling"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shader/VariableMapping;->rightSwizzling:Ljava/lang/String;

    const-string v1, "rightSwizzling"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
