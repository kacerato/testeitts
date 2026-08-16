.class public interface abstract Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex"
        }
    .end annotation
.end method

.method public abstract c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "stage",
            "type"
        }
    .end annotation
.end method

.method public abstract d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "stage",
            "expression",
            "type"
        }
    .end annotation
.end method

.method public abstract e(Lec/g;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation
.end method

.method public abstract f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "functionCode"
        }
    .end annotation
.end method

.method public abstract g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "stage",
            "desiredType"
        }
    .end annotation
.end method

.method public abstract h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "codeLine"
        }
    .end annotation
.end method

.method public abstract i(Lec/f;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method

.method public abstract j()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
.end method

.method public abstract k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex"
        }
    .end annotation
.end method
