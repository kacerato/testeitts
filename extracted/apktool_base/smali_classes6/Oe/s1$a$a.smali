.class public final LOe/s1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/s1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x78a53ec6852cfbbfL


# instance fields
.field public final synthetic b:LOe/s1$a;


# direct methods
.method public constructor <init>(LOe/s1$a;)V
    .locals 0

    iput-object p1, p0, LOe/s1$a$a;->b:LOe/s1$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/s1$a$a;->b:LOe/s1$a;

    invoke-virtual {v0}, LOe/s1$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LOe/s1$a$a;->b:LOe/s1$a;

    invoke-virtual {p1}, LOe/s1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/s1$a$a;->b:LOe/s1$a;

    invoke-virtual {v0, p1}, LOe/s1$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
