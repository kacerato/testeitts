.class public abstract Lz2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d$b;,
        Lz2/d$c;,
        Lz2/d$d;
    }
.end annotation

.annotation runtime Lz2/e;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lz2/d;
    .locals 1

    invoke-static {}, Lz2/d$b;->e()Lz2/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lz2/d;
    .locals 2

    new-instance v0, Lz2/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/d$c;-><init>(Lz2/d$a;)V

    return-object v0
.end method

.method public static d()Lz2/d;
    .locals 2

    new-instance v0, Lz2/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/d$d;-><init>(Lz2/d$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lz2/j;",
            ">;)V"
        }
    .end annotation
.end method
