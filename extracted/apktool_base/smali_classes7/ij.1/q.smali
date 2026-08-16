.class public Lij/q;
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

.field public final b:J

.field public final c:Lij/k;

.field public final d:Lij/u;

.field public final e:LXh/v;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/t;JLij/k;Lij/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;J",
            "Lij/k;",
            "Lij/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/q;->a:Lorg/bouncycastle/util/t;

    iput-wide p2, p0, Lij/q;->b:J

    iput-object p4, p0, Lij/q;->c:Lij/k;

    iput-object p5, p0, Lij/q;->d:Lij/u;

    const/4 p1, 0x0

    iput-object p1, p0, Lij/q;->e:LXh/v;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/t;JLij/k;Lij/u;LXh/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;J",
            "Lij/k;",
            "Lij/u;",
            "LXh/v;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/q;->a:Lorg/bouncycastle/util/t;

    iput-wide p2, p0, Lij/q;->b:J

    iput-object p4, p0, Lij/q;->c:Lij/k;

    iput-object p5, p0, Lij/q;->d:Lij/u;

    iput-object p6, p0, Lij/q;->e:LXh/v;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-wide v0, p0, Lij/q;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lij/q;->b:J

    return-wide v0
.end method

.method public c()LXh/v;
    .locals 1

    iget-object v0, p0, Lij/q;->e:LXh/v;

    return-object v0
.end method

.method public d()Lij/k;
    .locals 1

    iget-object v0, p0, Lij/q;->c:Lij/k;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lij/q;->d:Lij/u;

    invoke-interface {v0}, Lij/u;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Lij/u;
    .locals 1

    iget-object v0, p0, Lij/q;->d:Lij/u;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lij/q;->a:Lorg/bouncycastle/util/t;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lij/q;->c:Lij/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
