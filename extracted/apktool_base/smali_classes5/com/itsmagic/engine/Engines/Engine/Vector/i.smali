.class public Lcom/itsmagic/engine/Engines/Engine/Vector/i;
.super Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;
    }
.end annotation


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/i$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/i;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "instance can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "listener"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "instance can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    return v0
.end method

.method public setX(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

    invoke-interface {v3, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->d(FFF)V

    return p1
.end method

.method public setY(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

    invoke-interface {v3, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->d(FFF)V

    return p1
.end method

.method public setZ(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;

    invoke-interface {v3, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->d(FFF)V

    return p1
.end method
