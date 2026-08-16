.class public Lth/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/y;

.field public final c:Loh/s;

.field public final d:Lth/L;

.field public final e:Lhi/b;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Lth/m;->b:Loh/y;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lth/m;->c:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-interface {v5}, Loh/g;->r()Loh/B;

    move-result-object v5

    instance-of v6, v5, Loh/E;

    if-eqz v6, :cond_0

    invoke-static {v5}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object v3

    :cond_0
    instance-of v6, v5, Loh/M;

    if-eqz v6, :cond_2

    check-cast v5, Loh/M;

    invoke-virtual {v5, v0}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5, v1}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v3

    :cond_4
    iput-object v3, p0, Lth/m;->d:Lth/L;

    iput-object v2, p0, Lth/m;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;)V
    .locals 1

    .line 2
    new-instance v0, Loh/s;

    invoke-direct {v0, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lth/m;-><init>([BLoh/s;)V

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lth/L;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lth/m;->b:Loh/y;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lth/m;->c:Loh/s;

    iput-object p3, p0, Lth/m;->d:Lth/L;

    const/4 p1, 0x0

    iput-object p1, p0, Lth/m;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lth/L;Lhi/b;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lth/m;->b:Loh/y;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lth/m;->c:Loh/s;

    iput-object p3, p0, Lth/m;->d:Lth/L;

    iput-object p4, p0, Lth/m;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>([BLoh/s;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lth/m;->b:Loh/y;

    iput-object p2, p0, Lth/m;->c:Loh/s;

    const/4 p1, 0x0

    iput-object p1, p0, Lth/m;->d:Lth/L;

    iput-object p1, p0, Lth/m;->e:Lhi/b;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lth/m;
    .locals 1

    instance-of v0, p0, Lth/m;

    if-eqz v0, :cond_0

    check-cast p0, Lth/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/m;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/m;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/m;->d:Lth/L;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/m;->e:Lhi/b;

    if-eqz v1, :cond_1

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/m;->b:Loh/y;

    return-object v0
.end method

.method public v()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/m;->c:Loh/s;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/m;->e:Lhi/b;

    return-object v0
.end method

.method public z()Lth/L;
    .locals 1

    iget-object v0, p0, Lth/m;->d:Lth/L;

    return-object v0
.end method
