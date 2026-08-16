.class public final LKe/O;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LKe/O;->c:LBe/i;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LJe/A;

    invoke-direct {v0, p1}, LJe/A;-><init>(Lhn/c;)V

    iget-object p1, p0, LKe/O;->c:LBe/i;

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    return-void
.end method
