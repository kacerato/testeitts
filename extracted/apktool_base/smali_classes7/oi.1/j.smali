.class public Loi/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loh/s;

.field public final b:Lth/L;

.field public c:Lth/n;

.field public d:Loh/y;


# direct methods
.method public constructor <init>(Loh/s;Lth/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/j;->a:Loh/s;

    iput-object p2, p0, Loi/j;->b:Lth/L;

    return-void
.end method


# virtual methods
.method public a()Loi/i;
    .locals 6

    new-instance v0, Loi/i;

    new-instance v1, Lth/l;

    iget-object v2, p0, Loi/j;->a:Loh/s;

    iget-object v3, p0, Loi/j;->b:Lth/L;

    iget-object v4, p0, Loi/j;->c:Lth/n;

    iget-object v5, p0, Loi/j;->d:Loh/y;

    invoke-direct {v1, v2, v3, v4, v5}, Lth/l;-><init>(Loh/s;Lth/L;Lth/n;Loh/y;)V

    invoke-direct {v0, v1}, Loi/i;-><init>(Lth/l;)V

    return-object v0
.end method

.method public b(Lli/h;)Loi/j;
    .locals 3

    iget-object v0, p0, Loi/j;->c:Lth/n;

    if-nez v0, :cond_0

    new-instance v0, Lth/n;

    new-instance v1, Lth/i;

    new-instance v2, Lth/b;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {v2, p1}, Lth/b;-><init>(Lhi/q;)V

    invoke-direct {v1, v2}, Lth/i;-><init>(Lth/b;)V

    invoke-direct {v0, v1}, Lth/n;-><init>(Lth/i;)V

    iput-object v0, p0, Loi/j;->c:Lth/n;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificate in response already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lorg/bouncycastle/cms/y;)Loi/j;
    .locals 3

    iget-object v0, p0, Loi/j;->c:Lth/n;

    if-nez v0, :cond_0

    new-instance v0, Lth/n;

    new-instance v1, Lth/i;

    new-instance v2, Lwh/l;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/y;->g()Luh/o;

    move-result-object p1

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/u;->w(Ljava/lang/Object;)Luh/u;

    move-result-object p1

    invoke-direct {v2, p1}, Lwh/l;-><init>(Luh/u;)V

    invoke-direct {v1, v2}, Lth/i;-><init>(Lwh/l;)V

    invoke-direct {v0, v1}, Lth/n;-><init>(Lth/i;)V

    iput-object v0, p0, Loi/j;->c:Lth/n;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificate in response already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lth/b;)Loi/j;
    .locals 2

    iget-object v0, p0, Loi/j;->c:Lth/n;

    if-nez v0, :cond_0

    new-instance v0, Lth/n;

    new-instance v1, Lth/i;

    invoke-direct {v1, p1}, Lth/i;-><init>(Lth/b;)V

    invoke-direct {v0, v1}, Lth/n;-><init>(Lth/i;)V

    iput-object v0, p0, Loi/j;->c:Lth/n;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificate in response already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e([B)Loi/j;
    .locals 1

    iget-object v0, p0, Loi/j;->d:Loh/y;

    if-nez v0, :cond_0

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Loi/j;->d:Loh/y;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "response info already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
