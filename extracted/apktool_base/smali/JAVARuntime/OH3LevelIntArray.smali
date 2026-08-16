.class public LJAVARuntime/OH3LevelIntArray;
.super LJAVARuntime/OHIntDataBase;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:Lvc/h;
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
    invoke-direct {p0, p1, p2, p3, v0}, LJAVARuntime/OH3LevelIntArray;-><init>(IIIZ)V

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
    new-instance p4, Lvc/h;

    invoke-direct {p4, p1, p2, p3}, Lvc/h;-><init>(III)V

    invoke-direct {p0, p4}, LJAVARuntime/OH3LevelIntArray;-><init>(Lvc/h;)V

    .line 8
    iget-object p1, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {p1, p0}, Lvc/h;->z(LJAVARuntime/OH3LevelIntArray;)V

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
    invoke-direct {p0, p1}, LJAVARuntime/OHIntDataBase;-><init>(LK8/a;)V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lvc/h;)V
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
    invoke-direct {p0, p1}, LJAVARuntime/OHIntDataBase;-><init>(Lvc/l;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    return-void
.end method


# virtual methods
.method public get(III)I
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

    iget-object v0, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {v0, p1, p2, p3}, Lvc/h;->u(III)I

    move-result p1

    return p1
.end method

.method public getSizeX()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->v()I

    move-result v0

    return v0
.end method

.method public getSizeY()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->w()I

    move-result v0

    return v0
.end method

.method public getSizeZ()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->x()I

    move-result v0

    return v0
.end method

.method public set(IIII)V
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

    iget-object v0, p0, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvc/h;->y(IIII)V

    return-void
.end method
