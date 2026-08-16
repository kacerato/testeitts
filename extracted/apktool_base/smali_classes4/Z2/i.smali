.class public LZ2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LT2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT2/g<",
            "*>;"
        }
    .end annotation

    new-instance v0, LZ2/i$a;

    invoke-direct {v0}, LZ2/i$a;-><init>()V

    const-class v1, LZ2/h;

    invoke-static {v0, v1}, LT2/g;->p(Ljava/lang/Object;Ljava/lang/Class;)LT2/g;

    move-result-object v0

    return-object v0
.end method
