.class public abstract LZe/c;
.super LBe/l;
.source "SourceFile"

# interfaces
.implements Lhn/a;
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;",
        "Lhn/a<",
        "TT;TT;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract O8()Ljava/lang/Throwable;
    .annotation build LCe/g;
    .end annotation
.end method

.method public abstract P8()Z
.end method

.method public abstract Q8()Z
.end method

.method public abstract R8()Z
.end method

.method public final S8()LZe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZe/c<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LZe/g;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LZe/g;

    invoke-direct {v0, p0}, LZe/g;-><init>(LZe/c;)V

    return-object v0
.end method
