.class public Loi/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lwh/m;

.field public b:Loi/m;


# direct methods
.method public constructor <init>(Lwh/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/n;->a:Lwh/m;

    return-void
.end method

.method public constructor <init>(Lwh/m;Loi/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/n;->a:Lwh/m;

    iput-object p2, p0, Loi/n;->b:Loi/m;

    return-void
.end method


# virtual methods
.method public final a(Loi/w;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v0}, Lwh/m;->C()Loh/y;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v0}, Lwh/m;->A()Lhi/b;

    move-result-object v0

    iget-object v1, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v1}, Lwh/m;->B()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v2}, Lwh/m;->v()Loh/c;

    move-result-object v2

    invoke-virtual {v2}, Loh/c;->F()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Loi/w;->a(Lhi/b;Lhi/b;[B)LQk/t;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v1}, Lwh/m;->x()Loh/c;

    move-result-object v1

    invoke-virtual {v1}, Loh/c;->F()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v0}, LQk/t;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/n;->f([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse decrypted data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b()Lhi/b;
    .locals 1

    iget-object v0, p0, Loi/n;->a:Lwh/m;

    invoke-virtual {v0}, Lwh/m;->z()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Loi/w;)Lli/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lli/h;

    invoke-virtual {p0, p1}, Loi/n;->a(Loi/w;)[B

    move-result-object p1

    invoke-static {p1}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p1

    invoke-direct {v0, p1}, Lli/h;-><init>(Lhi/q;)V

    return-object v0
.end method

.method public d(Loi/w;)[C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Loi/n;->a(Loi/w;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->d([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method public e(Loi/w;)LXh/v;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Loi/n;->a(Loi/w;)[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    return-object p1
.end method

.method public final f([B)[B
    .locals 1

    iget-object v0, p0, Loi/n;->b:Loi/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Loi/m;->a([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method
