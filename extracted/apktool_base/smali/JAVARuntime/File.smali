.class public LJAVARuntime/File;
.super Ljava/io/File;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation


# instance fields
.field private ignoreCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
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

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, LJAVARuntime/File;->ignoreCheck:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "parent",
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 27
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "ignoreCheck"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    iput-boolean p3, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 12
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "ignoreCheck"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    iput-boolean p2, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 8
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pathName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 16
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "parent",
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 23
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathname",
            "ignoreCheck"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 4
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 29
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, LJAVARuntime/File;->ignoreCheck:Z

    .line 31
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)LJAVARuntime/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefix",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, LJAVARuntime/File;

    invoke-static {p0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)LJAVARuntime/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "suffix",
            "directory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/File;

    invoke-static {p0, p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public compareTo(LJAVARuntime/File;)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public createNewFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public delete()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public deleteOnExit()V
    .locals 0

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()LJAVARuntime/File;
    .locals 3

    .line 2
    new-instance v0, LJAVARuntime/File;

    invoke-super {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v0, v1, v2}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic getAbsoluteFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->getAbsoluteFile()LJAVARuntime/File;

    move-result-object v0

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()LJAVARuntime/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, LJAVARuntime/File;

    invoke-super {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v0, v1, v2}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic getCanonicalFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->getCanonicalFile()LJAVARuntime/File;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()LJAVARuntime/File;
    .locals 3

    .line 2
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 3
    new-instance v0, LJAVARuntime/File;

    invoke-super {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v0, v1, v2}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic getParentFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->getParentFile()LJAVARuntime/File;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    invoke-super {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isAccessible()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, LJAVARuntime/File;->ignoreCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@compiled@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LJAVARuntime/Directories;->getProjectFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v0, LJAVARuntime/InaccessibleFilePathException;

    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/InaccessibleFilePathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LJAVARuntime/Directories;->internal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    new-instance v0, LJAVARuntime/InaccessibleFilePathException;

    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/InaccessibleFilePathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAccessible(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, LJAVARuntime/File;->ignoreCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    sget-object v0, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@compiled@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, LJAVARuntime/Directories;->getProjectFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, LJAVARuntime/InaccessibleFilePathException;

    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/InaccessibleFilePathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, LJAVARuntime/Directories;->internal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 12
    :cond_3
    new-instance p1, LJAVARuntime/InaccessibleFilePathException;

    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/InaccessibleFilePathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDirectory()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 2
    invoke-super {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 4
    invoke-super {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public listFiles()[LJAVARuntime/File;
    .locals 6

    .line 4
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 5
    invoke-super {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    array-length v1, v0

    new-array v1, v1, [LJAVARuntime/File;

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 8
    new-instance v3, LJAVARuntime/File;

    aget-object v4, v0, v2

    iget-boolean v5, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v3, v4, v5}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public listFiles(Ljava/io/FileFilter;)[LJAVARuntime/File;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 15
    invoke-super {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/File;

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 18
    new-instance v2, LJAVARuntime/File;

    aget-object v3, p1, v1

    iget-boolean v4, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v2, v3, v4}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[LJAVARuntime/File;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 10
    invoke-super {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/File;

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 13
    new-instance v2, LJAVARuntime/File;

    aget-object v3, p1, v1

    iget-boolean v4, p0, LJAVARuntime/File;->ignoreCheck:Z

    invoke-direct {v2, v3, v4}, LJAVARuntime/File;-><init>(Ljava/io/File;Z)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic listFiles()[Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->listFiles()[LJAVARuntime/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "filter"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, LJAVARuntime/File;->listFiles(Ljava/io/FileFilter;)[LJAVARuntime/File;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "filter"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, LJAVARuntime/File;->listFiles(Ljava/io/FilenameFilter;)[LJAVARuntime/File;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public mkdirs()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public renameTo(LJAVARuntime/File;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dest"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setExecutable(Z)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "executable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executable"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 4
    invoke-super {p0, p1}, Ljava/io/File;->setExecutable(Z)Z

    move-result p1

    return p1
.end method

.method public setExecutable(ZZ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "writable",
            "ownerOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executable",
            "ownerOnly"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 2
    invoke-super {p0, p1, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    return p1
.end method

.method public setLastModified(J)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    return p1
.end method

.method public setReadOnly()Z
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public setReadable(Z)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "readable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readable"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 4
    invoke-super {p0, p1}, Ljava/io/File;->setReadable(Z)Z

    move-result p1

    return p1
.end method

.method public setReadable(ZZ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "writable",
            "ownerOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "readable",
            "ownerOnly"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 2
    invoke-super {p0, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    return p1
.end method

.method public setWritable(Z)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "writable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writable"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 4
    invoke-super {p0, p1}, Ljava/io/File;->setWritable(Z)Z

    move-result p1

    return p1
.end method

.method public setWritable(ZZ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "writable",
            "ownerOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writable",
            "ownerOnly"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    .line 2
    invoke-super {p0, p1, p2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    return p1
.end method

.method public toPath()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/File;->isAccessible()Z

    invoke-super {p0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
