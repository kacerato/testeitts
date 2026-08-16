.class public Lr6/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/String;

.field public final c:Lr6/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "root"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr6/h;->b(Ljava/lang/String;I)Lr6/f;

    move-result-object v0

    iput-object v0, p0, Lr6/i;->c:Lr6/f;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lr6/i;->a:Ljava/lang/Thread;

    .line 4
    invoke-static {}, Lp6/d;->F1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    const-string v0, "Root"

    iput-object v0, p0, Lr6/i;->b:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr6/i;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "root"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr6/h;->b(Ljava/lang/String;I)Lr6/f;

    move-result-object v0

    iput-object v0, p0, Lr6/i;->c:Lr6/f;

    .line 9
    iput-object p1, p0, Lr6/i;->a:Ljava/lang/Thread;

    .line 10
    invoke-static {}, Lp6/d;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    const-string p1, "Root"

    iput-object p1, p0, Lr6/i;->b:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr6/i;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lr6/i;->c:Lr6/f;

    invoke-virtual {v0}, Lr6/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lr6/i;->a:Ljava/lang/Thread;

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

.method public c(Ljava/lang/Thread;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    iget-object v0, p0, Lr6/i;->a:Ljava/lang/Thread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/StringBuilder;)V
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

    iget-object v0, p0, Lr6/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lr6/i;->c:Lr6/f;

    const-string v1, "-"

    invoke-virtual {v0, p1, v1}, Lr6/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public e()Lr6/f;
    .locals 1

    iget-object v0, p0, Lr6/i;->c:Lr6/f;

    return-object v0
.end method

.method public f()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lr6/i;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/Object;Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "callStack",
            "listIndex",
            "beforeNotifyUsedBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lr6/i;->c:Lr6/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lr6/f;->k(Ljava/lang/Object;Ljava/util/List;IJ)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lr6/i;->c:Lr6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/f;->l()V

    :cond_0
    return-void
.end method
