.class public LCh/v;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:LCh/n;

.field public d:LCh/u;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, LCh/v;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LCh/n;->w(Ljava/lang/Object;)LCh/n;

    move-result-object v0

    iput-object v0, p0, LCh/v;->c:LCh/n;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LCh/u;->v(Ljava/lang/Object;)LCh/u;

    move-result-object p1

    iput-object p1, p0, LCh/v;->d:LCh/u;

    :cond_2
    return-void
.end method

.method public constructor <init>(Loh/x;LCh/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LCh/v;-><init>(Loh/x;LCh/n;LCh/u;)V

    return-void
.end method

.method public constructor <init>(Loh/x;LCh/n;LCh/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/v;->b:Loh/x;

    iput-object p2, p0, LCh/v;->c:LCh/n;

    iput-object p3, p0, LCh/v;->d:LCh/u;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LCh/v;
    .locals 1

    instance-of v0, p0, LCh/v;

    if-eqz v0, :cond_0

    check-cast p0, LCh/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/v;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/v;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/v;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/v;->c:LCh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/v;->d:LCh/u;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()LCh/n;
    .locals 1

    iget-object v0, p0, LCh/v;->c:LCh/n;

    return-object v0
.end method

.method public x()Loh/x;
    .locals 2

    new-instance v0, Loh/x;

    iget-object v1, p0, LCh/v;->b:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public y()LCh/u;
    .locals 1

    iget-object v0, p0, LCh/v;->d:LCh/u;

    return-object v0
.end method
