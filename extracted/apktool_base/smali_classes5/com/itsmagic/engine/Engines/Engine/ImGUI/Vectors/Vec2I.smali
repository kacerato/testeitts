.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private x:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private y:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->d()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(II)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    return-object v0
.end method

.method public b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localPosition"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->d()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>(II)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return v0
.end method

.method public h(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reset"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->x:I

    return-void
.end method

.method public k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->y:I

    return-void
.end method
