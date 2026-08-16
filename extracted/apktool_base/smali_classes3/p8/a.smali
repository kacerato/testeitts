.class public Lp8/a;
.super Lw5/f;
.source "SourceFile"


# instance fields
.field public final a:LJAVARuntime/FilesPanelCustomIcon;


# direct methods
.method public constructor <init>(LJAVARuntime/FilesPanelCustomIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtime"
        }
    .end annotation

    invoke-direct {p0}, Lw5/f;-><init>()V

    iput-object p1, p0, Lp8/a;->a:LJAVARuntime/FilesPanelCustomIcon;

    return-void
.end method

.method public static synthetic d(Lp8/a;)LJAVARuntime/FilesPanelCustomIcon;
    .locals 0

    iget-object p0, p0, Lp8/a;->a:LJAVARuntime/FilesPanelCustomIcon;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;Landroid/widget/ImageView;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "imageView"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v2, Lp8/a$b;

    invoke-direct {v2, p0, v1, p1, p2}, Lp8/a$b;-><init>(Lp8/a;[ZLjava/io/File;Landroid/widget/ImageView;)V

    invoke-static {v2}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v1, v0

    return p1
.end method

.method public b(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/io/File;

    move-result-object v0

    new-instance v1, Lp8/a$a;

    invoke-direct {v1, p0, v0, p1}, Lp8/a$a;-><init>(Lp8/a;[Ljava/io/File;Ljava/io/File;)V

    invoke-static {v1}, Ld8/m;->d(Lo8/d;)Z

    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v2, Lp8/a$c;

    invoke-direct {v2, p0, v1, p1}, Lp8/a$c;-><init>(Lp8/a;[ZLjava/io/File;)V

    invoke-static {v2}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v1, v0

    return p1
.end method
