.class public Lo6/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/String;

.field public final c:Lo6/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lo6/l;-><init>(Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lo6/i;

    const-string v1, "root"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo6/i;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo6/l;->c:Lo6/i;

    .line 4
    iput-object p1, p0, Lo6/l;->a:Ljava/lang/Thread;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo6/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lo6/l;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/Thread;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    iget-object v0, p0, Lo6/l;->a:Ljava/lang/Thread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const-string v0, "Thread ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo6/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo6/l;->c:Lo6/i;

    const-string v1, "-"

    invoke-virtual {v0, p1, v1}, Lo6/i;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lo6/i;
    .locals 1

    iget-object v0, p0, Lo6/l;->c:Lo6/i;

    return-object v0
.end method

.method public e()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lo6/l;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo6/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lo6/l;->c:Lo6/i;

    invoke-virtual {v0}, Lo6/i;->l()V

    return-void
.end method
