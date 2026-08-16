.class public abstract Ldj/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhi/D;

.field public final b:Lorg/bouncycastle/cms/P;

.field public final c:Lzh/h;


# direct methods
.method public constructor <init>(Lzh/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Ldj/g;->a:Lhi/D;

    new-instance v0, Lorg/bouncycastle/cms/P;

    invoke-direct {v0}, Lorg/bouncycastle/cms/P;-><init>()V

    iput-object v0, p0, Ldj/g;->b:Lorg/bouncycastle/cms/P;

    iput-object p1, p0, Ldj/g;->c:Lzh/h;

    return-void
.end method


# virtual methods
.method public a(Loh/x;ZLoh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldj/g;->a:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/dvcs/DVCSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot encode extension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Lzh/k;)Ldj/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    iget-object v0, p0, Ldj/g;->a:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    iget-object v1, p0, Ldj/g;->a:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzh/h;->f(Lhi/C;)V

    :cond_0
    new-instance v0, Lzh/f;

    iget-object v1, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v1}, Lzh/h;->a()Lzh/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lzh/f;-><init>(Lzh/g;Lzh/k;)V

    new-instance p1, Ldj/f;

    new-instance v1, Luh/o;

    sget-object v2, Lzh/e;->e:Loh/x;

    invoke-direct {v1, v2, v0}, Luh/o;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p1, v1}, Ldj/f;-><init>(Luh/o;)V

    return-object p1
.end method

.method public c(Lhi/E;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->b(Lhi/E;)V

    return-void
.end method

.method public d(Lhi/F;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->c(Lhi/F;)V

    return-void
.end method

.method public e(Lhi/E;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->d(Lhi/E;)V

    return-void
.end method

.method public f(Lhi/F;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->e(Lhi/F;)V

    return-void
.end method

.method public g(Ljava/math/BigInteger;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->g(Ljava/math/BigInteger;)V

    return-void
.end method

.method public h(Lhi/E;)V
    .locals 1

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    invoke-virtual {v0, p1}, Lzh/h;->j(Lhi/E;)V

    return-void
.end method
