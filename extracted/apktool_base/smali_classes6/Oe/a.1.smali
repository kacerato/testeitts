.class public abstract LOe/a;
.super LBe/B;
.source "SourceFile"

# interfaces
.implements LIe/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TU;>;",
        "LIe/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/a;->b:LBe/G;

    return-void
.end method


# virtual methods
.method public final source()LBe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/G<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    return-object v0
.end method
