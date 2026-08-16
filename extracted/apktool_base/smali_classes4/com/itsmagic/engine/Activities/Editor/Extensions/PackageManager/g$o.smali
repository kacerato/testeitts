.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

.field public f:Ljava/lang/String;

.field public g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
            "version",
            "packageName",
            "directDownloadUrl",
            "project"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    .line 13
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->f:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    .line 16
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->b:I

    .line 17
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->l:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->d:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "project"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    .line 4
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->f:Ljava/lang/String;

    .line 6
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->b:I

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c:Z

    .line 9
    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->k()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Importing:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g()I

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->i:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    return-object v0
.end method

.method public l(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->p()V

    :cond_0
    return-void
.end method
