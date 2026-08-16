.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    }
.end annotation


# static fields
.field public static final X:Ljava/lang/String; = "SoundPlayer"

.field public static final Y:Ljava/lang/Class;


# instance fields
.field public E:Ljava/io/File;

.field public F:Z

.field public G:Z

.field public H:F

.field public I:F

.field public J:LFc/a;

.field public final K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

.field public M:LJAVARuntime/GizmoObject;

.field public N:LJAVARuntime/GizmoObject;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public final R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile S:Z

.field public transient T:Z

.field public U:Z

.field public final V:Lib/h;

.field public W:LJAVARuntime/Component;

.field private destroyOnFinish:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public diameter:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private loop:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pitch:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public playOnStart:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private speed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private volume:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Y:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$h;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    const-string v0, "SoundPlayer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    const/high16 v2, 0x41a00000    # 20.0f

    .line 4
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    .line 5
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    .line 7
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    .line 9
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    .line 10
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->N:LJAVARuntime/GizmoObject;

    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->O:Z

    .line 14
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->P:Z

    .line 15
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    .line 16
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 20
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 21
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 22
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 23
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v3, 0x3f400000    # 0.75f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 24
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 25
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 26
    const-string v0, "SoundPlayer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    const/high16 v2, 0x41a00000    # 20.0f

    .line 29
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    .line 30
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    .line 31
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    .line 32
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    .line 33
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    .line 34
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    .line 35
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 36
    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->N:LJAVARuntime/GizmoObject;

    const/4 v2, 0x0

    .line 38
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->O:Z

    .line 39
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->P:Z

    .line 40
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    .line 41
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    .line 43
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    .line 44
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    .line 45
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 46
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 47
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 48
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 49
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 50
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 51
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "loop"
        }
    .end annotation

    .line 52
    const-string v0, "SoundPlayer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    const/high16 v2, 0x41a00000    # 20.0f

    .line 55
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    .line 56
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    .line 57
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    .line 58
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    .line 59
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    .line 60
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    .line 61
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 62
    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->N:LJAVARuntime/GizmoObject;

    const/4 v2, 0x0

    .line 64
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->O:Z

    .line 65
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->P:Z

    .line 66
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    .line 69
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    .line 70
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    .line 71
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    .line 72
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 73
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 74
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 75
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v0, 0x3e800000    # 0.25f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 76
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v0, 0x3f400000    # 0.75f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 77
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 78
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromInit"
        }
    .end annotation

    .line 79
    const-string p1, "SoundPlayer"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 82
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    .line 83
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    .line 84
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    .line 85
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    .line 86
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    .line 87
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    .line 88
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 89
    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->N:LJAVARuntime/GizmoObject;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->O:Z

    .line 92
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->P:Z

    .line 93
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    .line 96
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->syncGlobalPosition()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->ensureEmitterForCurrentSource()V

    return-void
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    return p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterStateAndProperties()V

    return-void
.end method

.method private applyEmitterProperties()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getPitch()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setPitch(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setSpeed(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isEffectiveLoop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setLoop(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    return-void
.end method

.method private applyEmitterState()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    return-void
.end method

.method private applyEmitterStateAndProperties()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterState()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method private applyEmitterVolumes()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_2D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->T(FFF)V

    return-void
.end method

.method private applyGameStatePause(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "running",
            "paused"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pause()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->play()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->Q:Z

    :cond_3
    return-void
.end method

.method private attachEmitterListeners(LFc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->P(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$b;)V

    return-void
.end method

.method private destroyEmitter()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LFc/a;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    :cond_0
    return-void
.end method

.method private ensureEmitterForCurrentSource()V
    .locals 9

    const-string v0, "I/Performance is being affected by this exception, resolve it!!"

    const-string v1, "] "

    const-string v2, "detached"

    const-string v3, "SoundPlayer ["

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    const-string v6, "@IO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/high16 v7, 0x40a00000    # 5.0f

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyEmitter()V

    return-void

    :catch_0
    move-exception v4

    goto/16 :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_3

    :cond_1
    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v5

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->durationSeconds:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_2

    move v4, v6

    :cond_2
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, LFc/a;->getFile()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {v6}, LFc/a;->e0()Z

    move-result v6

    if-eq v6, v4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyEmitter()V

    :cond_4
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v6, :cond_6

    if-eqz v4, :cond_5

    new-instance v4, LFc/d;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    invoke-static {v4}, LHc/c;->n(Ljava/io/File;)LFc/a;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->onEmitterReady()V

    :cond_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v5

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->durationSeconds:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_8

    move v4, v6

    :cond_8
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, LFc/a;->getFile()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {v6}, LFc/a;->e0()Z

    move-result v6

    if-eq v6, v4, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyEmitter()V

    :cond_a
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-nez v6, :cond_e

    if-eqz v4, :cond_b

    new-instance v4, LFc/d;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, LFc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-static {v4}, LHc/c;->o(Ljava/lang/String;)LFc/a;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->onEmitterReady()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LJ4/d;->E1()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ4/d;->b2(Ljava/lang/String;)V

    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->b2(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LJ4/d;->E1()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FileNotFoundException"

    invoke-static {v1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ4/d;->b2(Ljava/lang/String;)V

    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->b2(Ljava/lang/String;)V

    :cond_e
    :goto_4
    return-void

    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyEmitter()V

    return-void
.end method

.method private markEmitterSourceDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    return-void
.end method

.method private onEmitterReady()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->attachEmitterListeners(LFc/a;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterStateAndProperties()V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    invoke-static {}, Lc8/b;->i()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyGameStatePause(ZZ)V

    return-void
.end method

.method private refreshEmitterSourceOnEngine()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncGlobalPosition()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private triggerOnStarted(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "running",
            "paused"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->T:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->triggerPlayOnStart()V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->T:Z

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyGameStatePause(ZZ)V

    :cond_1
    return-void
.end method

.method private triggerPlayOnStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->play()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->G:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->playOnStart:Z

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->k(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createGizmo()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_1

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    iget-object v0, v0, LD8/a;->n:LD8/b;

    new-instance v1, LJAVARuntime/GizmoObject;

    invoke-direct {v1}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v3, v0, LD8/b;->d:Ljava/lang/String;

    invoke-static {v3, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    invoke-virtual {v2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v2

    invoke-virtual {v3, v2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v2, "SoundPlayer"

    const-string v3, "Failed to load gizmo texture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    const v3, 0x3e19999a    # 0.15f

    invoke-virtual {v2, v3}, LJAVARuntime/GizmoTransform;->setScale(F)V

    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, LD8/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    invoke-virtual {v2, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    :cond_1
    :goto_2
    return-void
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOUND_PLAYER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalPositionForAudio(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070224

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a1

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$l;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOUND_FILE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".imvs"

    const-string v7, ".sound"

    const-string v8, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    filled-new-array {v8, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$m;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLAY_ON_START:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$n;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DIAMETER:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v2, v3, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "diameter"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$o;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOP:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$p;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    const-string v7, "Destroy On Finish"

    invoke-direct {v2, v4, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SPEED:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v4, "speed"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$b;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    const-string v5, "Volume "

    sget-object v6, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v2, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v4, "volume"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$c;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PITCH:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LC5/b$a;->SLFloatSlider:LC5/b$a;

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    const-string v4, "pitch"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DISTANCE_CURVE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v1, v2, p1}, LJ9/c;->a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Landroid/content/Context;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x3

    new-array v2, v2, [LC5/b;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STOP:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->ButtonMatchParent:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    const-string v3, ""

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLAY:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->O:Z

    const v1, 0x7f050165

    if-eqz p1, :cond_2

    new-instance p1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOADING_SOUND_IN_BACKGROUND:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v4, v1}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundListener;->getFirstListener()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundListener;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOUND_PLAYING_IN_3D_SPACE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v4, v1}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getLeftVolume()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    return v0
.end method

.method public getMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    return v0
.end method

.method public getRightVolume()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SoundPlayer"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SoundPlayer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getVolume()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isDestroyOnFinish()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    return v0
.end method

.method public isEffectiveLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPausedByEngine()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->ensureEmitterForCurrentSource()V

    :cond_0
    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Y()V

    :try_start_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->F()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->syncGlobalPosition()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_3D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->ensureEmitterForCurrentSource()V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    invoke-static {}, Lc8/b;->i()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->triggerOnStarted(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDetach()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->V:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->G:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    invoke-virtual {v1}, LFc/a;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    :cond_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->F:Z

    return-void
.end method

.method public onGameStateChanged(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "running",
            "paused"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onGameStateChanged(ZZ)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->S:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->ensureEmitterForCurrentSource()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->triggerOnStarted(ZZ)V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->U:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->U:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->triggerOnStarted(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->Q(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->U:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterState()V

    return-void
.end method

.method public pauseByEngine()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterState()V

    return-void
.end method

.method public play()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->ensureEmitterForCurrentSource()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterStateAndProperties()V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPlayer: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->J:LFc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setDestroyOnFinish(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destroyOnFinish"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->destroyOnFinish:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public setDistanceCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceCurve"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->distanceCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Distance curve can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->markEmitterSourceDirty()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->refreshEmitterSourceOnEngine()V

    :cond_3
    return-void
.end method

.method public setLeftVolume(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftVolume"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->loop:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public setMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->Play_2D:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setStereoVolumes(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundListener;->getFirstListener()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundListener;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setStereoVolumes(FF)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public setPitch(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pitch:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public setRightVolume(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightVolume"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    return-void
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->W:LJAVARuntime/Component;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->speed:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public setStereoVolumes(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftVolume",
            "rightVolume"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->H:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->I:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterVolumes()V

    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->volume:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterProperties()V

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->L:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->applyEmitterState()V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->W:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SoundPlayer;

    invoke-direct {v0, p0}, LJAVARuntime/SoundPlayer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->W:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public unPauseByEngine()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOnSelectedHierarchy()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->createGizmo()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    if-eqz v0, :cond_0

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->M:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_0
    return-void
.end method

.method public useIOFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    goto :goto_0

    :cond_0
    const-string v0, "@IO"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->file:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->E:Ljava/io/File;

    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->markEmitterSourceDirty()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->refreshEmitterSourceOnEngine()V

    :cond_1
    return-void
.end method
