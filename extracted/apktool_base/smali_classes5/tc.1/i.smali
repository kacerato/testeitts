.class public Ltc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slide1",
            "slide2"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_2

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_2
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    iget-object v3, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v0, v2}, Ltc/i;->b(FF)F

    move-result v0

    iput v0, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_4
    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_5

    iget-object v3, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v0, v2}, Ltc/i;->c(FF)F

    move-result v0

    iput v0, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    :goto_0
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_6

    iget-object p1, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_6
    cmpl-float v0, p1, v1

    if-lez v0, :cond_9

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float v0, p2, v1

    if-nez v0, :cond_7

    iget-object p1, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_7
    cmpl-float v0, p2, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, p1, p2}, Ltc/i;->b(FF)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_8
    iget-object p1, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_9
    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_a

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, p1, p2}, Ltc/i;->c(FF)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_a
    iget-object p1, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object v0, p0, Ltc/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public final b(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "one",
            "second"
        }
    .end annotation

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public final c(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "one",
            "second"
        }
    .end annotation

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Ltc/i;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/i;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object v0, p0, Ltc/i;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public final e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slide1",
            "slide2"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
