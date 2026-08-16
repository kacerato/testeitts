.class public LJAVARuntime/Resources$File;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private final isDirectory:Z

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "isDirectory"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput-object p1, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    iput-boolean p2, p0, LJAVARuntime/Resources$File;->isDirectory:Z

    return-void
.end method


# virtual methods
.method public fileCount()I
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/Resources$File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    invoke-static {v0}, Lnb/a;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFiles()[LJAVARuntime/Resources$File;
    .locals 7

    invoke-virtual {p0}, LJAVARuntime/Resources$File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    invoke-static {v0}, Lnb/a;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [LJAVARuntime/Resources$File;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, LJAVARuntime/Resources$File;

    aget-object v4, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LJAVARuntime/Resources;->isFolder(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v3, v4, v5}, LJAVARuntime/Resources$File;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    invoke-static {v0}, Lnb/a;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Resources$File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/Resources$File;->isDirectory:Z

    return v0
.end method
