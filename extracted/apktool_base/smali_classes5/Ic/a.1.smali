.class public LIc/a;
.super Ljava/util/concurrent/Phaser;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, LIc/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parties"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    const-wide/16 v0, 0x7530

    .line 3
    iput-wide v0, p0, LIc/a;->a:J

    .line 4
    const-string p1, ""

    iput-object p1, p0, LIc/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parties",
            "extraLogInfo"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    const-wide/16 v0, 0x7530

    .line 6
    iput-wide v0, p0, LIc/a;->a:J

    .line 7
    iput-object p2, p0, LIc/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-wide v0, p0, LIc/a;->a:J

    invoke-virtual {p0, v0, v1}, LIc/a;->b(J)Z

    move-result v0

    return v0
.end method

.method public b(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ms"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->arrive()I

    move-result v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/concurrent/Phaser;->awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout waiting phaser {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LIc/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LVc/g;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, LIc/a;->a:J

    return-wide v0
.end method

.method public d(J)LIc/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ms"
        }
    .end annotation

    iput-wide p1, p0, LIc/a;->a:J

    return-object p0
.end method

.method public e()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->arriveAndDeregister()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
