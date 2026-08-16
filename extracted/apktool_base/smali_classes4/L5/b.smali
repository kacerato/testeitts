.class public LL5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

.field public b:Ljava/lang/String;

.field public c:LI5/a;

.field public volatile d:F

.field public volatile e:Ljava/lang/String;

.field public volatile f:Ljava/lang/String;

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LL5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, LL5/b;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LL5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()LI5/a;
    .locals 1

    iget-object v0, p0, LL5/b;->c:LI5/a;

    return-object v0
.end method

.method public d(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LL5/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()F
    .locals 1

    iget v0, p0, LL5/b;->d:F

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL5/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    .locals 1

    iget-object v0, p0, LL5/b;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL5/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL5/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, LL5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentage"
        }
    .end annotation

    iput p1, p0, LL5/b;->d:F

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtittle"
        }
    .end annotation

    iput-object p1, p0, LL5/b;->e:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iput-object p1, p0, LL5/b;->f:Ljava/lang/String;

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method
