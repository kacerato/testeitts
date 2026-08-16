.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$A;
    }
.end annotation


# instance fields
.field private final availableUniforms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blendingMode:Lec/a;

.field public final blendingMode_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private compiledParametersReady:Z

.field private doubleSided:Z

.field public final doubleSided_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private drawInFront:Z

.field public final drawInFront_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field private lastDeltaTime:F

.field private lastSmoothDeltaTime:F

.field private localWindIntensity:F

.field public final localWindIntensity_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public volatile refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

.field public final refractionType_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private refreshPending:Z

.field public shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

.field public final shadingModel_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private timeSeconds:F

.field private final timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

.field private writeDeltaUniform:Z

.field private writeSmoothDeltaUniform:Z

.field private writeTimeUniform:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;-><init>()V

    sget-object v0, Lec/a;->OPAQUE:Lec/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode_OFCBRL:Lec/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided_OFCBRL:Lec/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront_OFCBRL:Lec/d;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->LIT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel_OFCBRL:Lec/d;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType_OFCBRL:Lec/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity_OFCBRL:Lec/d;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastSmoothDeltaTime:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$A;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$A;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

    return-void
.end method

.method public static synthetic A0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->j1()V

    return-void
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refreshPending:Z

    return p1
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object p0
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    return p0
.end method

.method public static synthetic E0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    return p0
.end method

.method public static synthetic F0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    return p1
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    return p0
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    return p1
.end method

.method public static I0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$r;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object p0

    :cond_4
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private L0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()Lnc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, Lnc/h;->v(F)V

    :cond_0
    return-void
.end method

.method public static U0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static X0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "sgp_cube_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_cube_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "sgp_tex_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_tex_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)Lcom/google/android/filament/filamat/MaterialBuilder$k;
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
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$r;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$k;->SOLID:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->L0()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p1

    :cond_1
    const-string v0, "Vector2"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_4

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_3

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->B(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    :cond_0
    iget p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->E(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->d()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "W"

    const-string v11, "Z"

    const-string v13, "Y"

    const-string v14, "X"

    const/4 v15, 0x4

    const/16 v16, 0x1

    if-ge v7, v8, :cond_e

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v8, :cond_3

    iget-boolean v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    if-nez v10, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v10, p1

    move-object/from16 v17, v3

    goto/16 :goto_4

    :cond_4
    instance-of v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    if-eqz v10, :cond_5

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$s;

    invoke-direct {v10, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$s;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;)V

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v9, v10, v8, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    instance-of v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    if-eqz v10, :cond_6

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$t;

    invoke-direct {v10, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$t;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;)V

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v9, v10, v8, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    instance-of v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    if-eqz v10, :cond_7

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v9, v8}, LF5/c;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    instance-of v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    if-eqz v10, :cond_8

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v9, v8}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    instance-of v10, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    if-eqz v10, :cond_a

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    new-instance v10, LC5/b;

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v12

    sget-object v6, LC5/b$a;->Vector:LC5/b$a;

    new-array v15, v15, [LC5/b;

    invoke-direct {v10, v12, v6, v15}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v6, v10, LC5/b;->p:[LC5/b;

    new-instance v12, LC5/b;

    new-instance v15, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$u;

    invoke-direct {v15, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$u;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;)V

    move-object/from16 v17, v3

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v12, v15, v14, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v14, 0x0

    aput-object v12, v6, v14

    iget-object v6, v10, LC5/b;->p:[LC5/b;

    new-instance v12, LC5/b;

    new-instance v14, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$v;

    invoke-direct {v14, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$v;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;)V

    invoke-direct {v12, v14, v13, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v12, v6, v16

    iget-object v6, v10, LC5/b;->p:[LC5/b;

    new-instance v12, LC5/b;

    new-instance v13, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$w;

    invoke-direct {v13, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$w;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;)V

    invoke-direct {v12, v13, v11, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v11, 0x2

    aput-object v12, v6, v11

    iget-object v6, v10, LC5/b;->p:[LC5/b;

    new-instance v11, LC5/b;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;

    invoke-direct {v12, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;)V

    invoke-direct {v11, v12, v9, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x3

    aput-object v11, v6, v3

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    move-object/from16 v10, p1

    goto :goto_4

    :cond_a
    move-object/from16 v17, v3

    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    if-eqz v3, :cond_b

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    new-instance v3, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;

    invoke-direct {v6, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;)V

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v3, v6, v8, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    if-eqz v3, :cond_c

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    new-instance v3, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$z;

    invoke-direct {v6, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$z;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;)V

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v3, v6, v8, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;

    if-eqz v3, :cond_d

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;

    new-instance v3, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$b;

    invoke-direct {v6, v0, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;)V

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v3, v6, v8, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    instance-of v3, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    if-eqz v3, :cond_9

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    new-instance v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$c;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    move-object/from16 v10, p1

    invoke-static {v3, v6, v10, v8}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    goto/16 :goto_1

    :cond_e
    move-object/from16 v17, v3

    iget-object v3, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    if-eqz v7, :cond_10

    goto :goto_6

    :cond_10
    const-string v7, "Attribute"

    :goto_6
    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_11

    new-instance v8, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$d;

    invoke-direct {v10, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v6, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v8, v10, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    const/4 v12, 0x3

    goto/16 :goto_8

    :cond_11
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_12

    new-instance v8, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$e;

    invoke-direct {v10, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v6, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v8, v10, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_13

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v7, v6}, LF5/c;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_14

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v7, v6}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_15

    new-instance v8, LC5/b;

    sget-object v10, LC5/b$a;->Vector:LC5/b$a;

    new-array v12, v15, [LC5/b;

    invoke-direct {v8, v7, v10, v12}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v7, v8, LC5/b;->p:[LC5/b;

    new-instance v10, LC5/b;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$f;

    invoke-direct {v12, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v15, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v10, v12, v14, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v12, 0x0

    aput-object v10, v7, v12

    iget-object v7, v8, LC5/b;->p:[LC5/b;

    new-instance v10, LC5/b;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$g;

    invoke-direct {v12, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-direct {v10, v12, v13, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v10, v7, v16

    iget-object v7, v8, LC5/b;->p:[LC5/b;

    new-instance v10, LC5/b;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$h;

    invoke-direct {v12, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-direct {v10, v12, v11, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v12, 0x2

    aput-object v10, v7, v12

    iget-object v7, v8, LC5/b;->p:[LC5/b;

    new-instance v10, LC5/b;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$i;

    invoke-direct {v12, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-direct {v10, v12, v9, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v12, 0x3

    aput-object v10, v7, v12

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_15
    const/4 v12, 0x3

    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_16

    new-instance v8, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;

    invoke-direct {v10, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v6, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v8, v10, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_17

    new-instance v8, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$k;

    invoke-direct {v10, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v6, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v8, v10, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v8, v10, :cond_18

    new-instance v8, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$l;

    invoke-direct {v10, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$l;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    sget-object v6, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v8, v10, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_8
    const/4 v15, 0x4

    goto/16 :goto_5

    :cond_19
    move-object/from16 v17, v3

    :cond_1a
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;

    invoke-direct {v6, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v7, "blend"

    const-class v8, Lec/a;

    invoke-static {v7, v8, v3, v6}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$n;

    invoke-direct {v6, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v7, "Shading"

    const-class v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    invoke-static {v7, v8, v3, v6}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    invoke-direct {v6, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    const-string v7, "Refraction"

    sget-object v8, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v3, v6, v7, v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_1b

    iget-object v3, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v3, :cond_1b

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-nez v3, :cond_1b

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$p;

    move-object/from16 v5, v17

    invoke-direct {v3, v0, v5, v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$p;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v1, "Wind effect"

    invoke-static {v1, v3}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$q;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$q;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    const-string v3, "Others"

    invoke-static {v3, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public I(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    :cond_0
    iget p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    float-to-int p1, p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->I(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final J0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "usedAttributeIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$r;->b:[I

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    iget v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    goto :goto_0

    :pswitch_0
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-static {v1}, Lwb/c;->m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v4

    :cond_7
    invoke-static {v4}, Lub/p;->L(Lub/p;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v4, v0, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-object v1, Lyb/b;->i:Lub/p;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v3

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v4

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v5

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "usedNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->inputDefaults:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->inputDefaults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_b

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {v3}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v6

    :cond_9
    invoke-static {v6}, Lub/p;->L(Lub/p;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v6, v0, v4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-object v3, Lyb/b;->i:Lub/p;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0, v4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_b
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v4, v5, :cond_6

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->X0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    :try_start_1
    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-static {v3}, Lwb/c;->m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object v6

    :cond_d
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_e
    :goto_2
    return-void
.end method

.method public L(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->L(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public final M0(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advanceTimer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->P0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    instance-of v6, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    check-cast v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;

    if-eqz p1, :cond_6

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;->I(F)V

    :cond_6
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;->K()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;->J()F

    move-result v5

    invoke-virtual {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public N(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->N(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public final N0()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->r()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, LQb/a;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeTimeUniform:Z

    if-eqz v1, :cond_3

    const-string v1, "sg_time"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    :cond_3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeDeltaUniform:Z

    if-eqz v1, :cond_4

    const-string v1, "sg_deltaTime"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    :cond_4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeSmoothDeltaUniform:Z

    if-eqz v1, :cond_5

    const-string v1, "sg_smoothDeltaTime"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastSmoothDeltaTime:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    const/4 p1, 0x1

    return p1
.end method

.method public final P0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    return v0
.end method

.method public final Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "typeName"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visible ShaderGraph attribute of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found with name "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->U0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->U0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_4
    :goto_1
    return-object v1
.end method

.method public S0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    return v0
.end method

.method public final T0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->compiledParametersReady:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public V0()V
    .locals 14

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    return-void

    :cond_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Z0()V

    return-void

    :cond_1
    invoke-static {}, LQb/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Z0()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    return-void

    :cond_4
    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->P0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v5, v10, :cond_e

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    instance-of v12, v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;

    if-eqz v12, :cond_6

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :try_start_0
    move-object v12, v10

    check-cast v12, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;

    invoke-interface {v12}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v13

    invoke-interface {v12, v13, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    instance-of v12, v10, Lic/y1;

    if-nez v12, :cond_8

    instance-of v12, v10, Lic/k1;

    if-nez v12, :cond_8

    instance-of v12, v10, Lic/r;

    if-nez v12, :cond_8

    instance-of v12, v10, Lic/V0;

    if-eqz v12, :cond_9

    :cond_8
    move v6, v11

    :cond_9
    instance-of v12, v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/NormalizedTimeNode;

    if-eqz v12, :cond_a

    move v9, v11

    :cond_a
    instance-of v12, v10, Lic/w;

    if-eqz v12, :cond_b

    move v7, v11

    :cond_b
    instance-of v12, v10, Lic/l1;

    if-eqz v12, :cond_c

    move v8, v11

    :cond_c
    instance-of v11, v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;

    if-eqz v11, :cond_d

    check-cast v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;

    iget-object v11, v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v10, v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_e
    if-eqz v6, :cond_f

    const-string v2, "sg_time"

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v11

    goto :goto_2

    :cond_f
    move v2, v1

    :goto_2
    if-eqz v7, :cond_10

    const-string v5, "sg_deltaTime"

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v11

    goto :goto_3

    :cond_10
    move v5, v1

    :goto_3
    if-eqz v8, :cond_11

    const-string v6, "sg_smoothDeltaTime"

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->T0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v11

    goto :goto_4

    :cond_11
    move v6, v1

    :goto_4
    if-nez v2, :cond_13

    if-nez v5, :cond_13

    if-nez v6, :cond_13

    if-eqz v9, :cond_12

    goto :goto_5

    :cond_12
    move v11, v1

    :cond_13
    :goto_5
    invoke-virtual {p0, v2, v5, v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->g1(ZZZ)V

    invoke-virtual {p0, v11}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->N0()V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->M0(Z)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0, v0, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->J0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/HashSet;)V

    :cond_14
    invoke-virtual {p0, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->K0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/List;)V

    return-void
.end method

.method public final W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    :cond_1
    return-object v0
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    return-void
.end method

.method public final Z0()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refreshPending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refreshPending:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a1(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "samplers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->compiledParametersReady:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/f;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    invoke-virtual {p1}, Lec/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blendingMode"

    const-string v1, "String"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lec/a;->valueOf(Ljava/lang/String;)Lec/a;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    :cond_0
    const-string v0, "doubleSided"

    const-string v2, "Boolean"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    :cond_1
    const-string v0, "drawInFront"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    :cond_2
    const-string v0, "shadingModel"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const-string v0, "refractionType"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    const-string v0, "localWindIntensity"

    const-string v1, "Float"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->e1(F)V

    :cond_5
    return-void
.end method

.method public b1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    return-void
.end method

.method public c0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v1, "blendingMode"

    const-string v2, "String"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "doubleSided"

    const-string v3, "Boolean"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "drawInFront"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "shadingModel"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "refractionType"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "localWindIntensity"

    const-string v2, "Float"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    return-void
.end method

.method public d0(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->d0(Ljava/lang/String;Z)V

    return-void
.end method

.method public d1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    return-void
.end method

.method public e()I
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->I0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public e0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "colorINT"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_3

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_3
    const-string p2, "Color"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_5

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    goto :goto_2

    :cond_6
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public e1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, LNc/b;->G(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->L0()V

    :cond_1
    return-void
.end method

.method public f(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->I0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    iget-object p1, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public f0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_6

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_4

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->f0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public final f1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->j1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->g1(ZZZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeUpdateModule:Lcom/itsmagic/engine/Engines/Engine/Modules/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(I)Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g(I)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->I0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g1(ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writeTime",
            "writeDelta",
            "writeSmoothDelta"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeTimeUniform:Z

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeDeltaUniform:Z

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->writeSmoothDeltaUniform:Z

    return-void
.end method

.method public h0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filamentMaterial",
            "material"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->f1(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    return-void
.end method

.method public i0(Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localWindIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->e1(F)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "Float"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iput p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i0(Ljava/lang/String;F)V

    return-void
.end method

.method public final i1()V
    .locals 2

    invoke-static {}, LK8/d;->b()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    invoke-static {}, LK8/d;->e()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastSmoothDeltaTime:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    return-void
.end method

.method public j0(Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localWindIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->e1(F)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_3

    :cond_2
    iput p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j0(Ljava/lang/String;F)V

    return-void
.end method

.method public final j1()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->i1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->N0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->M0(Z)V

    return-void
.end method

.method public k(Lcc/b;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/b;",
            ")",
            "Ljava/util/List<",
            "Lec/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    invoke-static {}, Lec/a;->values()[Lec/a;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->values()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_1

    aget-boolean v21, v3, v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v2, :cond_0

    aget-boolean v13, v3, v15

    new-instance v14, Lec/i;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v16

    sget-object v17, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->h1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)Lcom/google/android/filament/filamat/MaterialBuilder$k;

    move-result-object v18

    xor-int/lit8 v19, v13, 0x1

    xor-int/lit8 v20, v13, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v13, v14

    move-object v1, v14

    move-object/from16 v14, v16

    move/from16 v23, v15

    move/from16 v15, v22

    move-object/from16 v16, v17

    move/from16 v17, v21

    invoke-direct/range {v13 .. v20}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v23, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public k0(Lnc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalShaderEntity"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->k0(Lnc/h;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->L0()V

    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->graphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->availableUniforms:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->compiledParametersReady:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->compiledParametersReady:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->timeSeconds:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastDeltaTime:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastSmoothDeltaTime:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->lastSmoothDeltaTime:F

    return-object v0
.end method

.method public m0(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    :cond_0
    int-to-float p1, p2

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(Ljava/lang/String;I)V

    return-void
.end method

.method public p0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->p0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "modelRenderer",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;Ljava/util/List;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->W0()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    if-eqz v0, :cond_2

    iget-object v1, v0, LC5/b;->N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    if-nez v1, :cond_2

    iget-object v1, v0, LC5/b;->l:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->I0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "String"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r0(Ljava/lang/String;Lub/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "texture"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_0

    const-string p1, ""

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_0
    instance-of v1, p2, Lub/g;

    if-eqz v1, :cond_1

    check-cast p2, Lub/g;

    invoke-virtual {p2}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_1
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Visible ShaderGraph texture attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " only supports file-backed textures"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p2, "Texture"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Lub/p;)V

    return-void
.end method

.method public s(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "file"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_1
    const-string p2, "Texture"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    return-object p1

    :cond_2
    const-string v0, "Color"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez p1, :cond_4

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    return-object p1

    :cond_5
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localWindIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->localWindIntensity:F

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Float"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iget p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    return p1

    :cond_4
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public u0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public w0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "vector2"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_2

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->O0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    return-void

    :cond_2
    const-string p2, "Vector2"

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->w0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "String"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-static {p1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "Texture"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->y(Ljava/lang/String;)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public y0(Lec/i;Lcc/b;)Lec/i;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "renderPass"
        }
    .end annotation

    invoke-virtual {p1}, Lec/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1}, Lec/i;->f()Lcom/google/android/filament/filamat/MaterialBuilder$k;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->h1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)Lcom/google/android/filament/filamat/MaterialBuilder$k;

    move-result-object v2

    if-eq v1, v2, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p1}, Lec/i;->i()Z

    move-result v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    if-eq v1, v2, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p1}, Lec/i;->g()Z

    move-result v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    if-ne v1, v2, :cond_2

    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lec/i;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v2

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->doubleSided:Z

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->h1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)Lcom/google/android/filament/filamat/MaterialBuilder$k;

    move-result-object v6

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->drawInFront:Z

    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    :cond_3
    return-object p1
.end method

.method public z(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->R0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "Texture"

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Q0(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
