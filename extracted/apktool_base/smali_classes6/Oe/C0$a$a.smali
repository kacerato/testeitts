.class public final LOe/C0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/C0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public static final c:J = -0x28bcbbd2bea3b5e9L


# instance fields
.field public final b:LOe/C0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/C0$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/C0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/C0$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/C0$a$a;->b:LOe/C0$a;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/C0$a$a;->b:LOe/C0$a;

    invoke-virtual {v0, p1}, LOe/C0$a;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/C0$a$a;->b:LOe/C0$a;

    invoke-virtual {v0, p1}, LOe/C0$a;->g(Ljava/lang/Throwable;)V

    return-void
.end method
