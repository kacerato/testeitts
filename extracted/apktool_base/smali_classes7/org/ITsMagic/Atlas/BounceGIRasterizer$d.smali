.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I


# direct methods
.method public constructor <init>(FFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "emitterThreshold",
            "radiusMultiplier",
            "maxEmitterSamples"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->a:F

    iput p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->b:F

    iput p3, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->c:I

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    :cond_0
    sget-object v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/16 v1, 0x400

    const v2, 0x3ac49ba6    # 0.0015f

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    const v0, 0x3fcccccd    # 1.6f

    invoke-direct {p0, v2, v0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;-><init>(FFI)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v2, v0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;-><init>(FFI)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    const v0, 0x3f2e147b    # 0.68f

    invoke-direct {p0, v2, v0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;-><init>(FFI)V

    return-object p0
.end method
