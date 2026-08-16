.class public LJAVARuntime/ALayoutInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Android Views"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static inflate(LJAVARuntime/Resources$File;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 6
    invoke-static {}, LN7/c;->h0()V

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Resources$File;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, LIc/o;->h(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, LJAVARuntime/ALayoutInflater;->inflateXML(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Ljava/io/File;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 3
    invoke-static {}, LN7/c;->h0()V

    .line 4
    invoke-static {p0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, LJAVARuntime/ALayoutInflater;->inflateXML(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->h0()V

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LJAVARuntime/ALayoutInflater;->inflate(Ljava/io/File;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflateXML(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xml"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    invoke-static {p0}, LKb/e;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
