.class public Lcom/ardor3d/renderer/state/StencilState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/StencilState$StencilOperation;,
        Lcom/ardor3d/renderer/state/StencilState$StencilFunction;
    }
.end annotation


# instance fields
.field private _stencilFuncMaskBack:I

.field private _stencilFuncMaskFront:I

.field private _stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

.field private _stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

.field private _stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

.field private _stencilReferenceBack:I

.field private _stencilReferenceFront:I

.field private _stencilWriteMaskBack:I

.field private _stencilWriteMaskFront:I

.field private _useTwoSided:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_useTwoSided:Z

    sget-object v1, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;->Always:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    iput v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceFront:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskFront:I

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskFront:I

    sget-object v3, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Keep:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    iput v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceBack:I

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskBack:I

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskBack:I

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/StencilStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/StencilStateRecord;-><init>()V

    return-object v0
.end method

.method public getStencilFuncMaskBack()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskBack:I

    return v0
.end method

.method public getStencilFuncMaskFront()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskFront:I

    return v0
.end method

.method public getStencilFunctionBack()Lcom/ardor3d/renderer/state/StencilState$StencilFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    return-object v0
.end method

.method public getStencilFunctionFront()Lcom/ardor3d/renderer/state/StencilState$StencilFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    return-object v0
.end method

.method public getStencilOpFailBack()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilOpFailFront()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilOpZFailBack()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilOpZFailFront()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilOpZPassBack()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilOpZPassFront()Lcom/ardor3d/renderer/state/StencilState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-object v0
.end method

.method public getStencilReferenceBack()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceBack:I

    return v0
.end method

.method public getStencilReferenceFront()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceFront:I

    return v0
.end method

.method public getStencilWriteMaskBack()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskBack:I

    return v0
.end method

.method public getStencilWriteMaskFront()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskFront:I

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Stencil:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public isUseTwoSided()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_useTwoSided:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "useTwoSided"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_useTwoSided:Z

    sget-object v0, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;->Always:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const-string v2, "stencilFuncFront"

    const-class v3, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    invoke-interface {p1, v2, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const-string v2, "stencilRefFront"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceFront:I

    const-string v2, "stencilWriteMaskFront"

    const/4 v4, -0x1

    invoke-interface {p1, v2, v4}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskFront:I

    const-string v2, "stencilFuncMaskFront"

    invoke-interface {p1, v2, v4}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskFront:I

    sget-object v2, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Keep:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpFailFront"

    const-class v6, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    invoke-interface {p1, v5, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v5, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpZFailFront"

    invoke-interface {p1, v5, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v5, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpZPassFront"

    invoke-interface {p1, v5, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v5, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilFuncBack"

    invoke-interface {p1, v5, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const-string v0, "stencilRefBack"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceBack:I

    const-string v0, "stencilWriteMaskBack"

    invoke-interface {p1, v0, v4}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskBack:I

    const-string v0, "stencilFuncMaskBack"

    invoke-interface {p1, v0, v4}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskBack:I

    const-string v0, "stencilOpFailBack"

    invoke-interface {p1, v0, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v0, "stencilOpZFailBack"

    invoke-interface {p1, v0, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v0, "stencilOpZPassBack"

    invoke-interface {p1, v0, v6, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    return-void
.end method

.method public setStencilFuncMask(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFuncMaskFront(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFuncMaskBack(I)V

    return-void
.end method

.method public setStencilFuncMaskBack(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskBack:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setStencilFuncMaskFront(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskFront:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setStencilFunction(Lcom/ardor3d/renderer/state/StencilState$StencilFunction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFunctionFront(Lcom/ardor3d/renderer/state/StencilState$StencilFunction;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFunctionBack(Lcom/ardor3d/renderer/state/StencilState$StencilFunction;)V

    return-void
.end method

.method public setStencilFunctionBack(Lcom/ardor3d/renderer/state/StencilState$StencilFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilFunctionFront(Lcom/ardor3d/renderer/state/StencilState$StencilFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilMask(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilMaskFront(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilMaskBack(I)V

    return-void
.end method

.method public setStencilMaskBack(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilWriteMaskBack(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFuncMaskBack(I)V

    return-void
.end method

.method public setStencilMaskFront(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilWriteMaskFront(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilFuncMaskFront(I)V

    return-void
.end method

.method public setStencilOpFail(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpFailFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpFailBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    return-void
.end method

.method public setStencilOpFailBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilOpFailFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilOpZFail(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpZFailFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpZFailBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    return-void
.end method

.method public setStencilOpZFailBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilOpZFailFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilOpZPass(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpZPassFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilOpZPassBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V

    return-void
.end method

.method public setStencilOpZPassBack(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilOpZPassFront(Lcom/ardor3d/renderer/state/StencilState$StencilOperation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStencilReference(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilReferenceFront(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilReferenceBack(I)V

    return-void
.end method

.method public setStencilReferenceBack(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceBack:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setStencilReferenceFront(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceFront:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setStencilWriteMask(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilWriteMaskFront(I)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/StencilState;->setStencilWriteMaskBack(I)V

    return-void
.end method

.method public setStencilWriteMaskBack(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskBack:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setStencilWriteMaskFront(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskFront:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUseTwoSided(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/StencilState;->_useTwoSided:Z

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_useTwoSided:Z

    const-string v1, "useTwoSided"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionFront:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    sget-object v1, Lcom/ardor3d/renderer/state/StencilState$StencilFunction;->Always:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const-string v3, "stencilFuncFront"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceFront:I

    const-string v3, "stencilRefFront"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskFront:I

    const-string v3, "stencilWriteMaskFront"

    const/4 v4, -0x1

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskFront:I

    const-string v3, "stencilFuncMaskFront"

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    sget-object v3, Lcom/ardor3d/renderer/state/StencilState$StencilOperation;->Keep:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpFailFront"

    invoke-interface {p1, v0, v5, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpZFailFront"

    invoke-interface {p1, v0, v5, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassFront:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v5, "stencilOpZPassFront"

    invoke-interface {p1, v0, v5, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFunctionBack:Lcom/ardor3d/renderer/state/StencilState$StencilFunction;

    const-string v5, "stencilFuncBack"

    invoke-interface {p1, v0, v5, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilReferenceBack:I

    const-string v1, "stencilRefBack"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilWriteMaskBack:I

    const-string v1, "stencilWriteMaskBack"

    invoke-interface {p1, v0, v1, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilFuncMaskBack:I

    const-string v1, "stencilFuncMaskBack"

    invoke-interface {p1, v0, v1, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v1, "stencilOpFailBack"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZFailBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v1, "stencilOpZFailBack"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/StencilState;->_stencilOpZPassBack:Lcom/ardor3d/renderer/state/StencilState$StencilOperation;

    const-string v1, "stencilOpZPassBack"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
