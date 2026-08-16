.class public final LKe/i;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/i$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LBe/i;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/i;->b:LBe/i;

    iput-wide p2, p0, LKe/i;->c:J

    iput-object p4, p0, LKe/i;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LKe/i;->e:LBe/J;

    iput-boolean p6, p0, LKe/i;->f:Z

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 9

    iget-object v0, p0, LKe/i;->b:LBe/i;

    new-instance v8, LKe/i$a;

    iget-wide v3, p0, LKe/i;->c:J

    iget-object v5, p0, LKe/i;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, LKe/i;->e:LBe/J;

    iget-boolean v7, p0, LKe/i;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, LKe/i$a;-><init>(LBe/f;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-interface {v0, v8}, LBe/i;->b(LBe/f;)V

    return-void
.end method
