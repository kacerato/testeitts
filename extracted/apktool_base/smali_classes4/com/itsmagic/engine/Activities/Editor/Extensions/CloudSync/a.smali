.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

.field public h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->j:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->k:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->l:Ljava/util/List;

    new-instance v0, LE3/b;

    invoke-direct {v0}, LE3/b;-><init>()V

    invoke-static {v0}, Lca/c;->t(Lca/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "project"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->E()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid project name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->B(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object v0

    return-object v0
.end method

.method public static B(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "project"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static F()V
    .locals 0

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->F()V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->q()V

    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->M(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->I()V

    return-void
.end method

.method public static p()V
    .locals 0

    return-void
.end method


# virtual methods
.method public C(LE3/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return v2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return v2

    :catchall_2
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/CloudSync/db.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/CloudSync/settings.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/CloudSync/lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    return-void
.end method

.method public final I()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_EDITOR/CloudSync/db.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public J()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_EDITOR/CloudSync/settings.config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final K()Z
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    const-class v3, Lw6/b;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->L(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v2
.end method

.method public final L()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->q()V

    :cond_1
    return-void
.end method

.method public final M(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->j(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final N()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE3/a;

    iget v4, v3, LE3/a;->h:F

    invoke-static {}, LK8/d;->d()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, LE3/a;->h:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/a;

    iget v3, v2, LE3/a;->h:F

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final O()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->D()V

    sget-object v0, Lcom/itsmagic/engine/Activities/App;->c:Lu3/a;

    invoke-interface {v0}, Lu3/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcd/a;->a(Landroid/app/Application;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->x()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->o(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->s(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->l(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->P()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->i:I

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->I()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->L()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final P()V
    .locals 12

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;->f(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {v0}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "values"

    invoke-static {v0, v1}, Lhd/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "report"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport;->reportList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport;->reportList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->ipp:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->ipp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->mode:Ljava/lang/String;

    const-string v4, "upload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    new-instance v11, LE3/a;

    sget-object v6, LE3/c;->Upload:LE3/c;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->ipp:Ljava/lang/String;

    iget-object v9, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->serverLM:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, LE3/a;-><init>(Ljava/io/File;LE3/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->L()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_3
    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->mode:Ljava/lang/String;

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    new-instance v11, LE3/a;

    sget-object v6, LE3/c;->Download:LE3/c;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->ipp:Ljava/lang/String;

    iget-object v9, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/RemoteReport$RemoteFileReport;->serverLM:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, LE3/a;-><init>(Ljava/io/File;LE3/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->L()V

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public final Q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->x()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->D()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->u(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->l(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->M(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->localLM:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->serverLM:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public m(I)LE3/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE3/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

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

.method public final o(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectFolder"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->i()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->h(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->ipp:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->ipp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->a(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->b(Ljava/util/List;)V

    return-void
.end method

.method public final q()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE3/a;

    invoke-virtual {v1}, LE3/a;->d()LE3/c;

    move-result-object v2

    sget-object v3, LE3/c;->Upload:LE3/c;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->t(LE3/a;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LE3/a;->d()LE3/c;

    move-result-object v2

    sget-object v3, LE3/c;->Download:LE3/c;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->r(LE3/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->G()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r(LE3/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    sget-object v0, LE3/d;->Downloading:LE3/d;

    invoke-virtual {p1, v0}, LE3/a;->k(LE3/d;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {p1}, LE3/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LE3/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;LE3/a;)V

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, LE3/d;->Failed:LE3/d;

    invoke-virtual {p1, v1}, LE3/a;->k(LE3/d;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LE3/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->q()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final s(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectFolder"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->g()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;

    move-result-object v1

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;->mode:Ljava/lang/String;

    const-string v3, "exclusion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;->ipp:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "Can\'t delete!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->l(Ljava/util/List;)V

    return-void
.end method

.method public final t(LE3/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    sget-object v0, LE3/d;->Uploading:LE3/d;

    invoke-virtual {p1, v0}, LE3/a;->k(LE3/d;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->M(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;LE3/a;)V

    invoke-static {v3, v1, v2, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, LE3/d;->Failed:LE3/d;

    invoke-virtual {p1, v1}, LE3/a;->k(LE3/d;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LE3/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->q()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final u(Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->v(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LTc/b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_PROJECT/Scripts/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "_PROJECT/Gallery/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "_EDITOR/VCS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    const-string v2, "_EDITOR/ImportedPackages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    const-string v2, "_EDITOR/thumbs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    const-string v2, "_EDITOR/axis"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    const-string v2, "_EDITOR/CloudSync/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_6
    const-string v2, "_EDITOR/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ".mat"

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    const-string v2, "_EDITOR/pv.config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    const-string v2, "Resources/READ-ME.txt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v3

    :cond_9
    const-string v2, "storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v3

    :cond_a
    const-string v2, "JAVARuntime/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v3

    :cond_b
    const-string v2, "javaRTImportPack.zip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v3

    :cond_c
    const-string p1, ".class"

    invoke-static {v0, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    const-string p1, ".dex"

    invoke-static {v0, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v3

    :cond_e
    const-string p1, ".texture"

    invoke-static {v0, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    const-string p1, ".javac"

    invoke-static {v0, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v3

    :cond_10
    const-string p1, "jmi.config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v3

    :cond_11
    const-string p1, "f.manifest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    return v3

    :cond_12
    const-string p1, "thumb.png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, ".meta"

    if-eqz p1, :cond_13

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v3

    :cond_13
    const-string p1, "thumb.png.config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v3

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final w(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public y()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->E()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->i:I

    return v0
.end method
