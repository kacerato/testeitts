.class public final LKe/L$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/L$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/f;"
    }
.end annotation


# static fields
.field public static final c:J = 0x47d5c91fdd74042eL


# instance fields
.field public final b:LKe/L$a;


# direct methods
.method public constructor <init>(LKe/L$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LKe/L$a$a;->b:LKe/L$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/L$a$a;->b:LKe/L$a;

    invoke-virtual {v0}, LKe/L$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/L$a$a;->b:LKe/L$a;

    invoke-virtual {v0, p1}, LKe/L$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
