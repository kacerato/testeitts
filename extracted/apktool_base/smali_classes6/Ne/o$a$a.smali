.class public final LNe/o$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/o$a;
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
.field public final b:LNe/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNe/o$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LNe/o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNe/o$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LNe/o$a$a;->b:LNe/o$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LNe/o$a$a;->b:LNe/o$a;

    invoke-virtual {v0, p0}, LNe/o$a;->c(LNe/o$a$a;)V

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

    iget-object v0, p0, LNe/o$a$a;->b:LNe/o$a;

    invoke-virtual {v0, p0, p1}, LNe/o$a;->f(LNe/o$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
