.class public LV9/r;
.super Ltc/h;
.source "SourceFile"


# instance fields
.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltc/h;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    iget-boolean v0, p0, LV9/r;->r:Z

    return v0
.end method

.method public N(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "performClick"
        }
    .end annotation

    iput-boolean p1, p0, LV9/r;->r:Z

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    invoke-super {p0}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-super {p0, p1}, Ltc/h;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    invoke-super {p0}, Ltc/h;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-super {p0, p1}, Ltc/h;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method
