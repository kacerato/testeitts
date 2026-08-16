.class public LCh/h;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LCh/m;

.field public c:LCh/e;


# direct methods
.method public constructor <init>(LCh/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LCh/h;-><init>(LCh/m;LCh/e;)V

    return-void
.end method

.method public constructor <init>(LCh/m;LCh/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/h;->b:LCh/m;

    iput-object p2, p0, LCh/h;->c:LCh/e;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LCh/m;->w(Ljava/lang/Object;)LCh/m;

    move-result-object v0

    iput-object v0, p0, LCh/h;->b:LCh/m;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LCh/e;->y(Ljava/lang/Object;)LCh/e;

    move-result-object p1

    iput-object p1, p0, LCh/h;->c:LCh/e;

    :cond_0
    return-void

    :cond_1
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
.end method

.method public static w(Ljava/lang/Object;)LCh/h;
    .locals 1

    instance-of v0, p0, LCh/h;

    if-eqz v0, :cond_0

    check-cast p0, LCh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/h;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/h;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/h;->b:LCh/m;

    invoke-virtual {v1}, LCh/m;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/h;->c:LCh/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LCh/e;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LCh/m;
    .locals 1

    iget-object v0, p0, LCh/h;->b:LCh/m;

    return-object v0
.end method

.method public v()LCh/e;
    .locals 1

    iget-object v0, p0, LCh/h;->c:LCh/e;

    return-object v0
.end method
