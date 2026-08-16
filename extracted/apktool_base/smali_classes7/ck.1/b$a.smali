.class public Lck/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lck/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lck/b$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lck/b$a;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lck/b$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lck/b$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lck/b$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lck/b$a;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lck/b$a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lck/b$a;->d(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lck/b$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lck/b$a;
    .locals 1

    iget-object v0, p0, Lck/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lck/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lck/b$a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot build with the same algorithm name added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lck/b;
    .locals 2

    iget-object v0, p0, Lck/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lck/b;

    invoke-direct {v0, p0}, Lck/b;-><init>(Lck/b$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build with no algorithm names added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
