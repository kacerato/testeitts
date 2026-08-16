.class public final LMe/k0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = 0x783c01649d3b2729L


# instance fields
.field public final b:LMe/k0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/k0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMe/k0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMe/k0$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/k0$c;->b:LMe/k0$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/k0$c;->b:LMe/k0$b;

    invoke-virtual {v0}, LMe/k0$b;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, LMe/k0$c;->b:LMe/k0$b;

    invoke-virtual {p1}, LMe/k0$b;->c()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/k0$c;->b:LMe/k0$b;

    invoke-virtual {v0, p1}, LMe/k0$b;->f(Ljava/lang/Throwable;)V

    return-void
.end method
