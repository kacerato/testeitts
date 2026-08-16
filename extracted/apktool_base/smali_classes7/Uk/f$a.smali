.class public LUk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/f;->b()LQk/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LUk/f;


# direct methods
.method public constructor <init>(LUk/f;)V
    .locals 0

    iput-object p1, p0, LUk/f$a;->a:LUk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;[C)LQk/A;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    sget-object v0, LXh/t;->k1:Loh/x;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LUk/e;

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/r;->u(Ljava/lang/Object;)LXh/r;

    move-result-object p1

    invoke-direct {v0, p1}, LUk/e;-><init>(LXh/r;)V

    iget-object p1, p0, LUk/f$a;->a:LUk/f;

    invoke-static {p1}, LUk/f;->a(LUk/f;)Ldk/f;

    move-result-object p1

    invoke-virtual {v0, p1}, LUk/e;->g(Ldk/f;)LUk/e;

    move-result-object p1

    invoke-virtual {p1, p2}, LUk/e;->f([C)LQk/A;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string p2, "protection algorithm not PB mac based"

    invoke-direct {p1, p2}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
