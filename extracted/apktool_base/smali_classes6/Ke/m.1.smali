.class public final LKe/m;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/m$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/i;LFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/m;->b:LBe/i;

    iput-object p2, p0, LKe/m;->c:LFe/g;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LKe/m;->b:LBe/i;

    new-instance v1, LKe/m$a;

    invoke-direct {v1, p0, p1}, LKe/m$a;-><init>(LKe/m;LBe/f;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
