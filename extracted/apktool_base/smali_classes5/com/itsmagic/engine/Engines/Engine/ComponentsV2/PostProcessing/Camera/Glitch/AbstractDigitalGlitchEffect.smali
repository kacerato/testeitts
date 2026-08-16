.class public abstract Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final D0:I = 0x6

.field public static final F1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$r;",
            ">;"
        }
    .end annotation
.end field

.field public static final H1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$m;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:I = 0x0

.field public static final X:I = 0x1

.field public static final Y:I = 0x2

.field public static final Z:I = 0x3

.field public static final b1:I = 0x7

.field public static final i1:I = 0x8

.field public static final m1:I = 0x9

.field public static final q0:I = 0x4

.field public static final q1:I = 0xa

.field public static final v0:I = 0x5

.field public static final v1:I = 0xb

.field public static final y1:I = 0xc


# instance fields
.field public final S:Ljava/lang/String;

.field public final T:F

.field public U:F

.field public V:LJAVARuntime/Component;

.field protected amount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected blockSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected colorShift:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected intensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected lineAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected noiseAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected pixelSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected radialAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected speed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field protected swirl:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->F1:Ljava/util/Map;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "intensity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "amount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "speed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "blockSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lineAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "colorShift"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "noiseAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pixelSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "radialAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "swirl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "resolution"

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "variant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->H1:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "displayableTitle",
            "variantId"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->F1:Ljava/util/Map;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->H1:Ljava/util/Map;

    const-string v2, "digital_glitch_suite"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    const/high16 p1, 0x41c00000    # 24.0f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    const p1, 0x3ee66666    # 0.45f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    const p1, 0x3eb33333    # 0.35f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->S:Ljava/lang/String;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->T:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->copyBaseStateTo(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public final copyBaseStateTo(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;",
            ">(TT;)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->setInternalTime(F)V

    return-object p1
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public getAmount()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    return v0
.end method

.method public getBlockSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    return v0
.end method

.method public getColorShift()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    return v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    const-string v4, "Intensity"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "intensity"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Amount"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v4, "amount"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$d;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Speed"

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "speed"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$e;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Block Size"

    const/high16 v6, 0x43000000    # 128.0f

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "blockSize"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$f;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Line Amount"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "lineAmount"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$g;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Color Shift"

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "colorShift"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$h;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Noise"

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "noiseAmount"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$i;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Pixel Size"

    const/high16 v7, 0x42400000    # 48.0f

    invoke-direct {v1, v4, v5, v3, v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "pixelSize"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$j;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Radial Amount"

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v4, "radialAmount"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;)V

    const-string v5, "Swirl"

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v1, v4, v5, v3, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const-string v3, "swirl"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    return v0
.end method

.method public getLineAmount()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    return v0
.end method

.method public getNoiseAmount()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    return v0
.end method

.method public getPixelSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    return v0
.end method

.method public getRadialAmount()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    return v0
.end method

.method public getResolutionDependentParameterMask()J
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    return v0
.end method

.method public getSwirl()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    return v0
.end method

.method public getTime()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackedParameterMask()J
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getVariantId()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->T:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    invoke-static {}, LK8/d;->b()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setBlockSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setColorShift(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorShift"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public final setDefaults(FFFFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intensity",
            "amount",
            "speed",
            "blockSize",
            "lineAmount",
            "colorShift",
            "noiseAmount",
            "pixelSize",
            "radialAmount",
            "swirl"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    iput p10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intensity"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public final setInternalTime(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    return-void
.end method

.method public setLineAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineAmount"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setNoiseAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noiseAmount"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setPixelSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixelSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setRadialAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radialAmount"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setSwirl(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "swirl"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setTime(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public shouldApplyPreUpdatePass(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer",
            "dirtyMask"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p2

    and-long/2addr p2, p7

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    const-string p2, "intensity"

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->intensity:F

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_1

    const-string p3, "amount"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->amount:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_1
    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_2

    const-string p3, "speed"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->speed:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_2
    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_3

    const-string p3, "blockSize"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->blockSize:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_3
    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_4

    const-string p3, "lineAmount"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->lineAmount:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_4
    const/4 p3, 0x5

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_5

    const-string p3, "colorShift"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->colorShift:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_5
    const/4 p3, 0x6

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_6

    const-string p3, "noiseAmount"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->noiseAmount:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_6
    const/4 p3, 0x7

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_7

    const-string p3, "pixelSize"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->pixelSize:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_7
    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_8

    const-string p3, "radialAmount"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->radialAmount:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_8
    const/16 p3, 0x9

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_9

    const-string p3, "swirl"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->swirl:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_9
    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_a

    const-string p3, "time"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->U:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_a
    const/16 p3, 0xc

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_b

    const-string p3, "variant"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->T:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_b
    const/16 p3, 0xb

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_c

    invoke-virtual {p5}, LTb/a;->i()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p5}, LTb/a;->h()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const-string p4, "resolution"

    invoke-virtual {p1, p4, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_c
    return-void
.end method
