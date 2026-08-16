.class public final LKe/G;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/G$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/i;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/G;->b:LBe/i;

    iput-object p2, p0, LKe/G;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 3

    iget-object v0, p0, LKe/G;->b:LBe/i;

    new-instance v1, LKe/G$a;

    iget-object v2, p0, LKe/G;->c:LBe/J;

    invoke-direct {v1, p1, v2}, LKe/G$a;-><init>(LBe/f;LBe/J;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
