.class public Lorg/bouncycastle/cms/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public b:Lorg/bouncycastle/cms/I0;

.field public c:Luh/o;

.field public d:Lorg/bouncycastle/cms/x0;

.field public e:Lhi/b;

.field public f:Loh/G;

.field public g:[B

.field public h:Loh/G;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/e;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/e;->c:Luh/o;

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/d;->w(Ljava/lang/Object;)Luh/d;

    move-result-object p1

    invoke-virtual {p1}, Luh/d;->z()Luh/I;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/x0;

    invoke-virtual {p1}, Luh/d;->z()Luh/I;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/e;->d:Lorg/bouncycastle/cms/x0;

    :cond_0
    invoke-virtual {p1}, Luh/d;->A()Loh/G;

    move-result-object v0

    invoke-virtual {p1}, Luh/d;->v()Luh/r;

    move-result-object v1

    invoke-virtual {v1}, Luh/r;->u()Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/e;->e:Lhi/b;

    invoke-virtual {p1}, Luh/d;->y()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/e;->g:[B

    new-instance v2, Lorg/bouncycastle/cms/e$a;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/cms/e$a;-><init>(Lorg/bouncycastle/cms/e;Luh/r;)V

    invoke-virtual {p1}, Luh/d;->u()Loh/G;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/e;->f:Loh/G;

    invoke-virtual {p1}, Luh/d;->B()Loh/G;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/e;->h:Loh/G;

    iget-object p1, p0, Lorg/bouncycastle/cms/e;->e:Lhi/b;

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/e;->b:Lorg/bouncycastle/cms/I0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/e;-><init>(Luh/o;)V

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/cms/e;)Loh/G;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/e;->f:Loh/G;

    return-object p0
.end method

.method public static synthetic b(Lorg/bouncycastle/cms/e;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/e;->g:[B

    return-object p0
.end method


# virtual methods
.method public c()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->f:Loh/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    return-object v1
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->d:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->b:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public g()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->h:Loh/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->c:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e;->c:Luh/o;

    return-object v0
.end method
