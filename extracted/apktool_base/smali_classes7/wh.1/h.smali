.class public Lwh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/s;

.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Lfi/d;

.field public e:Lwh/n;

.field public f:Lfi/d;

.field public g:Lhi/h0;

.field public h:Loh/r0;

.field public i:Loh/r0;

.field public j:Lhi/C;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Loh/h;IZLoh/g;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Loh/K0;

    invoke-direct {v0, p3, p2, p4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public b()Lwh/g;
    .locals 5

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/h;->a:Loh/s;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    iget-object v1, p0, Lwh/h;->b:Loh/s;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2, v1}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x2

    iget-object v4, p0, Lwh/h;->c:Lhi/b;

    invoke-virtual {p0, v0, v1, v2, v4}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x3

    iget-object v4, p0, Lwh/h;->d:Lfi/d;

    invoke-virtual {p0, v0, v1, v3, v4}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x4

    iget-object v4, p0, Lwh/h;->e:Lwh/n;

    invoke-virtual {p0, v0, v1, v2, v4}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x5

    iget-object v4, p0, Lwh/h;->f:Lfi/d;

    invoke-virtual {p0, v0, v1, v3, v4}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x6

    iget-object v3, p0, Lwh/h;->g:Lhi/h0;

    invoke-virtual {p0, v0, v1, v2, v3}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/4 v1, 0x7

    iget-object v3, p0, Lwh/h;->h:Loh/r0;

    invoke-virtual {p0, v0, v1, v2, v3}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/16 v1, 0x8

    iget-object v3, p0, Lwh/h;->i:Loh/r0;

    invoke-virtual {p0, v0, v1, v2, v3}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    const/16 v1, 0x9

    iget-object v3, p0, Lwh/h;->j:Lhi/C;

    invoke-virtual {p0, v0, v1, v2, v3}, Lwh/h;->a(Loh/h;IZLoh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lwh/g;->v(Ljava/lang/Object;)Lwh/g;

    move-result-object v0

    return-object v0
.end method

.method public c(Lhi/C;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->j:Lhi/C;

    return-object p0
.end method

.method public d(Lhi/z0;)Lwh/h;
    .locals 0

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwh/h;->c(Lhi/C;)Lwh/h;

    move-result-object p1

    return-object p1
.end method

.method public e(Lfi/d;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->d:Lfi/d;

    return-object p0
.end method

.method public f(Loh/r0;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->h:Loh/r0;

    return-object p0
.end method

.method public g(Lhi/h0;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->g:Lhi/h0;

    return-object p0
.end method

.method public h(Loh/s;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->b:Loh/s;

    return-object p0
.end method

.method public i(Lhi/b;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->c:Lhi/b;

    return-object p0
.end method

.method public j(Lfi/d;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->f:Lfi/d;

    return-object p0
.end method

.method public k(Loh/r0;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->i:Loh/r0;

    return-object p0
.end method

.method public l(Lwh/n;)Lwh/h;
    .locals 0

    iput-object p1, p0, Lwh/h;->e:Lwh/n;

    return-object p0
.end method

.method public m(I)Lwh/h;
    .locals 3

    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lwh/h;->a:Loh/s;

    return-object p0
.end method
