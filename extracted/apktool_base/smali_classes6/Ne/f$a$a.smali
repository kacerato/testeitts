.class public final LNe/f$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/f$a;
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
.field public static final c:J = -0x6f11cdf3dd210edfL


# instance fields
.field public final b:LNe/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNe/f$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LNe/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNe/f$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LNe/f$a$a;->b:LNe/f$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LNe/f$a$a;->b:LNe/f$a;

    invoke-virtual {v0, p0}, LNe/f$a;->c(LNe/f$a$a;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/f$a$a;->b:LNe/f$a;

    invoke-virtual {v0, p0, p1}, LNe/f$a;->e(LNe/f$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
