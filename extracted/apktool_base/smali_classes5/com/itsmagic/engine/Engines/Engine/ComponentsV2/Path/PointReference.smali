.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public component:Lf9/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->b:I

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "component"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->b:I

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 14
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 15
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "component"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->gameObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->component:Lf9/a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->b:I

    return-void
.end method
