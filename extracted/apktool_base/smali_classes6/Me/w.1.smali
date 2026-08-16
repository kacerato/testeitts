.class public final LMe/w;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/w;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LDe/d;->a()LDe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    iget-object v0, p0, LMe/w;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
