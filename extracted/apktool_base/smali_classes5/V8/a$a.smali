.class public LV8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3b864000    # -999.0f

    iput v0, p0, LV8/a$a;->a:F

    iput v0, p0, LV8/a$a;->b:F

    iput v0, p0, LV8/a$a;->c:F

    iput v0, p0, LV8/a$a;->d:F

    iput v0, p0, LV8/a$a;->e:F

    return-void
.end method


# virtual methods
.method public a(FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fov",
            "minimalDistance",
            "maxDistance"
        }
    .end annotation

    iget v0, p0, LV8/a$a;->e:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, LV8/a$a;->c:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p0, LV8/a$a;->d:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iput p2, p0, LV8/a$a;->c:F

    iput p3, p0, LV8/a$a;->d:F

    iput p1, p0, LV8/a$a;->e:F

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "sw",
            "sh"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result p1

    iget v2, p0, LV8/a$a;->e:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    iget v2, p0, LV8/a$a;->c:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    iget v2, p0, LV8/a$a;->d:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    int-to-float v2, p2

    iget v3, p0, LV8/a$a;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    int-to-float v2, p3

    iget v3, p0, LV8/a$a;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iput v0, p0, LV8/a$a;->c:F

    iput v1, p0, LV8/a$a;->d:F

    iput p1, p0, LV8/a$a;->e:F

    int-to-float p1, p2

    iput p1, p0, LV8/a$a;->a:F

    int-to-float p1, p3

    iput p1, p0, LV8/a$a;->b:F

    const/4 p1, 0x1

    return p1
.end method
