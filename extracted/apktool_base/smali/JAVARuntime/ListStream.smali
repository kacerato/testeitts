.class public final LJAVARuntime/ListStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Lists"
    }
.end annotation


# static fields
.field public static final FIXED_THREADS:I = 0x19d

.field public static final HALF_THREADS:I = 0x19b

.field public static final MAX_THREADS:I = 0x19c


# instance fields
.field private transient list:Ljava/util/List;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient listStreamListener:LJAVARuntime/ListStreamListener;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient threadsCount:I
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient threadsPriority:I
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient threadsSequence:I
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient userData:Ljava/lang/Object;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;IILJAVARuntime/ListStreamListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userData",
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 55
    iput v0, p0, LJAVARuntime/ListStream;->threadsCount:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    const/4 v0, 0x5

    .line 57
    iput v0, p0, LJAVARuntime/ListStream;->threadsPriority:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 59
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iput-object p1, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    .line 62
    iput p3, p0, LJAVARuntime/ListStream;->threadsSequence:I

    .line 63
    iput p4, p0, LJAVARuntime/ListStream;->threadsCount:I

    .line 64
    iput-object p5, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    if-lez p4, :cond_0

    .line 65
    invoke-direct {p0}, LJAVARuntime/ListStream;->start()V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "threadsCount can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;ILJAVARuntime/ListStreamListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userData",
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, LJAVARuntime/ListStream;->threadsCount:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    const/4 v0, 0x5

    .line 28
    iput v0, p0, LJAVARuntime/ListStream;->threadsPriority:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 30
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    .line 33
    iput p3, p0, LJAVARuntime/ListStream;->threadsSequence:I

    .line 34
    iput-object p4, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    .line 35
    invoke-direct {p0}, LJAVARuntime/ListStream;->start()V

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, LJAVARuntime/ListStream;->threadsCount:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, LJAVARuntime/ListStream;->threadsPriority:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "List can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;IILJAVARuntime/ListStreamListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 40
    iput v0, p0, LJAVARuntime/ListStream;->threadsCount:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    const/4 v0, 0x5

    .line 42
    iput v0, p0, LJAVARuntime/ListStream;->threadsPriority:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iput-object p1, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    .line 46
    iput p2, p0, LJAVARuntime/ListStream;->threadsSequence:I

    .line 47
    iput p3, p0, LJAVARuntime/ListStream;->threadsCount:I

    .line 48
    iput-object p4, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    if-lez p3, :cond_0

    .line 49
    invoke-direct {p0}, LJAVARuntime/ListStream;->start()V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "threadsCount can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;ILJAVARuntime/ListStreamListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, LJAVARuntime/ListStream;->threadsCount:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    const/4 v0, 0x5

    .line 15
    iput v0, p0, LJAVARuntime/ListStream;->threadsPriority:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iput-object p1, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    .line 19
    iput p2, p0, LJAVARuntime/ListStream;->threadsSequence:I

    .line 20
    iput-object p3, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    .line 21
    invoke-direct {p0}, LJAVARuntime/ListStream;->start()V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(LJAVARuntime/ListStream;)I
    .locals 0

    iget p0, p0, LJAVARuntime/ListStream;->threadsSequence:I

    return p0
.end method

.method public static synthetic access$100(LJAVARuntime/ListStream;)I
    .locals 0

    iget p0, p0, LJAVARuntime/ListStream;->threadsCount:I

    return p0
.end method

.method public static synthetic access$200(LJAVARuntime/ListStream;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJAVARuntime/ListStream;->list:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(LJAVARuntime/ListStream;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJAVARuntime/ListStream;->userData:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(LJAVARuntime/ListStream;)LJAVARuntime/ListStreamListener;
    .locals 0

    iget-object p0, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    return-object p0
.end method

.method private start()V
    .locals 2

    new-instance v0, LJAVARuntime/Thread;

    new-instance v1, LJAVARuntime/ListStream$1;

    invoke-direct {v1, p0}, LJAVARuntime/ListStream$1;-><init>(LJAVARuntime/ListStream;)V

    invoke-direct {v0, v1}, LJAVARuntime/Thread;-><init>(LJAVARuntime/Runnable;)V

    invoke-virtual {v0}, LJAVARuntime/Thread;->start()V

    return-void
.end method


# virtual methods
.method public setListStreamListener(LJAVARuntime/ListStreamListener;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "listStreamListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listStreamListener"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ListStream;->listStreamListener:LJAVARuntime/ListStreamListener;

    return-void
.end method

.method public setThreadsCount(I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "threadsCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadsCount"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/ListStream;->threadsCount:I

    return-void
.end method

.method public setThreadsSequence(I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "threadsSequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadsSequence"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/ListStream;->threadsSequence:I

    return-void
.end method
