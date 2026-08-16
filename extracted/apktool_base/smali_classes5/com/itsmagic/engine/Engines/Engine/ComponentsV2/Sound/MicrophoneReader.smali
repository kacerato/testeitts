.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final O:Ljava/lang/String; = "MicrophoneReader"

.field public static final P:Ljava/lang/Class;

.field public static final Q:I = 0x10

.field public static final R:I = 0x2


# instance fields
.field public E:Landroid/media/AudioRecord;

.field public F:Z

.field public final G:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final I:Ljava/lang/Object;

.field public J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public K:I

.field public L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public M:I

.field public N:LJAVARuntime/Component;

.field private enableRecord:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->P:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "MicrophoneReader"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->I:Ljava/lang/Object;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->M:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->onPermissionGranted()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->askPermission()V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    return p1
.end method

.method private askPermission()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ensureBufferCapacity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCapacity()I

    move-result v0

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method

.method private ensureFrameCapacity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCapacity()I

    move-result v0

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->lambda$internalStartRecording$0(I)V

    return-void
.end method

.method private internalStartRecording()V
    .locals 9

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    new-instance v1, Landroid/media/AudioRecord;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v5

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v4, 0x1

    move-object v3, v1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, LJ4/d;->E1()V

    const-string v0, "Failed to start recording microphone audio, maybe device doesn\'t have any microphone?"

    invoke-static {v0}, LJ4/d;->M1(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ls9/a;

    invoke-direct {v3, p0, v0}, Ls9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    const-string v0, "Microphone recorder"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$internalStartRecording$0(I)V
    .locals 6

    new-array v0, p1, [S

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    invoke-virtual {v1, v0, v2, p1}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc8/b;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->I:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->ensureBufferCapacity(I)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    invoke-virtual {v4, v5, v0, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->E:Landroid/media/AudioRecord;

    :cond_3
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    return-void
.end method

.method private onPermissionGranted()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private stopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLength()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->M:I

    return v0
.end method

.method public getFramePCM()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public getFramePCMArray()[S
    .locals 4
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->M:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-array v0, v1, [S

    return-object v0

    :cond_0
    new-array v2, v0, [S

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I[SII)V

    :cond_1
    return-object v2
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070198

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V

    const-string v2, "Enable record"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-instance p1, LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NO_PERMISSION_TO_RECORD_AUDIO_GRANTED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getSampleRate()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MicrophoneReader"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->MicrophoneReader:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnableRecord()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    return v0
.end method

.method public onDetach()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->stopRecording()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->M:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public parallelUpdate()V
    .locals 5

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->askPermission()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->internalStartRecording()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->ensureFrameCapacity(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->L:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->J:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->M:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->K:I

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->F:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->stopRecording()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setEnableRecord(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableRecord"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->enableRecord:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->N:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->N:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MicrophoneReader;

    invoke-direct {v0, p0}, LJAVARuntime/MicrophoneReader;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->N:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
