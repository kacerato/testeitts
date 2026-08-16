.class public LCh/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LCh/j;

.field public c:LCh/m;


# direct methods
.method public constructor <init>(LCh/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LCh/l;-><init>(LCh/j;LCh/m;)V

    return-void
.end method

.method public constructor <init>(LCh/j;LCh/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/l;->b:LCh/j;

    iput-object p2, p0, LCh/l;->c:LCh/m;

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

    invoke-static {v0}, LCh/j;->u(Ljava/lang/Object;)LCh/j;

    move-result-object v0

    iput-object v0, p0, LCh/l;->b:LCh/j;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LCh/m;->w(Ljava/lang/Object;)LCh/m;

    move-result-object p1

    iput-object p1, p0, LCh/l;->c:LCh/m;

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

.method public static u(Ljava/lang/Object;)LCh/l;
    .locals 1

    instance-of v0, p0, LCh/l;

    if-eqz v0, :cond_0

    check-cast p0, LCh/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/l;-><init>(Loh/E;)V

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

    iget-object v1, p0, LCh/l;->b:LCh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/l;->c:LCh/m;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()LCh/j;
    .locals 1

    iget-object v0, p0, LCh/l;->b:LCh/j;

    return-object v0
.end method

.method public x()LCh/m;
    .locals 1

    iget-object v0, p0, LCh/l;->c:LCh/m;

    return-object v0
.end method
