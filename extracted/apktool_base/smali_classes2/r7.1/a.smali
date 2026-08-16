.class public Lr7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lr7/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "verticeIndex"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lr7/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    .line 6
    iput p2, p0, Lr7/a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    .locals 1

    iget-object v0, p0, Lr7/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lr7/a;->b:I

    return v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    iput-object p1, p0, Lr7/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticeIndex"
        }
    .end annotation

    iput p1, p0, Lr7/a;->b:I

    return-void
.end method
