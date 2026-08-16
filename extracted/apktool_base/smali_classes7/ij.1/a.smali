.class public Lij/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/util/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lorg/bouncycastle/util/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lij/k;

.field public final d:Lij/u;

.field public final e:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lij/k;Lij/u;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;",
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;",
            "Lij/k;",
            "Lij/u;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/a;->a:Lorg/bouncycastle/util/t;

    iput-object p3, p0, Lij/a;->c:Lij/k;

    iput-object p4, p0, Lij/a;->d:Lij/u;

    iput-boolean p5, p0, Lij/a;->e:Z

    iput-object p2, p0, Lij/a;->b:Lorg/bouncycastle/util/t;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lij/a;->a:Lorg/bouncycastle/util/t;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lij/a;->b:Lorg/bouncycastle/util/t;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no CRLs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lij/k;
    .locals 1

    iget-object v0, p0, Lij/a;->c:Lij/k;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lij/a;->d:Lij/u;

    invoke-interface {v0}, Lij/u;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lij/a;->b:Lorg/bouncycastle/util/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lij/a;->a:Lorg/bouncycastle/util/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lij/a;->e:Z

    return v0
.end method
