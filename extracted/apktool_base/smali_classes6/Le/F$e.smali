.class public final LLe/F$e;
.super LLe/F$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/F$h<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = 0x4b43427a9c2e580L


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/F$h;-><init>(Lhn/c;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 2

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "create: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LLe/F$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
