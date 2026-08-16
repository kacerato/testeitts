.class public Lth/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loh/h;

.field public final b:Loh/h;

.field public final c:Loh/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lth/V;->a:Loh/h;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lth/V;->b:Loh/h;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lth/V;->c:Loh/h;

    return-void
.end method


# virtual methods
.method public a(Lth/L;)Lth/V;
    .locals 1

    iget-object v0, p0, Lth/V;->a:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    return-object p0
.end method

.method public b(Lth/L;Lwh/c;)Lth/V;
    .locals 2

    iget-object v0, p0, Lth/V;->a:Loh/h;

    invoke-virtual {v0}, Loh/h;->i()I

    move-result v0

    iget-object v1, p0, Lth/V;->b:Loh/h;

    invoke-virtual {v1}, Loh/h;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lth/V;->a:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lth/V;->b:Loh/h;

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "status and revCerts sequence must be in common order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lhi/r;)Lth/V;
    .locals 1

    iget-object v0, p0, Lth/V;->c:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    return-object p0
.end method

.method public d()Lth/U;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lth/V;->a:Loh/h;

    invoke-direct {v1, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/V;->b:Loh/h;

    invoke-virtual {v1}, Loh/h;->i()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/G0;

    iget-object v4, p0, Lth/V;->b:Loh/h;

    invoke-direct {v3, v4}, Loh/G0;-><init>(Loh/h;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/V;->c:Loh/h;

    invoke-virtual {v1}, Loh/h;->i()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Loh/K0;

    new-instance v3, Loh/G0;

    iget-object v4, p0, Lth/V;->c:Loh/h;

    invoke-direct {v3, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lth/U;->w(Ljava/lang/Object;)Lth/U;

    move-result-object v0

    return-object v0
.end method
