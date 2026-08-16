.class public final LMe/j0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/j0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x1191e1deb0e3c2ebL


# instance fields
.field public final b:LMe/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/j0$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMe/j0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMe/j0$a<",
            "*TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/j0$a$a;->b:LMe/j0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/j0$a$a;->b:LMe/j0$a;

    invoke-virtual {v0}, LMe/j0$a;->c()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LMe/j0$a$a;->b:LMe/j0$a;

    invoke-virtual {p1}, LMe/j0$a;->c()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/j0$a$a;->b:LMe/j0$a;

    invoke-virtual {v0, p1}, LMe/j0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
