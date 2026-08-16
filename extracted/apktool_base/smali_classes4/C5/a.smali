.class public LC5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:LD5/h;

.field public h:LD5/g;

.field public i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public j:I

.field public k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/m;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:LJAVARuntime/Color;

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LC5/a;->c:Z

    .line 3
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 4
    iput-boolean v0, p0, LC5/a;->e:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LC5/a;->f:Z

    const v1, 0x7f07024f

    .line 6
    iput v1, p0, LC5/a;->j:I

    .line 7
    iput-boolean v0, p0, LC5/a;->k:Z

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LC5/a;->l:Ljava/util/List;

    .line 9
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LC5/a;->m:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LC5/a;->n:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LC5/a;->o:Ljava/util/List;

    .line 12
    iput v0, p0, LC5/a;->p:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, LC5/a;->q:LJAVARuntime/Color;

    .line 14
    iput-boolean v0, p0, LC5/a;->r:Z

    .line 15
    iput-boolean v0, p0, LC5/a;->t:Z

    .line 16
    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 18
    iput-boolean p2, p0, LC5/a;->c:Z

    .line 19
    invoke-virtual {p0, v1}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLD5/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enabled",
            "enableCallback"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, LC5/a;->c:Z

    .line 41
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 42
    iput-boolean v0, p0, LC5/a;->e:Z

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, LC5/a;->f:Z

    const v2, 0x7f07024f

    .line 44
    iput v2, p0, LC5/a;->j:I

    .line 45
    iput-boolean v1, p0, LC5/a;->k:Z

    .line 46
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->l:Ljava/util/List;

    .line 47
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->m:Ljava/util/List;

    .line 48
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->n:Ljava/util/List;

    .line 49
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->o:Ljava/util/List;

    .line 50
    iput v1, p0, LC5/a;->p:I

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, LC5/a;->q:LJAVARuntime/Color;

    .line 52
    iput-boolean v1, p0, LC5/a;->r:Z

    .line 53
    iput-boolean v1, p0, LC5/a;->t:Z

    .line 54
    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    .line 55
    iput-object p3, p0, LC5/a;->g:LD5/h;

    .line 56
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 57
    iput-boolean p2, p0, LC5/a;->c:Z

    .line 58
    invoke-virtual {p0, v2}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLD5/h;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enabled",
            "enableCallback",
            "editor"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, LC5/a;->c:Z

    .line 61
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 62
    iput-boolean v0, p0, LC5/a;->e:Z

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, LC5/a;->f:Z

    const v2, 0x7f07024f

    .line 64
    iput v2, p0, LC5/a;->j:I

    .line 65
    iput-boolean v1, p0, LC5/a;->k:Z

    .line 66
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->l:Ljava/util/List;

    .line 67
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->m:Ljava/util/List;

    .line 68
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->n:Ljava/util/List;

    .line 69
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->o:Ljava/util/List;

    .line 70
    iput v1, p0, LC5/a;->p:I

    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, LC5/a;->q:LJAVARuntime/Color;

    .line 72
    iput-boolean v1, p0, LC5/a;->r:Z

    .line 73
    iput-boolean v1, p0, LC5/a;->t:Z

    .line 74
    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    .line 75
    iput-object p3, p0, LC5/a;->g:LD5/h;

    .line 76
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 77
    iput-boolean p2, p0, LC5/a;->c:Z

    .line 78
    invoke-virtual {p0, p4}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLD5/h;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;LD5/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enabled",
            "enableCallback",
            "editor",
            "insComponentCallbacks"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, LC5/a;->c:Z

    .line 81
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 82
    iput-boolean v0, p0, LC5/a;->e:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, LC5/a;->f:Z

    const v2, 0x7f07024f

    .line 84
    iput v2, p0, LC5/a;->j:I

    .line 85
    iput-boolean v1, p0, LC5/a;->k:Z

    .line 86
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->l:Ljava/util/List;

    .line 87
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LC5/a;->m:Ljava/util/List;

    .line 88
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->n:Ljava/util/List;

    .line 89
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LC5/a;->o:Ljava/util/List;

    .line 90
    iput v1, p0, LC5/a;->p:I

    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, LC5/a;->q:LJAVARuntime/Color;

    .line 92
    iput-boolean v1, p0, LC5/a;->r:Z

    .line 93
    iput-boolean v1, p0, LC5/a;->t:Z

    .line 94
    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    .line 95
    iput-object p3, p0, LC5/a;->g:LD5/h;

    .line 96
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 97
    iput-boolean p2, p0, LC5/a;->c:Z

    .line 98
    invoke-virtual {p0, p4}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    .line 99
    iput-object p5, p0, LC5/a;->h:LD5/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enabled",
            "editor"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, LC5/a;->c:Z

    .line 22
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 23
    iput-boolean v0, p0, LC5/a;->e:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, LC5/a;->f:Z

    const v1, 0x7f07024f

    .line 25
    iput v1, p0, LC5/a;->j:I

    .line 26
    iput-boolean v0, p0, LC5/a;->k:Z

    .line 27
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LC5/a;->l:Ljava/util/List;

    .line 28
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LC5/a;->m:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LC5/a;->n:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LC5/a;->o:Ljava/util/List;

    .line 31
    iput v0, p0, LC5/a;->p:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, LC5/a;->q:LJAVARuntime/Color;

    .line 33
    iput-boolean v0, p0, LC5/a;->r:Z

    .line 34
    iput-boolean v0, p0, LC5/a;->t:Z

    .line 35
    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, LC5/a;->d:Z

    .line 37
    iput-boolean p2, p0, LC5/a;->c:Z

    .line 38
    invoke-virtual {p0, p3}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LC5/a;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, LC5/a;->g:LD5/h;

    iput-object v0, p0, LC5/a;->a:Ljava/lang/String;

    iput-object v0, p0, LC5/a;->h:LD5/g;

    invoke-virtual {p0, v0}, LC5/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, p0, LC5/a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    invoke-virtual {v2}, LC5/b;->c()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    invoke-virtual {v2}, LC5/b;->c()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, LC5/a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, LC5/a;->n:Ljava/util/List;

    iget-object v1, p0, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, LC5/a;->o:Ljava/util/List;

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .locals 1

    iget-object v0, p0, LC5/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, LC5/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    :cond_0
    iget-object v0, p0, LC5/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, LC5/a;->t:Z

    return v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor"
        }
    .end annotation

    iput-object p1, p0, LC5/a;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-void
.end method
