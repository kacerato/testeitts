.class public Lorg/bouncycastle/cms/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Luh/I;


# direct methods
.method public constructor <init>(Luh/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/x0;->a:Luh/I;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/util/t;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/x0;->a:Luh/I;

    invoke-virtual {v1}, Luh/I;->u()Loh/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->d(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/bouncycastle/util/t;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/x0;->a:Luh/I;

    invoke-virtual {v1}, Luh/I;->v()Loh/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->e(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Luh/I;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/x0;->a:Luh/I;

    return-object v0
.end method
