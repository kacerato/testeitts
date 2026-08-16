.class public LJAVARuntime/NativeCharBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->setRuntime(LJAVARuntime/NativeCharBuffer;)V

    return-void
.end method

.method public static readFile(Ljava/io/File;)LJAVARuntime/NativeCharBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Loads a NativeCharBuffer from a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Carrega um NativeCharBuffer a partir de um arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->readFile(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->toJAVARuntime()LJAVARuntime/NativeCharBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Position(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->position(I)V

    return-void
.end method

.method public array()[C
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroy()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    return-void
.end method

.method public equalsNative(LJAVARuntime/NativeCharBuffer;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1
.end method

.method public equalsNativeIgnoreCase(LJAVARuntime/NativeCharBuffer;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNativeIgnoreCase(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1
.end method

.method public get(I)C
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->get(I)C

    move-result p1

    return p1
.end method

.method public getCapacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->getCapacity()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->getPosition()I

    move-result v0

    return v0
.end method

.method public indexOf(LJAVARuntime/NativeCharBuffer;)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->indexOf(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I

    move-result p1

    return p1
.end method

.method public position(I)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    mul-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->position(I)V

    return p1
.end method

.method public put(C)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put(C)V

    return-void
.end method

.method public put(LJAVARuntime/NativeCharBuffer;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p1, p1, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    return-void
.end method

.method public put([C)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put([C)V

    return-void
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Saves this NativeCharBuffer to a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Salva este NativeCharBuffer em um arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->saveToFile(Ljava/io/File;)V

    return-void
.end method

.method public set(IC)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(IC)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeCharBuffer;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p2, p2, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeCharBuffer;II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values",
            "start",
            "count"
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p2, p2, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void
.end method

.method public set(I[C)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    return-void
.end method

.method public set(I[CII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values",
            "start",
            "count"
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[CII)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->position(I)V

    return-void
.end method

.method public startsWith(LJAVARuntime/NativeCharBuffer;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeCharBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->startsWith(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1
.end method
