.class public LDh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/Q;

.field public c:Loh/x;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v2

    instance-of v2, v2, Loh/Q;

    if-eqz v2, :cond_0

    invoke-static {v1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object v0

    iput-object v0, p0, LDh/a;->b:Loh/Q;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    iput-object p1, p0, LDh/a;->c:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LDh/a;->c:Loh/x;

    const/4 p1, 0x0

    iput-object p1, p0, LDh/a;->b:Loh/Q;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/Q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LDh/a;->c:Loh/x;

    iput-object p2, p0, LDh/a;->b:Loh/Q;

    return-void
.end method

.method public static y(Ljava/lang/Object;)LDh/a;
    .locals 1

    instance-of v0, p0, LDh/a;

    if-eqz v0, :cond_0

    check-cast p0, LDh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDh/a;-><init>(Loh/E;)V

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

    iget-object v1, p0, LDh/a;->b:Loh/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LDh/a;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/M0;
    .locals 2

    iget-object v0, p0, LDh/a;->b:Loh/Q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/M0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/M0;

    iget-object v1, p0, LDh/a;->b:Loh/Q;

    invoke-virtual {v1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/M0;

    :goto_1
    return-object v0
.end method

.method public v()Loh/Q;
    .locals 1

    iget-object v0, p0, LDh/a;->b:Loh/Q;

    return-object v0
.end method

.method public x()Loh/x;
    .locals 1

    iget-object v0, p0, LDh/a;->c:Loh/x;

    return-object v0
.end method
