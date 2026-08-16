.class public Lorg/bouncycastle/cms/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lli/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/w0;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/cms/w0;->b:Ljava/util/List;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/w0;-><init>(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->r(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/w0;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/cms/w0;->a:Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->q(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/w0;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/cms/w0;->b:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/cms/x0;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cms/w0;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/cms/X;->j(Ljava/util/List;)Loh/G;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cms/w0;->b:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/cms/X;->j(Ljava/util/List;)Loh/G;

    move-result-object v1

    :goto_1
    new-instance v2, Lorg/bouncycastle/cms/x0;

    new-instance v3, Luh/I;

    invoke-direct {v3, v0, v1}, Luh/I;-><init>(Loh/G;Loh/G;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    return-object v2
.end method
