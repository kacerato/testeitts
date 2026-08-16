.class public Lij/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/net/URL;

.field public c:Lij/s$a;

.field public d:Lij/j;

.field public e:Lij/p;

.field public f:Lij/g;

.field public g:[B


# direct methods
.method public constructor <init>(Lij/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lij/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lij/l;->a:Ljava/lang/String;

    iget-object v0, p1, Lij/k;->b:Ljava/net/URL;

    iput-object v0, p0, Lij/l;->b:Ljava/net/URL;

    iget-object v0, p1, Lij/k;->g:Lij/p;

    iput-object v0, p0, Lij/l;->e:Lij/p;

    iget-object v0, p1, Lij/k;->d:[B

    iput-object v0, p0, Lij/l;->g:[B

    iget-object v0, p1, Lij/k;->e:Lij/j;

    iput-object v0, p0, Lij/l;->d:Lij/j;

    iget-object v0, p1, Lij/k;->c:Lij/s$a;

    invoke-virtual {v0}, Lij/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij/s$a;

    iput-object v0, p0, Lij/l;->c:Lij/s$a;

    invoke-virtual {p1}, Lij/k;->a()Lij/g;

    move-result-object p1

    iput-object p1, p0, Lij/l;->f:Lij/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lij/l;->b:Ljava/net/URL;

    new-instance p1, Lij/s$a;

    invoke-direct {p1}, Lij/s$a;-><init>()V

    iput-object p1, p0, Lij/l;->c:Lij/s$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lij/l;
    .locals 1

    iget-object v0, p0, Lij/l;->c:Lij/s$a;

    invoke-virtual {v0, p1, p2}, Lij/s$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lij/k;
    .locals 9

    new-instance v8, Lij/k;

    iget-object v1, p0, Lij/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lij/l;->b:Ljava/net/URL;

    iget-object v3, p0, Lij/l;->g:[B

    iget-object v4, p0, Lij/l;->d:Lij/j;

    iget-object v5, p0, Lij/l;->e:Lij/p;

    iget-object v6, p0, Lij/l;->c:Lij/s$a;

    iget-object v7, p0, Lij/l;->f:Lij/g;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lij/k;-><init>(Ljava/lang/String;Ljava/net/URL;[BLij/j;Lij/p;Lij/s$a;Lij/g;)V

    return-object v8
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lij/l;
    .locals 1

    iget-object v0, p0, Lij/l;->c:Lij/s$a;

    invoke-virtual {v0, p1, p2}, Lij/s$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lij/g;)Lij/l;
    .locals 0

    iput-object p1, p0, Lij/l;->f:Lij/g;

    return-object p0
.end method

.method public e(Lij/p;)Lij/l;
    .locals 0

    iput-object p1, p0, Lij/l;->e:Lij/p;

    return-object p0
.end method

.method public f([B)Lij/l;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lij/l;->g:[B

    return-object p0
.end method

.method public g(Lij/j;)Lij/l;
    .locals 0

    iput-object p1, p0, Lij/l;->d:Lij/j;

    return-object p0
.end method

.method public h(Ljava/net/URL;)Lij/l;
    .locals 0

    iput-object p1, p0, Lij/l;->b:Ljava/net/URL;

    return-object p0
.end method
