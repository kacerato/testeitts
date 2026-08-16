.class public LJAVARuntime/ColorGradient$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ColorGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field private entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>()V

    iput-object v0, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v0

    return v0
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->e(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocation(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/ColorGradient$Point;->entry:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->f(F)V

    return-void
.end method
