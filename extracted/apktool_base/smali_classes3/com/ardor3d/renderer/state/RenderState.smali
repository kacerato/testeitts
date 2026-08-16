.class public abstract Lcom/ardor3d/renderer/state/RenderState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/RenderState$StateType;
    }
.end annotation


# static fields
.field public static final _quickCompare:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _enabled:Z

.field private _needsRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/RenderState;->_quickCompare:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Blend:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Fog:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Material:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Shading:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->ColorMask:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Offset:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/RenderState;->_enabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/RenderState;->_needsRefresh:Z

    return-void
.end method

.method public static createState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 3

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/ardor3d/renderer/state/WireframeState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/WireframeState;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/ardor3d/renderer/state/VertexProgramState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/VertexProgramState;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/ardor3d/renderer/state/StencilState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/StencilState;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/ardor3d/renderer/state/ShadingState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/ShadingState;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/ardor3d/renderer/state/OffsetState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/OffsetState;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/ardor3d/renderer/state/MaterialState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/MaterialState;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/ardor3d/renderer/state/LightState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/LightState;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/ardor3d/renderer/state/FragmentProgramState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/FragmentProgramState;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/ardor3d/renderer/state/FogState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/FogState;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/ardor3d/renderer/state/CullState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/CullState;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/ardor3d/renderer/state/ColorMaskState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/ColorMaskState;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/ardor3d/renderer/state/ClipState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/ClipState;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setQuickCompares(Z)V
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState;->_quickCompare:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    if-eqz p0, :cond_0

    const-class p0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
.end method

.method public extract(Ljava/util/Stack;Lcom/ardor3d/scenegraph/Spatial;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "+",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ")",
            "Lcom/ardor3d/renderer/state/RenderState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/RenderState;->_enabled:Z

    return v0
.end method

.method public needsRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/RenderState;->_needsRefresh:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/RenderState;->_enabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/RenderState;->_enabled:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setNeedsRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/RenderState;->_needsRefresh:Z

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/RenderState;->_enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
