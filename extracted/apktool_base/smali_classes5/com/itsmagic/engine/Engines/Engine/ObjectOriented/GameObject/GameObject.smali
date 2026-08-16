.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
.super LIc/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;
    }
.end annotation


# instance fields
.field public allowAnimations:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final transient b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

.field public final transient c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public clonedByPrefab:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final transient d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public dontDestroyOnLoad:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final transient e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;",
            ">;"
        }
    .end annotation
.end field

.field private editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fg:Lcom/itsmagic/engine/Utils/FileGUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient g:Z

.field public groupSettings:Lgb/c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient i:Z

.field public transient j:Z

.field public transient k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final transient m:Lgb/g;

.field public transient n:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public o:Z

.field public objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient p:I

.field public q:LJAVARuntime/SpatialObject;

.field public r:LM7/k;

.field private selectable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private visible:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 2
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 11
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 12
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 13
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 14
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 16
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 17
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 18
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 20
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    .line 24
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    .line 25
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 26
    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 29
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 32
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 35
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 36
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 37
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 38
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 39
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 40
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 41
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 43
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 44
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 45
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 46
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 47
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 49
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 50
    invoke-static {}, LK8/a;->r()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    .line 53
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 54
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 109
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 112
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 114
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 115
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 116
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 117
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 118
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 119
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 120
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 121
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 123
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 124
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 125
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 126
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 127
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 129
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 130
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "component",
            "guid"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 285
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 288
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 289
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 290
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 291
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 292
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 293
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 294
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 295
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 296
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 297
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 298
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 299
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 300
    new-instance v3, Lgb/g;

    invoke-direct {v3}, Lgb/g;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 301
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 302
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 303
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 305
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 306
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 307
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 308
    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 234
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 237
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 238
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 239
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 240
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 241
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 242
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 243
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 244
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 245
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 246
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 247
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 248
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 249
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 250
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 251
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 252
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 254
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 255
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 256
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "component"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 158
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 161
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 163
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 164
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 165
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 166
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 167
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 168
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 169
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 170
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 172
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 173
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 174
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 175
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 176
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 178
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 179
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 180
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 57
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 60
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 63
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 64
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 65
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 66
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 67
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 68
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 69
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 71
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 72
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 73
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 74
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 75
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 77
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 78
    invoke-static {}, LK8/a;->r()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    .line 80
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    .line 81
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 82
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "transform"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 85
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 88
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 90
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 91
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 92
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 93
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 94
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 95
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 96
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 97
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 99
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 100
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 101
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 102
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 103
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 105
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 107
    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "transform",
            "component",
            "guid"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 259
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 260
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 262
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 263
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 264
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 265
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 266
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 267
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 268
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 269
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 270
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 271
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 272
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 273
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 274
    new-instance v3, Lgb/g;

    invoke-direct {v3}, Lgb/g;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 275
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 276
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 277
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 279
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 281
    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 282
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 283
    invoke-virtual {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "transform",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 208
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 211
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 212
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 213
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 214
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 215
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 216
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 217
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 218
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 219
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 220
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 222
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 223
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 224
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 225
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 226
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 228
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 230
    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 231
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "transform",
            "component"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 132
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 135
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 136
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 138
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 139
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 140
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 141
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 142
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 143
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 144
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 146
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 147
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 148
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 149
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 150
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 152
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 154
    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 155
    :goto_0
    array-length p1, p3

    if-ge v1, p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "component"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 183
    const-string v0, "Unamed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    .line 186
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    .line 187
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    .line 188
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    .line 189
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 190
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    .line 191
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    .line 192
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    .line 193
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    .line 194
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    .line 195
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    .line 197
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    .line 198
    new-instance v2, Lgb/g;

    invoke-direct {v2}, Lgb/g;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    .line 199
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n:Z

    .line 200
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    .line 201
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    .line 203
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 205
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static Q(Lcom/google/gson/JsonObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "ignoreGUID",
            "loadJavaComponents"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S(Lcom/google/gson/JsonObject;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcom/google/gson/JsonObject;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "ignoreGUID",
            "loadJavaComponents",
            "componentFilter"
        }
    .end annotation

    const-string v0, "serializedChildren"

    const-string v1, "childrens"

    const-string v2, "serializedComponents"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, p0, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v5, :cond_1

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2, v4, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->l(Lcom/google/gson/JsonObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    move-result-object v2

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v5, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    if-eqz v1, :cond_3

    move v2, v5

    :goto_1
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-static {v6, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S(Lcom/google/gson/JsonObject;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v6

    iput-object v4, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result p3

    if-ge v5, p3, :cond_4

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q(Lcom/google/gson/JsonObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    iput-object v4, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-object v4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static T(Ljava/lang/String;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "ignoreGUID",
            "loadJavaComponents"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->U(Ljava/lang/String;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static T1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    return-object v0
.end method

.method public static U(Ljava/lang/String;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "ignoreGUID",
            "loadJavaComponents",
            "componentFilter"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S(Lcom/google/gson/JsonObject;ZZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static k1(LJAVARuntime/ObjectFile;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/ObjectFile;->instantiate()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    return p1
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    return p0
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    return-void
.end method

.method public static o1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const-string v0, "Unnamed"

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public static p1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(Z)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-object v1
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "virtualCenter"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->G(Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;F)F

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;Z)Z

    :goto_1
    return-object v2
.end method

.method public A1(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->A1(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs B(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Function name can`t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported by groups"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B0()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    return v0
.end method

.method public B1(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "callUpdateView"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1
.end method

.method public C0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    return-object v0
.end method

.method public C1(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eq v0, p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_3
    return-void
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public D0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-object v0
.end method

.method public D1(Lcom/itsmagic/engine/Utils/FileGUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fg"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->fg:Lcom/itsmagic/engine/Utils/FileGUID;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D1(Lcom/itsmagic/engine/Utils/FileGUID;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public E()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->d()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_2

    iput-object v1, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->dontDestroyOnLoad:Z

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->dontDestroyOnLoad:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->groupSettings:Lgb/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lgb/c;->a()Lgb/c;

    move-result-object v0

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->groupSettings:Lgb/c;

    :cond_4
    return-object v1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public E0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    return-object v0
.end method

.method public E1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Name can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "centers",
            "radii"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->hasFocusBounding()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getFocusCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getFocusBounding()F

    move-result v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radius INFINITY at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localCenter INFINITY at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public F0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public final G(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "centers",
            "radii"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->hasRenderBounding()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getRenderCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getRenderBounding()F

    move-result v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radius INFINITY at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v6, v5

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localCenter INFINITY at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->G(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public G0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[E]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public G1(LJAVARuntime/SpatialObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q:LJAVARuntime/SpatialObject;

    return-void
.end method

.method public H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public H1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectable"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    return-void
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public I0(Ljava/lang/String;Landroid/content/Context;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context"
        }
    .end annotation

    new-instance p1, LC5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const-string v0, "Tag"

    sget-object v1, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {p1, p2, v0, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object p1
.end method

.method public J(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-object v0
.end method

.method public J1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectable"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->K1(ZZ)V

    return-void
.end method

.method public K(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public K0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->T()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->K0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K1(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectable",
            "callUpdateView"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->K1(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_3
    return-void
.end method

.method public L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->g(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public L0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public L1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    return-void
.end method

.method public M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->h(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public M0(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->o(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-void
.end method

.method public N()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->i()I

    move-result v0

    return v0
.end method

.method public N0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public N1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    return-void
.end method

.method public O()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->j()I

    move-result v0

    return v0
.end method

.method public O0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P1(ZZ)V

    return-void
.end method

.method public P(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->k(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P(Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public P0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P1(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "callUpdateView"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P1(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_3
    return-void
.end method

.method public Q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public Q1()V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public R0()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LW7/b;->f:LC8/a;

    if-eqz v1, :cond_0

    iget-object v2, v1, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public R1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public S1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->S()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public U0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final U1(II)V
    .locals 3
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

    const-string v0, "Invalid child at "

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n1()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N1()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public V()I
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W0()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public V0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result p1

    return p1
.end method

.method public V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Object A is not a child of this object"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->U1(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ObjectB can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ObjectA can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final W(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "c"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public W0()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->U0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v0

    return v0
.end method

.method public W1()LJAVARuntime/SpatialObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q:LJAVARuntime/SpatialObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SpatialObject;

    invoke-direct {v0, p0}, LJAVARuntime/SpatialObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q:LJAVARuntime/SpatialObject;

    :cond_0
    return-object v0
.end method

.method public X(LLb/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X(LLb/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public X0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    return v0
.end method

.method public X1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Y(LLb/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Y0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i:Z

    return v0
.end method

.method public Y1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->destroy()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y1()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n1()V

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->T()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    return-void
.end method

.method public Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z0()Z
    .locals 1

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Z1()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgb/e;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p0, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z1()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public a0(Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "deep"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a1()Z
    .locals 4

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    return v2

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->a1()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public b0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b1()Z
    .locals 3

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public c1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->groupSettings:Lgb/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public callFunction(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 6
    invoke-virtual {v2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Function name can`t be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported by groups"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs callFunction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Function name can`t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported by groups"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->o(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public deflateTopbarElements(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    if-eqz v0, :cond_0

    sget-object v1, Ld7/a;->s:Ld7/c;

    invoke-interface {v1, v0}, Ld7/c;->e(LM7/g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r:LM7/k;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->deflateTopbarElements(Landroid/content/Context;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lgb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public e0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public e1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    return v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t spawn a null object!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public f1()Z
    .locals 2

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f1()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public g0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public g1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-object v0
.end method

.method public getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ngameObject",
            "parent"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t spawn a null object!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ngameObject",
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->o(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->selectable:Z

    return v0
.end method

.method public inflateTopbarElements(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->inflateTopbarElements(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    return v0
.end method

.method public isGarbage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHierarchyActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ngameObject",
            "position",
            "parent"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public j0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->j0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public j1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->visible:Z

    return v0
.end method

.method public k0(Ljava/lang/Class;)LJAVARuntime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LJAVARuntime/Component;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->q(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Ljava/lang/Class;)LJAVARuntime/Component;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l0(Ljava/lang/Class;)LJAVARuntime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->q(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object p1

    return-object p1
.end method

.method public l1()V
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p:I

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    return-void
.end method

.method public m0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SGUID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1
.end method

.method public n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n1()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    :cond_1
    return-void
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onCollision(Lj9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->E(Lj9/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collision can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCollisionEnter(Lj9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->F(Lj9/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collision can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCollisionStop(Lj9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->G(Lj9/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collision can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyDown(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->H(Lcom/itsmagic/engine/Engines/Input/Key;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyDown(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKeyPressed(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->I(Lcom/itsmagic/engine/Engines/Input/Key;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyPressed(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKeyUp(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->J(Lcom/itsmagic/engine/Engines/Input/Key;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyUp(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iput-object p0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Child can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p0(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->v(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public posPhysics()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->K()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->posPhysics()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public posWheelPhysics()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->L()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->posWheelPhysics()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prePhysics()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->M()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->prePhysics()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public propagateEditorViewModes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf5/d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->propagateEditorViewModes(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iput-object p0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Child can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final q1()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;

    invoke-interface {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported by groups"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->x(Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public r1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D2()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->O(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public s1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->N()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->s1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$b;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public t0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Ljava/util/List;)Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public t1(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentEnables"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->enabled:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->i()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->g(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChangedInternal(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public u0(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported by groups"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D2()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public v1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "force"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported by groups"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public w0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p1, p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;
    .locals 8

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F(Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v7, v6, v4

    if-lez v7, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;F)F

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;Z)Z

    :goto_2
    return-object v2
.end method

.method public x0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)Z

    return-void
.end method

.method public x1()Lcom/google/gson/JsonElement;
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->R()Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "serializedComponents"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const-string v3, "serializedChildren"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "virtualCenter"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F(Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;F)F

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$f;Z)Z

    :goto_1
    return-object v2
.end method

.method public y0(Landroid/content/Context;LIc/k;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "dependency",
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->z(Landroid/content/Context;LIc/k;Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->y0(Landroid/content/Context;LIc/k;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowAnimations"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    return-void
.end method

.method public z()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;
    .locals 8

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->G(Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v7, v6, v4

    if-lez v7, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;F)F

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;Z)Z

    :goto_2
    return-object v2
.end method

.method public z0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    return-object v0
.end method

.method public z1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q1()V

    return-void
.end method
