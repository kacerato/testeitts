.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;
    }
.end annotation


# static fields
.field public static final Y:Ljava/lang/String; = "VideoPlayer"

.field public static final Z:Ljava/lang/Class;


# instance fields
.field public E:Z

.field public F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

.field public G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:I

.field public K:I

.field public L:I

.field public M:Z

.field public N:F

.field public O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

.field public P:Lub/q;

.field public Q:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

.field public R:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

.field public S:Z

.field public T:Z

.field public U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final V:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final W:Ljava/lang/Runnable;

.field public X:LJAVARuntime/Component;

.field private chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private chromaKeyEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private chromaKeyTolerance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public loop:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public outTextureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public playOnStart:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public videoFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->Z:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "VideoPlayer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->playOnStart:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 5
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    const v0, 0x3ca3d70a    # 0.02f

    .line 6
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    const/16 v0, 0x1e0

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    const/16 v0, 0x10e

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    .line 9
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->STOPPED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->J:I

    .line 11
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->K:I

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->L:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 13
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->N:F

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->W:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoFile",
            "outTextureFile"
        }
    .end annotation

    .line 16
    const-string v0, "VideoPlayer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->playOnStart:Z

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 20
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    const v0, 0x3ca3d70a    # 0.02f

    .line 21
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    const/16 v0, 0x1e0

    .line 22
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    const/16 v0, 0x10e

    .line 23
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    .line 24
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->STOPPED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->J:I

    .line 26
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->K:I

    const/high16 v0, -0x80000000

    .line 27
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->L:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 28
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->N:F

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->W:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lub/q;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    return p0
.end method

.method private getFile()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->isAsset(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@@ASSET@@"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, LB9/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->E:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static isAsset(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@compiled@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v2, "@@ASSET@@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private releaseNativeTextures()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->Q:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->Q:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->R:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->destroyImmediate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->R:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    :cond_1
    return-void
.end method

.method private resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method private resolveChromaKeyColorInt()I
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return v0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    .line 5
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->playOnStart:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->playOnStart:Z

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    .line 12
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->E:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->E:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getChromaKeyTolerance()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    return v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070259

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VIDEO:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".imv"

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OUTPUT_TEXTURE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ".ivo"

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$g;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WIDTH:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    const-string v3, "width"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HEIGHT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_1

    const-string v3, "height"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$i;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLAY_ON_START:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$j;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOP:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$k;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    const-string v3, "Chroma key enabled"

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    const-string v3, "Chroma key color"

    sget-object v4, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    const-string v2, "Chroma key tolerance"

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoPlayer"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VideoPlayer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isChromaKeyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PAUSED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->STOPPED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->I:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->J:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->K:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lub/q;->I0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->releaseNativeTextures()V

    return-void
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PAUSED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    return-void
.end method

.method public play()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 13
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    const/16 p2, 0x10

    const/16 v0, 0x1000

    invoke-static {p2, p1, v0}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    invoke-static {p2, p1, v0}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->H:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->I:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->J:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    if-ne p1, v2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->K:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->M:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    if-ne p1, v2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->N:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->L:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColorInt()I

    move-result v2

    if-eq p1, v2, :cond_7

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lub/q;->I0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->releaseNativeTextures()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->H:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->I:Ljava/lang/String;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->J:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->K:I

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->M:Z

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->N:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColorInt()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->L:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    invoke-static {p1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    check-cast p1, Lub/q;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->width:I

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->height:I

    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v9

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v10

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resolveChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v11

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;IIIZIIIF)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l()I

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->k()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->R:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    invoke-virtual {p1, v2}, Lub/q;->I0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l()I

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->k()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->Q:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->P:Lub/q;

    invoke-virtual {p1, v2}, Lub/q;->I0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "VIDEOPLAYER:FAILED: TEXTURE NOT RENDERABLE"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "VIDEOPLAYER:FAILED: OUTTEXTURE NULL"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "VIDEOPLAYER:FAILED: FILE DOESNT EXISTS"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->j()LB9/c;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p1, LB9/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :try_start_1
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->R:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->W:Ljava/lang/Runnable;

    invoke-virtual {v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Z0(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "RGBA texture is not initialized"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->Q:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->W:Ljava/lang/Runnable;

    invoke-virtual {v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "RGB texture is not initialized"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v2, :cond_b

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_b
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->U:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v(Z)V

    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PAUSED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-ne p1, v0, :cond_e

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->S:Z

    if-eqz p1, :cond_e

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->S:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->play()V

    :cond_e
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->T:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->playOnStart:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->play()V

    :cond_f
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->T:Z

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-ne p1, p2, :cond_11

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->S:Z

    if-nez p1, :cond_11

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->S:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->pause()V

    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-eq p1, p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_17

    if-eq p1, v1, :cond_15

    const/4 p2, 0x2

    if-eq p1, p2, :cond_12

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PAUSED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-ne p1, p2, :cond_13

    :try_start_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_13
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->STOPPED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-eq p1, p2, :cond_14

    if-nez p1, :cond_19

    :cond_14
    :try_start_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-eq p1, p2, :cond_16

    if-nez p1, :cond_19

    :cond_16
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->o()V

    goto :goto_5

    :cond_17
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-eq p1, p2, :cond_18

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PAUSED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    if-eq p1, p2, :cond_18

    if-nez p1, :cond_19

    :cond_18
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->y()V

    :cond_19
    :goto_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    :cond_1a
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    const-string v1, " TO "

    const-string v2, "VideoPlayer: REPLACING "

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->PLAYING:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->O:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Video is not loaded!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChromaKeyColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chromaKeyColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setChromaKeyEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chromaKeyEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyEnabled:Z

    return-void
.end method

.method public setChromaKeyTolerance(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chromaKeyTolerance"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->chromaKeyTolerance:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->X:LJAVARuntime/Component;

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;->STOPPED:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$l;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->X:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/VideoPlayer;

    invoke-direct {v0, p0}, LJAVARuntime/VideoPlayer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->X:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
