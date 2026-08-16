.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "AttributeAccess"


# instance fields
.field public attributeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Value"

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "AttributeAccess"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    return-void
.end method


# virtual methods
.method public D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    instance-of p1, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->j()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;->a()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_1
    return-object p1
.end method

.method public final H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "stage"
        }
    .end annotation

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->j()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "sga_missing"

    :goto_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "materialParams_"

    const-string v3, "materialParams."

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Lec/g;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_CUBEMAP:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v1, v3, v4, v5, v0}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->e(Lec/g;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Lec/g;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v1, v3, v4, v5, v0}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->e(Lec/g;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto :goto_2

    :pswitch_5
    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    goto :goto_2

    :pswitch_6
    new-instance v1, Lec/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {v1, v2, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lec/f;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Value"

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object p1

    return-object p1
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Attribute"

    :goto_0
    return-object p1
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
