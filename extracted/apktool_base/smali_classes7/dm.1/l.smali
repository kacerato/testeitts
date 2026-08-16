.class public Ldm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/r<",
        "Ldm/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ldm/g;

.field public final c:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ldm/g;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Ldm/l;-><init>(Ldm/g;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ldm/g;Ljava/util/Date;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm/l;->b:Ldm/g;

    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Ldm/l;->c:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public bridge synthetic Z2(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ldm/j;

    invoke-virtual {p0, p1}, Ldm/l;->b(Ldm/j;)Z

    move-result p1

    return p1
.end method

.method public a()Ldm/g;
    .locals 1

    iget-object v0, p0, Ldm/l;->b:Ldm/g;

    return-object v0
.end method

.method public b(Ldm/j;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldm/l;->b:Ldm/g;

    iget-object v2, p0, Ldm/l;->c:Ljava/util/Date;

    invoke-virtual {p1, v1, v2}, Ldm/j;->l(Ldm/g;Ljava/util/Date;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Ldm/l;->b:Ldm/g;

    iget-object v2, p0, Ldm/l;->c:Ljava/util/Date;

    invoke-virtual {p1, v1, v2}, Ldm/j;->s(Ldm/g;Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
