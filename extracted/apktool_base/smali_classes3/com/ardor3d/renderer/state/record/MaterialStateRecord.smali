.class public Lcom/ardor3d/renderer/state/record/MaterialStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public backAmbient:Lcom/ardor3d/math/ColorRGBA;

.field public backDiffuse:Lcom/ardor3d/math/ColorRGBA;

.field public backEmissive:Lcom/ardor3d/math/ColorRGBA;

.field public backShininess:F

.field public backSpecular:Lcom/ardor3d/math/ColorRGBA;

.field public colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

.field public frontAmbient:Lcom/ardor3d/math/ColorRGBA;

.field public frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

.field public frontEmissive:Lcom/ardor3d/math/ColorRGBA;

.field public frontShininess:F

.field public frontSpecular:Lcom/ardor3d/math/ColorRGBA;

.field public tempColorBuff:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontShininess:F

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    iput v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backShininess:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->tempColorBuff:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontShininess:F

    iget-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v2, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iput v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backShininess:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    return-void
.end method

.method public isSetColor(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/renderer/state/record/MaterialStateRecord;)Z
    .locals 6

    sget-object p4, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const-string v0, "bad isSetColor"

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, p4, :cond_4

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    sget-object p4, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, p4, :cond_d

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_b

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_5

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v4, v5

    :cond_6
    return v4

    :cond_7
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v4, v5

    :cond_8
    return v4

    :cond_9
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v4, v5

    :cond_a
    return v4

    :cond_b
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v4, v5

    :cond_c
    return v4

    :cond_d
    sget-object p4, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, p4, :cond_12

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_11

    if-eq p1, v3, :cond_10

    if-eq p1, v2, :cond_f

    if-eq p1, v1, :cond_e

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_0
    return v4
.end method

.method public isSetShininess(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;FLcom/ardor3d/renderer/state/record/MaterialStateRecord;)Z
    .locals 2

    sget-object p3, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontShininess:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object p3, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, p3, :cond_3

    iget p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontShininess:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backShininess:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    sget-object p3, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, p3, :cond_5

    iget p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backShininess:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    :cond_5
    return v1
.end method

.method public resetColorsForCM(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;)V
    .locals 8

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_6

    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    :cond_6
    :goto_0
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_d

    :cond_7
    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v6, v6, v6, v6}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    :cond_d
    :goto_1
    return-void
.end method

.method public setColor(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 7

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const-string v1, "bad setColor"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_5

    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_5
    :goto_0
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_b

    :cond_6
    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord$1;->$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    sget-object p1, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;->backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_b
    :goto_1
    return-void
.end method
