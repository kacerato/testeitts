.class public Lcom/ardor3d/scenegraph/extension/PassNodeState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _enabled:Z

.field protected final _passStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_enabled:Z

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public applyPassNodeStates(Lcom/ardor3d/renderer/RenderContext;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->pushEnforcedStates()V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/RenderContext;->enforceStates(Ljava/util/EnumMap;)V

    return-void
.end method

.method public clearPassState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearPassStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/extension/PassNodeState;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPassState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_enabled:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_enabled:Z

    const-string v0, "passStates"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    const-class v0, Lcom/ardor3d/renderer/state/RenderState;

    invoke-static {p1, v0}, Lcom/ardor3d/util/export/CapsuleUtils;->asArray([Lcom/ardor3d/util/export/Savable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/renderer/state/RenderState;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v2}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_enabled:Z

    return-void
.end method

.method public setPassState(Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNodeState;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/util/export/Savable;

    const-string v1, "passStates"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
