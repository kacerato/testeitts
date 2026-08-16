.class public LJAVARuntime/OH3LevelFloatArray;
.super LJAVARuntime/OHFloatDataBase;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:Lvc/g;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "countX",
            "countY",
            "countZ"
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
            "countZ"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, LJAVARuntime/OH3LevelFloatArray;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "countX",
            "countY",
            "countZ",
            "fill"
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
            "countX",
            "countY",
            "countZ",
            "fill"
        }
    .end annotation

    .line 7
    new-instance p4, Lvc/g;

    invoke-direct {p4, p1, p2, p3}, Lvc/g;-><init>(III)V

    invoke-direct {p0, p4}, LJAVARuntime/OH3LevelFloatArray;-><init>(Lvc/g;)V

    .line 8
    iget-object p1, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {p1, p0}, Lvc/k;->r(LJAVARuntime/OHFloatDataBase;)V

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

    .line 4
    invoke-direct {p0, p1}, LJAVARuntime/OHFloatDataBase;-><init>(LK8/a;)V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lvc/g;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/OHFloatDataBase;-><init>(Lvc/k;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    return-void
.end method


# virtual methods
.method public get(III)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {v0, p1, p2, p3}, Lvc/g;->v(III)F

    move-result p1

    return p1
.end method

.method public getSizeX()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {v0}, Lvc/g;->w()I

    move-result v0

    return v0
.end method

.method public getSizeY()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {v0}, Lvc/g;->x()I

    move-result v0

    return v0
.end method

.method public getSizeZ()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {v0}, Lvc/g;->y()I

    move-result v0

    return v0
.end method

.method public set(IIIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "value"
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
            "x",
            "y",
            "z",
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OH3LevelFloatArray;->buffer:Lvc/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvc/g;->z(IIIF)V

    return-void
.end method
