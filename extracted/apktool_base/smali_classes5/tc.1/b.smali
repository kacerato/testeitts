.class public Ltc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltc/b;->b:Z

    iput-boolean v0, p0, Ltc/b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Ltc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ltc/b;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Ltc/b;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mouse"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/b;->c:Z

    return-void
.end method

.method public e(FF)V
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

    iget-object v0, p0, Ltc/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/b;->b:Z

    return-void
.end method
