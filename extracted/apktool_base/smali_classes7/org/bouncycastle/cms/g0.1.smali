.class public Lorg/bouncycastle/cms/g0;
.super Lorg/bouncycastle/cms/H0;
.source "SourceFile"


# instance fields
.field public g:Luh/B;


# direct methods
.method public constructor <init>(Luh/B;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 1

    invoke-virtual {p1}, Luh/B;->y()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/H0;-><init>(Lhi/b;Lhi/b;Lorg/bouncycastle/cms/K;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/g0;->g:Luh/B;

    invoke-virtual {p1}, Luh/B;->x()Luh/A;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/e0;

    invoke-virtual {p1}, Luh/A;->x()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/e0;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/cms/H0;->a:Lorg/bouncycastle/cms/F0;

    return-void
.end method


# virtual methods
.method public j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/d0;

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    iget-object v1, p0, Lorg/bouncycastle/cms/H0;->c:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/g0;->g:Luh/B;

    invoke-virtual {v2}, Luh/B;->u()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/d0;->a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;

    move-result-object p1

    return-object p1
.end method
