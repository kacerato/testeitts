.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final F:Ljava/lang/String; = "ParticleGroup"

.field public static final G:Ljava/lang/Class;


# instance fields
.field public E:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;->G:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ParticleGroup"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Particle group"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701cf

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ParticleGroup"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ParticleGroup:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;->E:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;->E:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ParticleGroup;

    invoke-direct {v0, p0}, LJAVARuntime/ParticleGroup;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleGroup;->E:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
