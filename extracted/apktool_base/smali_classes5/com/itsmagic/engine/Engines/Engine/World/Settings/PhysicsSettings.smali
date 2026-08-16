.class public Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings$a;
    }
.end annotation


# instance fields
.field public b:LJAVARuntime/PhysicsSettings;

.field public gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxNumIterations:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    const v2, -0x3ee30a3d    # -9.81f

    invoke-direct {v0, v1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v0, 0xa

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->maxNumIterations:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    invoke-static {}, Lc8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v1, -0x3ee30a3d    # -9.81f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->maxNumIterations:I

    return v0
.end method

.method public d(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->gravity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Gravity can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxNumIterations"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->maxNumIterations:I

    return-void
.end method

.method public g()LJAVARuntime/PhysicsSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b:LJAVARuntime/PhysicsSettings;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PhysicsSettings;

    invoke-direct {v0, p0}, LJAVARuntime/PhysicsSettings;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b:LJAVARuntime/PhysicsSettings;

    :cond_0
    return-object v0
.end method
