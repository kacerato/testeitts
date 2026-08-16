.class public Lorg/bouncycastle/cms/i;
.super Lorg/bouncycastle/cms/C;
.source "SourceFile"


# instance fields
.field public final C:Ljava/util/List;

.field public D:Lorg/bouncycastle/cms/d;

.field public E:Lorg/bouncycastle/cms/d;

.field public F:Luh/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/cms/C;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/i;->C:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/i;->D:Lorg/bouncycastle/cms/d;

    iput-object v0, p0, Lorg/bouncycastle/cms/i;->E:Lorg/bouncycastle/cms/d;

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/cms/G0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/i;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/bouncycastle/cms/x0;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/x0;->c()Luh/I;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/i;->F:Luh/I;

    return-void
.end method

.method public d(Lorg/bouncycastle/cms/d;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/i;->D:Lorg/bouncycastle/cms/d;

    return-void
.end method

.method public e(Lorg/bouncycastle/cms/d;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/i;->E:Lorg/bouncycastle/cms/d;

    return-void
.end method
