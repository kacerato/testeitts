.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;
    }
.end annotation


# static fields
.field public static final Z:Ljava/lang/String; = "PackageDownloader"

.field public static final a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;"
        }
    .end annotation
.end field

.field public static final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;"
        }
    .end annotation
.end field

.field public static d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

.field public static e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

.field public static f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static g0:LM7/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final h0:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->c0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$f;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h0:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Packages"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic A1()LM7/b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    return-object v0
.end method

.method public static synthetic B1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->c0:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic C1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-object v0
.end method

.method public static synthetic E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 0

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-object p0
.end method

.method public static F1()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->G1(LJAVARuntime/Runnable;)V

    return-void
.end method

.method public static G1(LJAVARuntime/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-virtual {v0, v1}, LM7/b;->M(LAc/b;)LM7/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$n;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$n;-><init>(LJAVARuntime/Runnable;)V

    const/high16 p0, 0x3e800000    # 0.25f

    invoke-static {p0, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method

.method public static H1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pack",
            "importProject",
            "listener",
            "silently"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pack",
            "importProject",
            "listener",
            "silently",
            "keepRootReadmeOnImport"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    invoke-static {p0}, LT5/b;->N(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    const/4 v0, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->version:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    move-object v4, p0

    :goto_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    iput-boolean p4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->m:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$k;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$k;-><init>()V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p3, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d2()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b2()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f2()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid repository url"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "package can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "importProject can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J1(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "importProject"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->K1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static K1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "importProject",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->L1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static L1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "importProject",
            "listener",
            "silently"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->M1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static M1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "importProject",
            "listener",
            "silently",
            "keepRootReadmeOnImport"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    iput-boolean p4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->m:Z

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$j;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$j;-><init>()V

    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p3, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d2()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b2()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f2()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    :cond_1
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "importProject can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static N1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->H1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pack",
            "silently",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->H1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packID"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->R1(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static R1(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->K1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S1(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "silently",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->L1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;Z)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->V1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static V1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pack",
            "keepRootReadmeOnImport",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static W1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packID"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->X1(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static X1(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Y1(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0
.end method

.method public static Y1(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "keepRootReadmeOnImport",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->M1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Theres no open project!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Call from Main UI Thread!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Z1()I
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a2()LM7/b;
    .locals 5

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, LM7/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$g;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$g;-><init>()V

    sget-object v3, LM7/c$b;->Right:LM7/c$b;

    const v4, 0x7f0700f2

    invoke-direct {v1, v4, v2, v3, v0}, LM7/b;-><init>(ILM7/a;LM7/c$b;Landroid/content/Context;)V

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    return-object v1
.end method

.method public static b2()Z
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c2(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x64

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v1, 0x3e8

    if-le p0, v1, :cond_2

    div-int/2addr p0, v1

    goto :goto_0

    :cond_2
    div-int/2addr p0, v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static d2()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->i2()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->G1(LJAVARuntime/Runnable;)V

    :cond_0
    return-void
.end method

.method public static e2()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->i2()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->G1(LJAVARuntime/Runnable;)V

    :cond_0
    return-void
.end method

.method public static f2()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM7/g;->e()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g2(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t inflate package downloader, without anchor if the topbar was not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g2(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;-><init>()V

    const/16 v1, 0x104

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v4

    const/16 v1, 0xfa

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v5

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$h;

    invoke-direct {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$h;-><init>()V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$i;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Lo4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    return-object v0
.end method

.method public static h2()V
    .locals 10

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->b0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Finished:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :goto_0
    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    invoke-direct {v9, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-boolean v4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a:Ljava/lang/String;

    iget v5, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->b:I

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->l:Ljava/lang/String;

    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->d:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->m:Z

    invoke-static/range {v4 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->i0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->m:Z

    invoke-static {v4, v1, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->g0(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    :cond_3
    :goto_1
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-eq v1, v4, :cond_4

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-eq v1, v4, :cond_4

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Finished:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v1, v4, :cond_5

    :cond_4
    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    :cond_5
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-nez v1, :cond_6

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->c0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->o(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$b;

    invoke-direct {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$b;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;Z)V

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-nez v1, :cond_8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->c0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-nez v1, :cond_8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h0:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v2

    :cond_8
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static i2()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Z1()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LM7/b;->c0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->g0:LM7/b;

    invoke-virtual {v0, v1}, LM7/b;->c0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p1()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h2()V

    return-void
.end method

.method public static synthetic q1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    return-object v0
.end method

.method public static synthetic r1()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e2()V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
    .locals 0

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    return-object p0
.end method

.method public static synthetic t1(I)I
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->c2(I)I

    move-result p0

    return p0
.end method

.method public static synthetic u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-object v0
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    .locals 0

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->e0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-object p0
.end method

.method public static synthetic w1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic x1()Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h0:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    return-object v0
.end method

.method public static synthetic y1()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->F1()V

    return-void
.end method

.method public static synthetic z1(LJAVARuntime/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->G1(LJAVARuntime/Runnable;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0161

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Lo4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->f0:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    return-object v0
.end method

.method public o1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->a0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->l(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
