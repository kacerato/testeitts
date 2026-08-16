.class public Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;
.super Lcom/ardor3d/util/shader/ShaderVariable;
.source "SourceFile"


# instance fields
.field public size:I

.field public value:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/util/shader/ShaderVariable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->size:I

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

    const-string v0, "value"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->value:Ljava/nio/FloatBuffer;

    const-string v0, "size"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->size:I

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

    iget-object v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->value:Ljava/nio/FloatBuffer;

    const-string v1, "value"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->size:I

    const-string v1, "size"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
