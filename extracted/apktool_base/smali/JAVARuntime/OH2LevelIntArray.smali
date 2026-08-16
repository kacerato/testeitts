.class public LJAVARuntime/OH2LevelIntArray;
.super LJAVARuntime/OHIntDataBase;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field private transient countX:I

.field private transient countY:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "countX",
            "countY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "countX",
            "countY"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, LJAVARuntime/OH2LevelIntArray;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "countX",
            "countY",
            "fill"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countX",
            "countY",
            "fill"
        }
    .end annotation

    mul-int v0, p2, p1

    .line 4
    invoke-direct {p0, v0}, LJAVARuntime/OHIntDataBase;-><init>(I)V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    iput p1, p0, LJAVARuntime/OH2LevelIntArray;->countX:I

    .line 7
    iput p2, p0, LJAVARuntime/OH2LevelIntArray;->countY:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    move p2, p1

    .line 8
    :goto_0
    invoke-super {p0}, LJAVARuntime/OHIntDataBase;->capacity()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 9
    invoke-super {p0, p1}, LJAVARuntime/OHIntDataBase;->put(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/OHIntDataBase;-><init>(LK8/a;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method private determineIndex(II)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, LJAVARuntime/OH2LevelIntArray;->countX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, LJAVARuntime/OH2LevelIntArray;->countY:I

    if-ge p2, v0, :cond_0

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public get(II)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    invoke-direct {p0, p1, p2}, LJAVARuntime/OH2LevelIntArray;->determineIndex(II)I

    move-result p1

    invoke-super {p0, p1}, LJAVARuntime/OHIntDataBase;->get(I)I

    move-result p1

    return p1
.end method

.method public set(III)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "value"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LJAVARuntime/OH2LevelIntArray;->determineIndex(II)I

    move-result p1

    invoke-super {p0, p1, p3}, LJAVARuntime/OHIntDataBase;->set(II)V

    return-void
.end method
