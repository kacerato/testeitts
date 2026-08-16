.class public final Lma/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lga/H;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lma/a;->a:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lga/H;->BOOLEAN:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lga/H;->NUMBER:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Lga/H;->BIG_NUMBER:Lga/H;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lga/H;->TEXT:Lga/H;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lga/H;->FLOAT2:Lga/H;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lga/H;->FLOAT4:Lga/H;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lga/H;->QUATERNION:Lga/H;

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lga/H;->COLOR:Lga/H;

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lga/H;->COLOR_GRADIENT:Lga/H;

    const-class v7, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lga/H;->MATERIAL:Lga/H;

    const-class v8, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lga/H;->TEXTURE:Lga/H;

    const-class v9, Lub/p;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lga/H;->FILE:Lga/H;

    const-class v10, Ljava/io/File;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, LJAVARuntime/File;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, LJAVARuntime/ProjectFile;

    sget-object v10, Lga/H;->PROJECT_FILE:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, Ljava/io/InputStream;

    sget-object v10, Lga/H;->INPUT_STREAM:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, LJAVARuntime/AnimationFile;

    sget-object v10, Lga/H;->ANIMATION_FILE:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, LJAVARuntime/AnimationMaskFile;

    sget-object v10, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, LJAVARuntime/Animation;

    sget-object v10, Lga/H;->ANIMATION:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, LJAVARuntime/AnimationMask;

    sget-object v10, Lga/H;->ANIMATION_MASK:Lga/H;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lga/H;->GAME_OBJECT:Lga/H;

    const-class v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, LJAVARuntime/Vector2;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Vector3;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Vector4;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Quaternion;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Color;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/ColorGradient;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Material;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Texture;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/ObjectFile;

    sget-object v2, Lga/H;->OBJECT_FILE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/WorldFile;

    sget-object v2, Lga/H;->WORLD_FILE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/SoundFile;

    sget-object v2, Lga/H;->SOUND_FILE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Collision;

    sget-object v2, Lga/H;->COLLISION:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/Collision$Contact;

    sget-object v2, Lga/H;->CONTACT:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/SpatialObject;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lec/a;

    sget-object v2, Lga/H;->BLENDING_MODE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcc/e;

    sget-object v2, Lga/H;->UV_SOURCE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, LJAVARuntime/InputDialog$Type;

    sget-object v2, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lga/G;

    sget-object v2, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2}, Lma/a;->m(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runtimeClassName",
            "methodName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lma/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lma/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const-string v0, "Result"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "get"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lma/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "is"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lma/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "find"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lma/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1
.end method

.method public static e(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "desiredType"
        }
    .end annotation

    invoke-static {p0}, Lma/a;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p1, :cond_1

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lga/m;->c(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Lga/H;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lga/H;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lma/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lga/H;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lga/H;->TEXT:Lga/H;

    return-object p0

    :cond_2
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    const-class v1, LJAVARuntime/SpatialObject;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    :cond_3
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_15

    const-class v1, LJAVARuntime/Material;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_5

    :cond_4
    const-class v1, Lub/p;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const-class v1, LJAVARuntime/Texture;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-class v1, Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_13

    const-class v1, LJAVARuntime/File;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_3

    :cond_6
    const-class v1, LJAVARuntime/ProjectFile;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Lga/H;->PROJECT_FILE:Lga/H;

    return-object p0

    :cond_7
    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p0, Lga/H;->INPUT_STREAM:Lga/H;

    return-object p0

    :cond_8
    const-class v1, LJAVARuntime/AnimationFile;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p0, Lga/H;->ANIMATION_FILE:Lga/H;

    return-object p0

    :cond_9
    const-class v1, LJAVARuntime/AnimationMaskFile;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p0, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    return-object p0

    :cond_a
    const-class v1, LJAVARuntime/Animation;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p0, Lga/H;->ANIMATION:Lga/H;

    return-object p0

    :cond_b
    const-class v1, LJAVARuntime/AnimationMask;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p0, Lga/H;->ANIMATION_MASK:Lga/H;

    return-object p0

    :cond_c
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    const-class v1, LJAVARuntime/ColorGradient;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    :cond_d
    const-class v1, LJAVARuntime/Component;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-ne p0, v1, :cond_e

    sget-object p0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object p0

    :cond_e
    invoke-static {}, Lga/H;->values()[Lga/H;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    invoke-static {v4}, Lga/d;->o(Lga/H;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    invoke-static {v4}, Lga/d;->j(Lga/H;)Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p0, :cond_10

    sget-object v0, Lma/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_10
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_11
    return-object v0

    :cond_12
    :goto_2
    sget-object p0, Lga/H;->COLOR_GRADIENT:Lga/H;

    return-object p0

    :cond_13
    :goto_3
    sget-object p0, Lga/H;->FILE:Lga/H;

    return-object p0

    :cond_14
    :goto_4
    sget-object p0, Lga/H;->TEXTURE:Lga/H;

    return-object p0

    :cond_15
    :goto_5
    sget-object p0, Lga/H;->MATERIAL:Lga/H;

    return-object p0

    :cond_16
    :goto_6
    sget-object p0, Lga/H;->GAME_OBJECT:Lga/H;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v1, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x5f

    if-eq v3, v2, :cond_4

    const/16 v2, 0x2d

    if-ne v3, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_4
    const-string p0, ""

    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtimeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-class v0, LJAVARuntime/ClassCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/ClassCategory;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "Components"

    if-eqz p0, :cond_2

    invoke-interface {p0}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_1
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_4
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_5
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_6
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_7
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string v0, "Empty class name"

    invoke-direct {p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static j(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const-class v3, LJAVARuntime/MethodArgs;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/MethodArgs;

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, LJAVARuntime/MethodArgs;->value()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_5

    if-eqz p0, :cond_2

    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget-object v4, p0, v0

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lma/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/reflect/Method;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-class v0, LH6/g;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static m(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lma/a;->m(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string p0, "Component"

    return-object p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "targetClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lma/a;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lma/a;->f(Ljava/lang/Class;)Lga/H;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lga/m;->c(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_40

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_4

    goto/16 :goto_a

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3f

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_5

    goto/16 :goto_9

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3e

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_6

    goto/16 :goto_8

    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3d

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    goto/16 :goto_7

    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3c

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_8

    goto/16 :goto_6

    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3b

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    goto/16 :goto_5

    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3a

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_a

    goto/16 :goto_4

    :cond_a
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_39

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_3

    :cond_b
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lga/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :cond_c
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-ne p1, v0, :cond_d

    invoke-static {p0}, Lga/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_d
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-ne p1, v0, :cond_e

    invoke-static {p0}, Lga/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    return-object p0

    :cond_e
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-ne p1, v0, :cond_f

    invoke-static {p0}, Lga/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0

    :cond_f
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-ne p1, v0, :cond_10

    invoke-static {p0}, Lga/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_10
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-ne p1, v0, :cond_11

    invoke-static {p0}, Lga/m;->W(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    return-object p0

    :cond_11
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-ne p1, v0, :cond_12

    invoke-static {p0}, Lga/m;->b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0

    :cond_12
    const-class v0, Lub/p;

    if-ne p1, v0, :cond_13

    invoke-static {p0}, Lga/m;->j0(Ljava/lang/Object;)Lub/p;

    move-result-object p0

    return-object p0

    :cond_13
    const-class v0, Ljava/io/File;

    if-eq p1, v0, :cond_38

    const-class v0, LJAVARuntime/File;

    if-ne p1, v0, :cond_14

    goto/16 :goto_2

    :cond_14
    const-class v0, LJAVARuntime/ProjectFile;

    if-eq p1, v0, :cond_37

    if-ne p1, v0, :cond_15

    goto/16 :goto_1

    :cond_15
    const-class v0, Ljava/io/InputStream;

    if-ne p1, v0, :cond_16

    invoke-static {p0}, Lga/m;->Z(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_16
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p1, v0, :cond_17

    invoke-static {p0}, Lga/d;->A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0

    :cond_17
    const-class v0, LJAVARuntime/Vector2;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_19

    invoke-static {p0}, Lga/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v1

    :cond_18
    return-object v1

    :cond_19
    const-class v0, LJAVARuntime/Vector3;

    if-ne p1, v0, :cond_1b

    invoke-static {p0}, Lga/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    :cond_1a
    return-object v1

    :cond_1b
    const-class v0, LJAVARuntime/Vector4;

    if-ne p1, v0, :cond_1d

    invoke-static {p0}, Lga/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->q()LJAVARuntime/Vector4;

    move-result-object v1

    :cond_1c
    return-object v1

    :cond_1d
    const-class v0, LJAVARuntime/Quaternion;

    if-ne p1, v0, :cond_1f

    invoke-static {p0}, Lga/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v1

    :cond_1e
    return-object v1

    :cond_1f
    const-class v0, LJAVARuntime/Color;

    if-ne p1, v0, :cond_21

    invoke-static {p0}, Lga/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    :cond_20
    return-object v1

    :cond_21
    const-class v0, LJAVARuntime/ColorGradient;

    if-ne p1, v0, :cond_23

    invoke-static {p0}, Lga/m;->W(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->s()LJAVARuntime/ColorGradient;

    move-result-object v1

    :cond_22
    return-object v1

    :cond_23
    const-class v0, LJAVARuntime/Material;

    if-ne p1, v0, :cond_25

    invoke-static {p0}, Lga/m;->b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k0()LJAVARuntime/Material;

    move-result-object v1

    :cond_24
    return-object v1

    :cond_25
    const-class v0, LJAVARuntime/Texture;

    if-ne p1, v0, :cond_27

    invoke-static {p0}, Lga/m;->j0(Ljava/lang/Object;)Lub/p;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v1

    :cond_26
    return-object v1

    :cond_27
    const-class v0, LJAVARuntime/ObjectFile;

    if-ne p1, v0, :cond_28

    invoke-static {p0}, Lga/m;->c0(Ljava/lang/Object;)LJAVARuntime/ObjectFile;

    move-result-object p0

    return-object p0

    :cond_28
    const-class v0, LJAVARuntime/WorldFile;

    if-ne p1, v0, :cond_29

    invoke-static {p0}, Lga/m;->r0(Ljava/lang/Object;)LJAVARuntime/WorldFile;

    move-result-object p0

    return-object p0

    :cond_29
    const-class v0, LJAVARuntime/SoundFile;

    if-ne p1, v0, :cond_2a

    invoke-static {p0}, Lga/m;->h0(Ljava/lang/Object;)LJAVARuntime/SoundFile;

    move-result-object p0

    return-object p0

    :cond_2a
    const-class v0, LJAVARuntime/Collision;

    if-ne p1, v0, :cond_2c

    invoke-static {p0}, Lga/m;->P(Ljava/lang/Object;)Lj9/a;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lj9/a;->h()LJAVARuntime/Collision;

    move-result-object v1

    :cond_2b
    return-object v1

    :cond_2c
    const-class v0, LJAVARuntime/Collision$Contact;

    if-ne p1, v0, :cond_2e

    invoke-static {p0}, Lga/m;->S(Ljava/lang/Object;)Lj9/a$a;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lj9/a$a;->b()LJAVARuntime/Collision$Contact;

    move-result-object v1

    :cond_2d
    return-object v1

    :cond_2e
    const-class v0, LJAVARuntime/SpatialObject;

    if-ne p1, v0, :cond_30

    invoke-static {p0}, Lga/d;->A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v1

    :cond_2f
    return-object v1

    :cond_30
    const-class v0, LJAVARuntime/Component;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    instance-of v0, p0, LJAVARuntime/Component;

    if-eqz v0, :cond_31

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_0

    :cond_31
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_32
    const-class v0, Lec/a;

    if-ne p1, v0, :cond_33

    invoke-static {p0}, Lga/m;->N(Ljava/lang/Object;)Lec/a;

    move-result-object p0

    return-object p0

    :cond_33
    const-class v0, Lcc/e;

    if-ne p1, v0, :cond_34

    invoke-static {p0}, Lga/m;->k0(Ljava/lang/Object;)Lcc/e;

    move-result-object p0

    return-object p0

    :cond_34
    const-class v0, LJAVARuntime/InputDialog$Type;

    if-ne p1, v0, :cond_35

    invoke-static {p0}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p0

    return-object p0

    :cond_35
    const-class v0, Lga/G;

    if-ne p1, v0, :cond_36

    invoke-static {p0}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object p0

    :cond_36
    return-object p0

    :cond_37
    :goto_1
    invoke-static {p0}, Lga/m;->e0(Ljava/lang/Object;)LJAVARuntime/ProjectFile;

    move-result-object p0

    return-object p0

    :cond_38
    :goto_2
    invoke-static {p0}, Lga/m;->U(Ljava/lang/Object;)LJAVARuntime/File;

    move-result-object p0

    return-object p0

    :cond_39
    :goto_3
    invoke-static {p0}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_4
    invoke-static {p0}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p0

    invoke-virtual {p0}, Lga/b;->d()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3b
    :goto_5
    invoke-static {p0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3c
    :goto_6
    invoke-static {p0}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p0

    invoke-virtual {p0}, Lga/b;->g()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_7
    invoke-static {p0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3e
    :goto_8
    invoke-static {p0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_9
    invoke-static {p0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_40
    :goto_a
    invoke-static {p0}, Lga/m;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, LJAVARuntime/SpatialObject;

    if-eqz v1, :cond_2

    check-cast p0, LJAVARuntime/SpatialObject;

    iget-object p0, p0, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, p0, LJAVARuntime/Vector2;

    if-eqz v1, :cond_4

    check-cast p0, LJAVARuntime/Vector2;

    iget-object p0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    :goto_0
    return-object p0

    :cond_4
    instance-of v1, p0, LJAVARuntime/Vector3;

    if-eqz v1, :cond_6

    check-cast p0, LJAVARuntime/Vector3;

    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :goto_1
    return-object p0

    :cond_6
    instance-of v1, p0, LJAVARuntime/Vector4;

    if-eqz v1, :cond_8

    check-cast p0, LJAVARuntime/Vector4;

    iget-object p0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    :goto_2
    return-object p0

    :cond_8
    instance-of v1, p0, LJAVARuntime/Quaternion;

    if-eqz v1, :cond_a

    check-cast p0, LJAVARuntime/Quaternion;

    iget-object p0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    goto :goto_3

    :cond_9
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :goto_3
    return-object p0

    :cond_a
    instance-of v1, p0, LJAVARuntime/Color;

    if-eqz v1, :cond_c

    check-cast p0, LJAVARuntime/Color;

    iget-object p0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    goto :goto_4

    :cond_b
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :goto_4
    return-object p0

    :cond_c
    instance-of v1, p0, LJAVARuntime/ColorGradient;

    if-eqz v1, :cond_e

    check-cast p0, LJAVARuntime/ColorGradient;

    iget-object p0, p0, LJAVARuntime/ColorGradient;->instance:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v0}, Lga/m;->W(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_e
    instance-of v0, p0, LJAVARuntime/Material;

    if-eqz v0, :cond_f

    check-cast p0, LJAVARuntime/Material;

    iget-object p0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object p0

    :cond_f
    instance-of v0, p0, LJAVARuntime/Texture;

    if-eqz v0, :cond_10

    check-cast p0, LJAVARuntime/Texture;

    iget-object p0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    return-object p0

    :cond_10
    instance-of v0, p0, LJAVARuntime/Collision;

    if-eqz v0, :cond_11

    check-cast p0, LJAVARuntime/Collision;

    iget-object p0, p0, LJAVARuntime/Collision;->instance:Lj9/a;

    return-object p0

    :cond_11
    instance-of v0, p0, LJAVARuntime/Collision$Contact;

    if-eqz v0, :cond_12

    check-cast p0, LJAVARuntime/Collision$Contact;

    iget-object p0, p0, LJAVARuntime/Collision$Contact;->instance:Lj9/a$a;

    :cond_12
    return-object p0
.end method
