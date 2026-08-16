.class public Lcom/ardor3d/util/shader/ShaderVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# instance fields
.field public errorLogged:Z

.field public name:Ljava/lang/String;

.field public needsRefresh:Z

.field public variableID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->variableID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->needsRefresh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->errorLogged:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/ardor3d/util/shader/ShaderVariable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/util/shader/ShaderVariable;

    iget-object v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    const-string v0, "variableID"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/util/shader/ShaderVariable;->variableID:I

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ardor3d/util/shader/ShaderVariable;->variableID:I

    const-string v1, "variableID"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
