.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

.field public static final b:Ljava/lang/String; = "WelcomeProject"

.field public static c:Z

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static e:Ls4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->CARGO_TRUCK:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    return-object v0
.end method

.method public static synthetic b(Ld6/c;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->f(Ld6/c;)V

    return-void
.end method

.method public static synthetic c(Ljava/io/File;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->k(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->n()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->i()V

    return-void
.end method

.method public static f(Ld6/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadProgress"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WelcomeProject"

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->c0()Lx8/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lx8/c;->b(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string v2, "Preparing project"

    invoke-virtual {p0, v1, v2}, Ld6/c;->p1(ILjava/lang/String;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->id:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;-><init>(Ld6/c;Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-static {v1, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Y1(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-void
.end method

.method public static g()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WelcomeProject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07008c

    invoke-static {v0}, Ls4/a;->p1(I)Ls4/a;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e:Ls4/a;

    invoke-static {}, Ld6/c;->r1()Ld6/c;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$a;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$a;-><init>(Ld6/c;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, LN7/c;->l(FLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->i()V

    :goto_0
    return-void
.end method

.method public static h()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e:Ls4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e:Ls4/a;

    :cond_0
    return-void
.end method

.method public static i()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->c:Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e:Ls4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e:Ls4/a;

    :cond_0
    return-void
.end method

.method public static j()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->m()V

    return-void

    :cond_0
    sget-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->latestProject:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->reopenTheLatestProjectAtStartup:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->X()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, LL5/a;->r1(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->m()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->m()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static k(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->k(Ljava/io/File;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".world"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    const-string p0, ""

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->h()V

    return-void
.end method

.method public static m()V
    .locals 3

    invoke-static {}, Lw6/b;->z1()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw6/b;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ld6/b;->j0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lw6/b;->I1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m0()V

    :cond_0
    return-void
.end method

.method public static n()V
    .locals 2

    new-instance v0, Lob/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;-><init>()V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method
