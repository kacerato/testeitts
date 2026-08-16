.class public Lorg/bouncycastle/cms/s0;
.super Lorg/bouncycastle/cms/H0;
.source "SourceFile"


# instance fields
.field public g:Luh/F;


# direct methods
.method public constructor <init>(Luh/F;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 1

    invoke-virtual {p1}, Luh/F;->x()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/H0;-><init>(Lhi/b;Lhi/b;Lorg/bouncycastle/cms/K;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/s0;->g:Luh/F;

    invoke-virtual {p1}, Luh/F;->y()Luh/P;

    move-result-object p1

    invoke-virtual {p1}, Luh/P;->x()Z

    move-result p2

    invoke-virtual {p1}, Luh/P;->u()Loh/g;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/q0;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/q0;-><init>([B)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/H0;->a:Lorg/bouncycastle/cms/F0;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Luh/z;->u(Ljava/lang/Object;)Luh/z;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/q0;

    invoke-virtual {p1}, Luh/z;->v()Lfi/d;

    move-result-object p3

    invoke-virtual {p1}, Luh/z;->x()Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/q0;-><init>(Lfi/d;Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/p0;

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    iget-object v1, p0, Lorg/bouncycastle/cms/H0;->c:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/s0;->g:Luh/F;

    invoke-virtual {v2}, Luh/F;->u()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/p0;->a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;

    move-result-object p1

    return-object p1
.end method
