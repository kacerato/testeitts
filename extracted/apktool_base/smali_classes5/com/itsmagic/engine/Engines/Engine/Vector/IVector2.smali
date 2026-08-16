.class public Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;
.super LIc/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public x:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LIc/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->y:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->x:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LIc/m;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->y:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->x:I

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

    .line 3
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->x:I

    .line 5
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/IVector2;->y:I

    return-void
.end method
