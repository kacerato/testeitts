.class public Loi/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/bouncycastle/cms/z;

.field public b:Lorg/bouncycastle/cms/G;


# direct methods
.method public constructor <init>(LXh/v;Lhi/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwh/k;

    invoke-direct {v0, p1, p2}, Lwh/k;-><init>(LXh/v;Lhi/E;)V

    :try_start_0
    new-instance p1, Lorg/bouncycastle/cms/G;

    sget-object p2, Lwh/b;->h:Loh/x;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/cms/G;-><init>(Loh/x;[B)V

    iput-object p1, p0, Loi/p;->b:Lorg/bouncycastle/cms/G;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/bouncycastle/cms/z;

    invoke-direct {p1}, Lorg/bouncycastle/cms/z;-><init>()V

    iput-object p1, p0, Loi/p;->a:Lorg/bouncycastle/cms/z;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unable to encode key and general name info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lorg/bouncycastle/cms/G0;)Loi/p;
    .locals 1

    iget-object v0, p0, Loi/p;->a:Lorg/bouncycastle/cms/z;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/C;->a(Lorg/bouncycastle/cms/G0;)V

    return-object p0
.end method

.method public b(LQk/F;)Loi/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Loi/p;->a:Lorg/bouncycastle/cms/z;

    iget-object v1, p0, Loi/p;->b:Lorg/bouncycastle/cms/G;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/cms/z;->e(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/y;->g()Luh/o;

    move-result-object p1

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/u;->w(Ljava/lang/Object;)Luh/u;

    move-result-object p1

    new-instance v0, Loi/o;

    new-instance v1, Lwh/o;

    new-instance v2, Lwh/l;

    invoke-direct {v2, p1}, Lwh/l;-><init>(Luh/u;)V

    invoke-direct {v1, v2}, Lwh/o;-><init>(Lwh/l;)V

    invoke-direct {v0, v1}, Loi/o;-><init>(Lwh/o;)V

    return-object v0
.end method
