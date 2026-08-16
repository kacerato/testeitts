.class public final LKe/z;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation build LCe/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "LBe/A<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/c;


# direct methods
.method public constructor <init>(LBe/c;)V
    .locals 0

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LKe/z;->b:LBe/c;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "LBe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LKe/z;->b:LBe/c;

    new-instance v1, LNe/i;

    invoke-direct {v1, p1}, LNe/i;-><init>(LBe/N;)V

    invoke-virtual {v0, v1}, LBe/c;->b(LBe/f;)V

    return-void
.end method
