.class public final LKe/b;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/b$a;,
        LKe/b$b;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/b;->b:LBe/i;

    iput-object p2, p0, LKe/b;->c:LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 3

    iget-object v0, p0, LKe/b;->b:LBe/i;

    new-instance v1, LKe/b$b;

    iget-object v2, p0, LKe/b;->c:LBe/i;

    invoke-direct {v1, p1, v2}, LKe/b$b;-><init>(LBe/f;LBe/i;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
