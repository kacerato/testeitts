.class public final LKe/c$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final d:J = 0x7c1c7632007db36cL


# instance fields
.field public final b:LBe/f;

.field public final synthetic c:LKe/c;


# direct methods
.method public constructor <init>(LKe/c;LBe/f;)V
    .locals 0

    iput-object p1, p0, LKe/c$a;->c:LKe/c;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, LKe/c$a;->b:LBe/f;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LKe/c$a;->c:LKe/c;

    invoke-virtual {v0, p0}, LKe/c;->k1(LKe/c$a;)V

    :cond_0
    return-void
.end method
