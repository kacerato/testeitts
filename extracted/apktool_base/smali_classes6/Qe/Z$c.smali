.class public final LQe/Z$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x2e204f2d0e121106L


# instance fields
.field public final b:LQe/Z$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQe/Z$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(LQe/Z$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQe/Z$b<",
            "TT;*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LQe/Z$c;->b:LQe/Z$b;

    iput p2, p0, LQe/Z$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/Z$c;->b:LQe/Z$b;

    iget v1, p0, LQe/Z$c;->c:I

    invoke-virtual {v0, p1, v1}, LQe/Z$b;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LQe/Z$c;->b:LQe/Z$b;

    iget v1, p0, LQe/Z$c;->c:I

    invoke-virtual {v0, p1, v1}, LQe/Z$b;->b(Ljava/lang/Throwable;I)V

    return-void
.end method
