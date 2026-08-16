.class public final LKe/x;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/x$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/x;->b:LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LKe/x;->b:LBe/i;

    new-instance v1, LKe/x$a;

    invoke-direct {v1, p1}, LKe/x$a;-><init>(LBe/f;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
