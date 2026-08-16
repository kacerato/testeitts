.class public Lth/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/L;

.field public c:Loh/s;

.field public d:Lth/F;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object v0

    iput-object v0, p0, Lth/q;->b:Lth/L;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loh/s;

    if-eqz v1, :cond_0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/q;->c:Loh/s;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object v0

    iput-object v0, p0, Lth/q;->d:Lth/F;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lth/L;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lth/q;-><init>(Lth/L;Loh/s;Lth/F;)V

    return-void
.end method

.method public constructor <init>(Lth/L;Loh/s;Lth/F;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/q;->b:Lth/L;

    iput-object p2, p0, Lth/q;->c:Loh/s;

    iput-object p3, p0, Lth/q;->d:Lth/F;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'pkiStatusInfo\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private u(Loh/h;Loh/g;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lth/q;
    .locals 1

    instance-of v0, p0, Lth/q;

    if-eqz v0, :cond_0

    check-cast p0, Lth/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/q;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lth/q;->b:Lth/L;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/q;->c:Loh/s;

    invoke-direct {p0, v0, v1}, Lth/q;->u(Loh/h;Loh/g;)V

    iget-object v1, p0, Lth/q;->d:Lth/F;

    invoke-direct {p0, v0, v1}, Lth/q;->u(Loh/h;Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/q;->c:Loh/s;

    return-object v0
.end method

.method public x()Lth/F;
    .locals 1

    iget-object v0, p0, Lth/q;->d:Lth/F;

    return-object v0
.end method

.method public z()Lth/L;
    .locals 1

    iget-object v0, p0, Lth/q;->b:Lth/L;

    return-object v0
.end method
