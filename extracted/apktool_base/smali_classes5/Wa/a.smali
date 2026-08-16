.class public abstract LWa/a;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final j:Lga/H;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lga/H;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title",
            "outputType",
            "swizzle"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    iput-object p2, p0, LWa/a;->g:Ljava/lang/String;

    iput-object p3, p0, LWa/a;->j:Lga/H;

    iput-object p4, p0, LWa/a;->k:Ljava/lang/String;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string p4, "Vector"

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    invoke-direct {p2, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_VECTOR:LAc/b;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p2

    filled-new-array {p2}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p2

    iput-object p2, p0, LWa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string p4, "Out"

    invoke-direct {p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OUT:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p2

    filled-new-array {p2}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p2

    iput-object p2, p0, LWa/a;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LWa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final G0(Ljava/lang/Object;C)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    const/16 v2, 0x79

    const/16 v3, 0x78

    if-eqz v1, :cond_3

    check-cast p1, LJAVARuntime/Vector2;

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result p1

    return p1

    :cond_3
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_4

    check-cast p1, LJAVARuntime/Vector3;

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result p1

    return p1

    :cond_4
    instance-of v1, p1, LJAVARuntime/Vector4;

    if-eqz v1, :cond_5

    check-cast p1, LJAVARuntime/Vector4;

    packed-switch p2, :pswitch_data_1

    return v0

    :pswitch_3
    invoke-virtual {p1}, LJAVARuntime/Vector4;->getZ()F

    move-result p1

    return p1

    :pswitch_4
    invoke-virtual {p1}, LJAVARuntime/Vector4;->getY()F

    move-result p1

    return p1

    :pswitch_5
    invoke-virtual {p1}, LJAVARuntime/Vector4;->getX()F

    move-result p1

    return p1

    :pswitch_6
    invoke-virtual {p1}, LJAVARuntime/Vector4;->getW()F

    move-result p1

    return p1

    :cond_5
    instance-of v1, p1, LJAVARuntime/Quaternion;

    if-eqz v1, :cond_6

    check-cast p1, LJAVARuntime/Quaternion;

    packed-switch p2, :pswitch_data_2

    return v0

    :pswitch_7
    invoke-virtual {p1}, LJAVARuntime/Quaternion;->getQZ()F

    move-result p1

    return p1

    :pswitch_8
    invoke-virtual {p1}, LJAVARuntime/Quaternion;->getQY()F

    move-result p1

    return p1

    :pswitch_9
    invoke-virtual {p1}, LJAVARuntime/Quaternion;->getQX()F

    move-result p1

    return p1

    :pswitch_a
    invoke-virtual {p1}, LJAVARuntime/Quaternion;->getQW()F

    move-result p1

    return p1

    :cond_6
    instance-of v1, p1, LJAVARuntime/Color;

    if-eqz v1, :cond_7

    check-cast p1, LJAVARuntime/Color;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    packed-switch p2, :pswitch_data_3

    return v0

    :pswitch_b
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    return p1

    :pswitch_c
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result p1

    return p1

    :pswitch_d
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result p1

    return p1

    :pswitch_e
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    return p1

    :cond_7
    invoke-static {p1}, Lga/m;->k(Ljava/lang/Object;)Lga/H;

    move-result-object v1

    sget-object v4, Lga/H;->NUMBER:Lga/H;

    if-eq v1, v4, :cond_11

    sget-object v4, Lga/H;->NUMBER01:Lga/H;

    if-eq v1, v4, :cond_11

    sget-object v4, Lga/H;->BIG_NUMBER:Lga/H;

    if-ne v1, v4, :cond_8

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lga/H;->FLOAT2:Lga/H;

    if-ne v1, v4, :cond_b

    invoke-static {p1}, Lga/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    return v0

    :cond_9
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return p1

    :cond_a
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return p1

    :cond_b
    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    if-eq v1, v2, :cond_10

    sget-object v2, Lga/H;->DIRECTION:Lga/H;

    if-ne v1, v2, :cond_c

    goto :goto_0

    :cond_c
    sget-object v2, Lga/H;->FLOAT4:Lga/H;

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lga/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    packed-switch p2, :pswitch_data_4

    return v0

    :pswitch_f
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result p1

    return p1

    :pswitch_10
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result p1

    return p1

    :pswitch_11
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result p1

    return p1

    :pswitch_12
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p1

    return p1

    :cond_d
    sget-object v2, Lga/H;->QUATERNION:Lga/H;

    if-ne v1, v2, :cond_e

    invoke-static {p1}, Lga/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    packed-switch p2, :pswitch_data_5

    return v0

    :pswitch_13
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    return p1

    :pswitch_14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result p1

    return p1

    :pswitch_15
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p1

    return p1

    :pswitch_16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p1

    return p1

    :cond_e
    sget-object v2, Lga/H;->COLOR:Lga/H;

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lga/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    packed-switch p2, :pswitch_data_6

    return v0

    :pswitch_17
    const/4 p2, 0x2

    invoke-static {p1, p2}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p1

    return p1

    :pswitch_18
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p1

    return p1

    :pswitch_19
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p1

    return p1

    :pswitch_1a
    const/4 p2, 0x3

    invoke-static {p1, p2}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result p1

    return p1

    :cond_f
    return v0

    :cond_10
    :goto_0
    invoke-static {p1}, Lga/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    packed-switch p2, :pswitch_data_7

    return v0

    :pswitch_1b
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    return p1

    :pswitch_1c
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    return p1

    :pswitch_1d
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    return p1

    :cond_11
    :goto_1
    if-ne p2, v3, :cond_12

    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v0

    :cond_12
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x77
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x77
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x77
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x77
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x77
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x78
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LWa/a;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p0, LWa/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method public m0()V
    .locals 8

    iget-object v0, p0, LWa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LWa/a;->j:Lga/H;

    sget-object v3, Lga/H;->FLOAT3:Lga/H;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LWa/a;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v2, v2, v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LWa/a;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v0, v5}, LWa/a;->G0(Ljava/lang/Object;C)F

    move-result v5

    iget-object v6, p0, LWa/a;->k:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0, v4}, LWa/a;->G0(Ljava/lang/Object;C)F

    move-result v4

    iget-object v6, p0, LWa/a;->k:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v0, v6}, LWa/a;->G0(Ljava/lang/Object;C)F

    move-result v0

    invoke-direct {v3, v5, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, LWa/a;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v2, v2, v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v5, p0, LWa/a;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v0, v5}, LWa/a;->G0(Ljava/lang/Object;C)F

    move-result v5

    iget-object v6, p0, LWa/a;->k:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0, v4}, LWa/a;->G0(Ljava/lang/Object;C)F

    move-result v0

    invoke-direct {v3, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, LWa/a;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
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

    iget-object p1, p0, LWa/a;->j:Lga/H;

    return-object p1
.end method
