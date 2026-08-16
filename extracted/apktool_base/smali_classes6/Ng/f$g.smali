.class public LNg/f$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:LTg/e;

.field public d:LTg/d;

.field public e:LNg/f$h;

.field public f:LNg/k;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LNg/f$h;->a:LNg/f$h;

    iput-object v0, p0, LNg/f$g;->e:LNg/f$h;

    sget-object v0, LNg/k;->a:LNg/k;

    iput-object v0, p0, LNg/f$g;->f:LNg/k;

    iput-boolean p1, p0, LNg/f$g;->g:Z

    return-void
.end method


# virtual methods
.method public a()LNg/f;
    .locals 1

    new-instance v0, LNg/f;

    invoke-direct {v0, p0}, LNg/f;-><init>(LNg/f$g;)V

    return-object v0
.end method

.method public b(LNg/f$h;)LNg/f$g;
    .locals 0

    iput-object p1, p0, LNg/f$g;->e:LNg/f$h;

    return-object p0
.end method

.method public c(I)LNg/f$g;
    .locals 0

    iput p1, p0, LNg/f$g;->h:I

    return-object p0
.end method

.method public d(LNg/k;)LNg/f$g;
    .locals 0

    iput-object p1, p0, LNg/f$g;->f:LNg/k;

    return-object p0
.end method

.method public e(Ljava/net/Socket;)LNg/f$g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LTg/p;->n(Ljava/net/Socket;)LTg/y;

    move-result-object v1

    invoke-static {v1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v1

    invoke-static {p1}, LTg/p;->i(Ljava/net/Socket;)LTg/x;

    move-result-object v2

    invoke-static {v2}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LNg/f$g;->f(Ljava/net/Socket;Ljava/lang/String;LTg/e;LTg/d;)LNg/f$g;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/net/Socket;Ljava/lang/String;LTg/e;LTg/d;)LNg/f$g;
    .locals 0

    iput-object p1, p0, LNg/f$g;->a:Ljava/net/Socket;

    iput-object p2, p0, LNg/f$g;->b:Ljava/lang/String;

    iput-object p3, p0, LNg/f$g;->c:LTg/e;

    iput-object p4, p0, LNg/f$g;->d:LTg/d;

    return-object p0
.end method
