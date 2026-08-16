.class public final LMe/i0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/i0$a;
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
        "LDe/c;",
        ">;",
        "LBe/v<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x1191e1deb0e3c2ebL


# instance fields
.field public final b:LMe/i0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/i0$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMe/i0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMe/i0$a<",
            "*TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/i0$a$a;->b:LMe/i0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/i0$a$a;->b:LMe/i0$a;

    invoke-virtual {v0}, LMe/i0$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, LMe/i0$a$a;->b:LMe/i0$a;

    invoke-virtual {p1}, LMe/i0$a;->c()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/i0$a$a;->b:LMe/i0$a;

    invoke-virtual {v0, p1}, LMe/i0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
