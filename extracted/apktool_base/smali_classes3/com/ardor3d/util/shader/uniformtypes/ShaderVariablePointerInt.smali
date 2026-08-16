.class public Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;
.super Lcom/ardor3d/util/shader/ShaderVariable;
.source "SourceFile"


# instance fields
.field public data:Ljava/nio/IntBuffer;

.field public normalized:Z

.field public size:I

.field public stride:I

.field public unsigned:Z


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

    const-string v0, "size"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->size:I

    const-string v0, "stride"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->stride:I

    const-string v0, "normalized"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->normalized:Z

    const-string v0, "unsigned"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->unsigned:Z

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->data:Ljava/nio/IntBuffer;

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

    iget v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->size:I

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->stride:I

    const-string v1, "stride"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->normalized:Z

    const-string v1, "normalized"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->unsigned:Z

    const-string v1, "unsigned"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->data:Ljava/nio/IntBuffer;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/IntBuffer;Ljava/lang/String;Ljava/nio/IntBuffer;)V

    return-void
.end method
