.class public abstract Lbf/i;
.super LBe/B;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j8()Ljava/lang/Throwable;
    .annotation build LCe/g;
    .end annotation
.end method

.method public abstract k8()Z
.end method

.method public abstract l8()Z
.end method

.method public abstract m8()Z
.end method

.method public final n8()Lbf/i;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbf/i<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lbf/g;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lbf/g;

    invoke-direct {v0, p0}, Lbf/g;-><init>(Lbf/i;)V

    return-object v0
.end method
