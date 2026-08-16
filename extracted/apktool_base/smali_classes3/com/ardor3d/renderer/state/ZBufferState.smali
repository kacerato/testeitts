.class public Lcom/ardor3d/renderer/state/ZBufferState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;
    }
.end annotation


# instance fields
.field protected _function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

.field protected _writable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    sget-object v0, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;->LessThan:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_writable:Z

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;-><init>()V

    return-object v0
.end method

.method public getFunction()Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public isWritable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_writable:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-class v0, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    sget-object v1, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;->LessThan:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    const-string v2, "function"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    const-string v0, "writable"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_writable:Z

    return-void
.end method

.method public setFunction(Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWritable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_writable:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_function:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    const-string v1, "function"

    sget-object v2, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;->LessThan:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ZBufferState;->_writable:Z

    const-string v1, "writable"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
