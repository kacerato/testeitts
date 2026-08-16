.class public Lorg/bouncycastle/cms/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/D$a;,
        Lorg/bouncycastle/cms/D$b;,
        Lorg/bouncycastle/cms/D$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Loh/G;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Luh/Q;->v(Ljava/lang/Object;)Luh/Q;

    move-result-object v2

    invoke-static {v0, v2, p1, p2}, Lorg/bouncycastle/cms/D;->b(Ljava/util/List;Luh/Q;Lhi/b;Lorg/bouncycastle/cms/K;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cms/I0;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/I0;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static b(Ljava/util/List;Luh/Q;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 2

    invoke-virtual {p1}, Luh/Q;->u()Loh/g;

    move-result-object p1

    instance-of v0, p1, Luh/F;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/s0;

    check-cast p1, Luh/F;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/cms/s0;-><init>(Luh/F;Lhi/b;Lorg/bouncycastle/cms/K;)V

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Luh/L;

    if-eqz v0, :cond_1

    invoke-static {p1}, Luh/L;->u(Ljava/lang/Object;)Luh/L;

    move-result-object p1

    sget-object v0, Luh/l;->H8:Loh/x;

    invoke-virtual {p1}, Luh/L;->x()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cms/k0;

    invoke-virtual {p1}, Luh/L;->y()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/C;->v(Ljava/lang/Object;)Luh/C;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/cms/k0;-><init>(Luh/C;Lhi/b;Lorg/bouncycastle/cms/K;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Luh/B;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/cms/g0;

    check-cast p1, Luh/B;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/cms/g0;-><init>(Luh/B;Lhi/b;Lorg/bouncycastle/cms/K;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Luh/E;

    if-eqz v0, :cond_3

    check-cast p1, Luh/E;

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/cms/o0;->p(Ljava/util/List;Luh/E;Lhi/b;Lorg/bouncycastle/cms/K;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Luh/N;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cms/D0;

    check-cast p1, Luh/N;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/cms/D0;-><init>(Luh/N;Lhi/b;Lorg/bouncycastle/cms/K;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
