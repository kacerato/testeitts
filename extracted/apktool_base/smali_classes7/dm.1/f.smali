.class public abstract Ldm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm/f$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldm/f$b;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldm/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(LQk/p;[B)[B
    .locals 3

    new-instance v0, Ldm/f$b;

    invoke-interface {p1}, LQk/p;->a()Lhi/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Ldm/f$b;-><init>(Lhi/b;[BLdm/f$a;)V

    iget-object v1, p0, Ldm/f;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Ldm/f;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ldm/f;->b(LQk/p;[B)[B

    move-result-object p1

    iget-object p2, p0, Ldm/f;->a:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public abstract b(LQk/p;[B)[B
.end method
