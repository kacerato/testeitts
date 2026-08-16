.class public Lcom/jme3/shader/Uniform;
.super Lcom/jme3/shader/ShaderVariable;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ZERO_BUF:Ljava/nio/FloatBuffer;

.field private static final ZERO_FLT:Ljava/lang/Float;

.field private static final ZERO_INT:Ljava/lang/Integer;


# instance fields
.field protected binding:Lcom/jme3/shader/UniformBinding;

.field protected multiData:Ljava/nio/FloatBuffer;

.field protected setByCurrentMaterial:Z

.field protected value:Ljava/lang/Object;

.field protected varType:Lcom/jme3/shader/VarType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_INT:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_FLT:Ljava/lang/Float;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/shader/ShaderVariable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return-void
.end method


# virtual methods
.method public clearSetByCurrentMaterial()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return-void
.end method

.method public clearUpdateNeeded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void
.end method

.method public clearValue()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/jme3/shader/Uniform$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/jme3/math/ColorRGBA;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/jme3/math/Vector4f;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/jme3/math/Vector4f;

    sget-object v1, Lcom/jme3/math/Vector4f;->ZERO:Lcom/jme3/math/Vector4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector4f;->set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    goto :goto_1

    :cond_4
    check-cast v0, Lcom/jme3/math/Quaternion;

    sget-object v1, Lcom/jme3/math/Quaternion;->ZERO:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/jme3/math/Vector2f;

    sget-object v1, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_FLT:Ljava/lang/Float;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_INT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteNativeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/nio/Buffer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/jme3/shader/Uniform;

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    iget-object v3, p1, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    iget-object p1, p1, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBinding()Lcom/jme3/shader/UniformBinding;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    return-object v0
.end method

.method public getMultiData()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getVarType()Lcom/jme3/shader/VarType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x9b

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    return v2
.end method

.method public isSetByCurrentMaterial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void
.end method

.method public setBinding(Lcom/jme3/shader/UniformBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    return-void
.end method

.method public setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    sget-object v1, Lcom/jme3/shader/Uniform$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x10

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto/16 :goto_f

    :pswitch_0
    check-cast p2, [Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_3

    array-length v1, p2

    mul-int/2addr v1, v3

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_3
    array-length v2, p2

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :goto_1
    array-length v1, p2

    if-ge v4, v1, :cond_4

    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_1
    check-cast p2, [Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_5

    array-length v1, p2

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_5
    array-length v3, p2

    mul-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :goto_2
    array-length v1, p2

    if-ge v4, v1, :cond_6

    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/math/Matrix3f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_2
    check-cast p2, [Lcom/jme3/math/Vector4f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector4f;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_7
    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :goto_3
    array-length v1, p2

    if-ge v4, v1, :cond_8

    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v4}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector4f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_3
    check-cast p2, [Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_9

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_6

    :cond_9
    array-length v2, p2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :goto_5
    array-length v1, p2

    if-ge v4, v1, :cond_a

    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v4}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_4
    check-cast p2, [Lcom/jme3/math/Vector2f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_b

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_8

    :cond_b
    array-length v2, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :goto_7
    array-length v1, p2

    if-ge v4, v1, :cond_c

    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v4}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_5
    check-cast p2, [F

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_d

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_9

    :cond_d
    array-length v2, p2

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    :goto_9
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_6
    check-cast p2, [I

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v1, :cond_e

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_e
    check-cast v1, Ljava/nio/IntBuffer;

    array-length v2, p2

    invoke-static {v1, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :goto_a
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    check-cast p2, Ljava/nio/IntBuffer;

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_f

    :pswitch_7
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    check-cast p2, Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_10

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :cond_10
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1, v0}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v1, :cond_11

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1, p2}, Lcom/jme3/math/Matrix4f;-><init>(Lcom/jme3/math/Matrix4f;)V

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto/16 :goto_f

    :cond_11
    check-cast v1, Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Matrix4f;->copy(Lcom/jme3/math/Matrix4f;)V

    goto/16 :goto_f

    :pswitch_8
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    check-cast p2, Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_13

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    :cond_13
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1, v0}, Lcom/jme3/math/Matrix3f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v1, :cond_14

    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1, p2}, Lcom/jme3/math/Matrix3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto/16 :goto_f

    :cond_14
    check-cast v1, Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    goto/16 :goto_f

    :pswitch_9
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    iget-object v2, v1, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    iget-object v3, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v3, :cond_16

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception p1

    goto :goto_b

    :catch_1
    move-exception p1

    goto :goto_b

    :catch_2
    move-exception p1

    goto :goto_b

    :catch_3
    move-exception p1

    goto :goto_b

    :catch_4
    move-exception p1

    goto :goto_b

    :catch_5
    move-exception p1

    :goto_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate param of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_16
    :goto_c
    instance-of v3, p2, Lcom/jme3/math/ColorRGBA;

    if-eqz v3, :cond_17

    check-cast p2, Lcom/jme3/math/ColorRGBA;

    iget v3, p2, Lcom/jme3/math/ColorRGBA;->r:F

    iget v4, p2, Lcom/jme3/math/ColorRGBA;->g:F

    iget v5, p2, Lcom/jme3/math/ColorRGBA;->b:F

    iget p2, p2, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    goto :goto_d

    :cond_17
    instance-of v3, p2, Lcom/jme3/math/Vector4f;

    if-eqz v3, :cond_18

    check-cast p2, Lcom/jme3/math/Vector4f;

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector4f;->set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    goto :goto_d

    :cond_18
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p2

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    :goto_d
    iget-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    instance-of v3, p2, Lcom/jme3/math/ColorRGBA;

    if-eqz v3, :cond_19

    check-cast p2, Lcom/jme3/math/ColorRGBA;

    iget v3, v2, Lcom/jme3/math/Vector4f;->x:F

    iget v4, v2, Lcom/jme3/math/Vector4f;->y:F

    iget v5, v2, Lcom/jme3/math/Vector4f;->z:F

    iget v2, v2, Lcom/jme3/math/Vector4f;->w:F

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    goto :goto_e

    :cond_19
    instance-of v3, p2, Lcom/jme3/math/Vector4f;

    if-eqz v3, :cond_1a

    check-cast p2, Lcom/jme3/math/Vector4f;

    invoke-virtual {p2, v2}, Lcom/jme3/math/Vector4f;->set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    goto :goto_e

    :cond_1a
    check-cast p2, Lcom/jme3/math/Quaternion;

    iget v3, v2, Lcom/jme3/math/Vector4f;->x:F

    iget v4, v2, Lcom/jme3/math/Vector4f;->y:F

    iget v5, v2, Lcom/jme3/math/Vector4f;->z:F

    iget v2, v2, Lcom/jme3/math/Vector4f;->w:F

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    :goto_e
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_f

    :pswitch_a
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/jme3/math/Vector3f;

    check-cast p2, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_f

    :cond_1c
    check-cast v1, Lcom/jme3/math/Vector3f;

    check-cast p2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_f

    :pswitch_b
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1d
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/jme3/math/Vector2f;

    check-cast p2, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, p2}, Lcom/jme3/math/Vector2f;-><init>(Lcom/jme3/math/Vector2f;)V

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_f

    :cond_1e
    check-cast v1, Lcom/jme3/math/Vector2f;

    check-cast p2, Lcom/jme3/math/Vector2f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    goto :goto_f

    :pswitch_c
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    iput-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    :goto_f
    iput-object p1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "for uniform "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": value cannot be null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
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

.method public setVector4InArray(FFFFI)V
    .locals 2

    iget v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " value!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    mul-int/lit8 p5, p5, 0x4

    invoke-virtual {v0, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p5, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p5, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    iput-boolean p1, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return-void
.end method

.method public setVector4Length(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    sget-object p1, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    iput-object p1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    iput-boolean p1, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uniform[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v1, :cond_0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", value=<not set>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
