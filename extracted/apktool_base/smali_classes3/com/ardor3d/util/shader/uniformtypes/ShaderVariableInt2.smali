.class public Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;
.super Lcom/ardor3d/util/shader/ShaderVariable;
.source "SourceFile"


# instance fields
.field public value1:I

.field public value2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/util/shader/ShaderVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/util/shader/ShaderVariable;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "value1"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value1:I

    const-string v0, "value2"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value2:I

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/util/shader/ShaderVariable;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value1:I

    const-string v1, "value1"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value2:I

    const-string v1, "value2"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
