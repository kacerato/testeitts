.class public Lhi/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Loh/E;


# instance fields
.field public a:Loh/s;

.field public b:Lhi/b;

.field public c:Lfi/d;

.field public d:Lhi/o0;

.field public e:Lhi/o0;

.field public f:Lhi/C;

.field public g:Loh/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Loh/E;

    sput-object v0, Lhi/t0;->h:[Loh/E;

    const/4 v1, 0x0

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v1}, Lhi/t0;->g(I)Loh/E;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lhi/t0;->a:Loh/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/t0;->e:Lhi/o0;

    iput-object v0, p0, Lhi/t0;->f:Lhi/C;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lhi/t0;->g:Loh/h;

    return-void
.end method

.method public static f(Loh/n;)Loh/E;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    :try_start_0
    sget-object v1, Lhi/B;->o:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(I)Loh/E;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-static {p0}, Lhi/o;->w(I)Lhi/o;

    move-result-object p0

    :try_start_0
    sget-object v1, Lhi/B;->m:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Loh/s;Lhi/o0;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lhi/t0;->b(Loh/s;Lhi/o0;ILoh/n;)V

    return-void
.end method

.method public b(Loh/s;Lhi/o0;ILoh/n;)V
    .locals 3

    if-eqz p3, :cond_3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    sget-object v1, Lhi/t0;->h:[Loh/E;

    array-length v2, v1

    if-ge p3, v2, :cond_1

    if-ltz p3, :cond_0

    aget-object p3, v1, p3

    :goto_0
    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid reason value: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p3}, Lhi/t0;->g(I)Loh/E;

    move-result-object p3

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_2

    invoke-static {p4}, Lhi/t0;->f(Loh/n;)Loh/E;

    move-result-object p3

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance p3, Loh/G0;

    invoke-direct {p3, v0}, Loh/G0;-><init>(Loh/h;)V

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lhi/t0;->k(Loh/s;Lhi/o0;Loh/E;)V

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    new-instance p3, Loh/G0;

    invoke-static {p4}, Lhi/t0;->f(Loh/n;)Loh/E;

    move-result-object p4

    invoke-direct {p3, p4}, Loh/G0;-><init>(Loh/g;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lhi/t0;->c(Loh/s;Lhi/o0;Lhi/C;)V

    :goto_3
    return-void
.end method

.method public c(Loh/s;Lhi/o0;Lhi/C;)V
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p0, p1}, Lhi/t0;->e(Loh/E;)V

    return-void
.end method

.method public d(Loh/s;Loh/P;I)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p2}, Lhi/o0;-><init>(Loh/B;)V

    invoke-virtual {p0, p1, v0, p3}, Lhi/t0;->a(Loh/s;Lhi/o0;I)V

    return-void
.end method

.method public e(Loh/E;)V
    .locals 1

    iget-object v0, p0, Lhi/t0;->g:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public h()Loh/E;
    .locals 2

    iget-object v0, p0, Lhi/t0;->b:Lhi/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhi/t0;->c:Lfi/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/t0;->d:Lhi/o0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhi/t0;->j()Loh/E;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 PreTBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature should not be set in PreTBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lhi/i0;
    .locals 2

    iget-object v0, p0, Lhi/t0;->b:Lhi/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/t0;->c:Lfi/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/t0;->d:Lhi/o0;

    if-eqz v0, :cond_0

    new-instance v0, Lhi/i0;

    invoke-virtual {p0}, Lhi/t0;->j()Loh/E;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/i0;-><init>(Loh/E;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 TBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Loh/E;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/t0;->a:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/t0;->b:Lhi/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/t0;->c:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/t0;->d:Lhi/o0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/t0;->e:Lhi/o0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/t0;->g:Loh/h;

    invoke-virtual {v1}, Loh/h;->i()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lhi/t0;->g:Loh/h;

    invoke-direct {v1, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lhi/t0;->f:Lhi/C;

    if-eqz v1, :cond_3

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final k(Loh/s;Lhi/o0;Loh/E;)V
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p0, p1}, Lhi/t0;->e(Loh/E;)V

    return-void
.end method

.method public l(Lhi/C;)V
    .locals 0

    iput-object p1, p0, Lhi/t0;->f:Lhi/C;

    return-void
.end method

.method public m(Lhi/z0;)V
    .locals 0

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhi/t0;->l(Lhi/C;)V

    return-void
.end method

.method public n(Lfi/d;)V
    .locals 0

    iput-object p1, p0, Lhi/t0;->c:Lfi/d;

    return-void
.end method

.method public o(Lhi/B0;)V
    .locals 0

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/t0;->c:Lfi/d;

    return-void
.end method

.method public p(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/t0;->e:Lhi/o0;

    return-void
.end method

.method public q(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/t0;->e:Lhi/o0;

    return-void
.end method

.method public r(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lhi/t0;->b:Lhi/b;

    return-void
.end method

.method public s(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/t0;->d:Lhi/o0;

    return-void
.end method

.method public t(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/t0;->d:Lhi/o0;

    return-void
.end method
