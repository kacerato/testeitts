.class public final LKe/w;
.super LBe/c;
.source "SourceFile"


# instance fields
.field public final b:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/w;->b:LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 1

    iget-object v0, p0, LKe/w;->b:LBe/i;

    invoke-interface {v0, p1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
