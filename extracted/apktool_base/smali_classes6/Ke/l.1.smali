.class public final LKe/l;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/l$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LFe/a;


# direct methods
.method public constructor <init>(LBe/i;LFe/a;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/l;->b:LBe/i;

    iput-object p2, p0, LKe/l;->c:LFe/a;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 3

    iget-object v0, p0, LKe/l;->b:LBe/i;

    new-instance v1, LKe/l$a;

    iget-object v2, p0, LKe/l;->c:LFe/a;

    invoke-direct {v1, p1, v2}, LKe/l$a;-><init>(LBe/f;LFe/a;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
