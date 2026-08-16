.class public Led/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhd/d;


# direct methods
.method public constructor <init>(Lhd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/d;->a:Lhd/d;

    return-void
.end method

.method public static synthetic a(Led/d;[Lhd/e;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Led/d;->c([Lhd/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Led/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Led/d;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs c([Lhd/e;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p1, Lhd/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lhd/e;->b:Ljava/util/Map;

    iget-boolean p1, p1, Lhd/e;->d:Z

    invoke-static {v0, v1, p1}, Lgd/a;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lhd/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Led/d$a;

    invoke-direct {v1, p0, p1}, Led/d$a;-><init>(Led/d;Lhd/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "PostAsync_NEV"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Led/d;->a:Lhd/d;

    if-eqz v0, :cond_4

    const-string v0, "@no_ethernet@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "@errorcheckingconnection@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "@error@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Led/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Led/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Led/d;->a:Lhd/d;

    invoke-interface {v0, p1}, Lhd/d;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
