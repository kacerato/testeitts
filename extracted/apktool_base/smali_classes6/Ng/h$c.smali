.class public LNg/h$c;
.super LTg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic l:LNg/h;


# direct methods
.method public constructor <init>(LNg/h;)V
    .locals 0

    iput-object p1, p0, LNg/h$c;->l:LNg/h;

    invoke-direct {p0}, LTg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, LNg/h$c;->l:LNg/h;

    sget-object v1, LNg/a;->CANCEL:LNg/a;

    invoke-virtual {v0, v1}, LNg/h;->h(LNg/a;)V

    return-void
.end method

.method public w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LTg/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LNg/h$c;->q(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
