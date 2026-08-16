.class public final LJAVARuntime/FontLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Fonts"
    }
.end annotation


# instance fields
.field public transient font:Ltb/a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ltb/a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "font"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/FontLoader;->font:Ltb/a;

    return-void
.end method

.method public static load(I)LJAVARuntime/Font;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 1
    sget-object v0, LP9/a;->p:Ltb/b;

    invoke-virtual {v0, p0}, Ltb/b;->a(I)Ltb/a;

    move-result-object p0

    .line 2
    new-instance v0, LJAVARuntime/Font;

    invoke-direct {v0, p0}, LJAVARuntime/Font;-><init>(Ltb/a;)V

    return-object v0
.end method

.method public static load(LJAVARuntime/FontFile;I)LJAVARuntime/Font;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file",
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "resolution"
        }
    .end annotation

    .line 3
    sget-object v0, LP9/a;->p:Ltb/b;

    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ltb/b;->c(Ljava/lang/String;I)Ltb/a;

    move-result-object p0

    .line 4
    new-instance p1, LJAVARuntime/Font;

    invoke-direct {p1, p0}, LJAVARuntime/Font;-><init>(Ltb/a;)V

    return-object p1
.end method

.method public static load(Ljava/io/File;I)LJAVARuntime/Font;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file",
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "resolution"
        }
    .end annotation

    .line 5
    sget-object v0, LP9/a;->p:Ltb/b;

    invoke-virtual {v0, p0, p1}, Ltb/b;->b(Ljava/io/File;I)Ltb/a;

    move-result-object p0

    .line 6
    new-instance p1, LJAVARuntime/Font;

    invoke-direct {p1, p0}, LJAVARuntime/Font;-><init>(Ltb/a;)V

    return-object p1
.end method
