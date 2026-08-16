.class public LJAVARuntime/Resources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Resources$File;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static getFile(Ljava/lang/String;)LJAVARuntime/Resources$File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Resources$File;

    invoke-static {p0}, LJAVARuntime/Resources;->isFolder(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, LJAVARuntime/Resources$File;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-static {p0}, Lnb/a;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
