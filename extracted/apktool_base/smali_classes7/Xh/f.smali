.class public LXh/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lfi/d;

.field public d:Lhi/h0;

.field public e:Loh/G;


# direct methods
.method public constructor <init>(Lfi/d;Lhi/h0;Loh/G;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXh/f;->b:Loh/s;

    const/4 v0, 0x0

    iput-object v0, p0, LXh/f;->e:Loh/G;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, LXh/f;->A(Loh/G;)V

    iput-object p1, p0, LXh/f;->c:Lfi/d;

    iput-object p2, p0, LXh/f;->d:Lhi/h0;

    iput-object p3, p0, LXh/f;->e:Loh/G;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lhi/B0;Lhi/h0;Loh/G;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, LXh/f;-><init>(Lfi/d;Lhi/h0;Loh/G;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXh/f;->b:Loh/s;

    const/4 v0, 0x0

    iput-object v0, p0, LXh/f;->e:Loh/G;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    iput-object v1, p0, LXh/f;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    iput-object v1, p0, LXh/f;->c:Lfi/d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v1

    iput-object v1, p0, LXh/f;->d:Lhi/h0;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, LXh/f;->e:Loh/G;

    :cond_0
    iget-object p1, p0, LXh/f;->e:Loh/G;

    invoke-static {p1}, LXh/f;->A(Loh/G;)V

    iget-object p1, p0, LXh/f;->c:Lfi/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, LXh/f;->b:Loh/s;

    if-eqz p1, :cond_1

    iget-object p1, p0, LXh/f;->d:Lhi/h0;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A(Loh/G;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v0

    invoke-virtual {v0}, LXh/a;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->Y1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LXh/a;->v()Loh/G;

    move-result-object v0

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "challengePassword attribute must have one value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/f;
    .locals 1

    instance-of v0, p0, LXh/f;

    if-eqz v0, :cond_0

    check-cast p0, LXh/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/f;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/f;->c:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/f;->d:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/f;->e:Loh/G;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/f;->e:Loh/G;

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, LXh/f;->c:Lfi/d;

    return-object v0
.end method

.method public y()Lhi/h0;
    .locals 1

    iget-object v0, p0, LXh/f;->d:Lhi/h0;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, LXh/f;->b:Loh/s;

    return-object v0
.end method
