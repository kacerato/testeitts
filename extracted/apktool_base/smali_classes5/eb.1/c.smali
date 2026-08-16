.class public Leb/c;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:I

.field public d:F

.field public e:Leb/d;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;


# direct methods
.method public constructor <init>(FLeb/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delay",
            "invokeListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Leb/c;->b:F

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Leb/c;->c:I

    .line 4
    iput v0, p0, Leb/c;->d:F

    if-eqz p2, :cond_0

    .line 5
    iput p1, p0, Leb/c;->b:F

    .line 6
    iput-object p2, p0, Leb/c;->e:Leb/d;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILeb/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frames",
            "invokeListener"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Leb/c;->b:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Leb/c;->c:I

    .line 11
    iput v0, p0, Leb/c;->d:F

    if-eqz p2, :cond_0

    .line 12
    iput p1, p0, Leb/c;->c:I

    .line 13
    iput-object p2, p0, Leb/c;->e:Leb/d;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d()F
    .locals 1

    iget v0, p0, Leb/c;->b:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Leb/c;->c:I

    return v0
.end method

.method public f()Leb/d;
    .locals 1

    iget-object v0, p0, Leb/c;->e:Leb/d;

    return-object v0
.end method

.method public getTimer()F
    .locals 1

    iget v0, p0, Leb/c;->d:F

    return v0
.end method

.method public h(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    iput p1, p0, Leb/c;->b:F

    return-void
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frames"
        }
    .end annotation

    iput p1, p0, Leb/c;->c:I

    return-void
.end method

.method public j(Leb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invokeListener"
        }
    .end annotation

    iput-object p1, p0, Leb/c;->e:Leb/d;

    return-void
.end method

.method public setTimer(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    iput p1, p0, Leb/c;->d:F

    return-void
.end method
