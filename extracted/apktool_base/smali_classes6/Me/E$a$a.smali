.class public final LMe/E$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/E$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LMe/E$a;


# direct methods
.method public constructor <init>(LMe/E$a;)V
    .locals 0

    iput-object p1, p0, LMe/E$a$a;->b:LMe/E$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/E$a$a;->b:LMe/E$a;

    iget-object v0, v0, LMe/E$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/E$a$a;->b:LMe/E$a;

    iget-object v0, v0, LMe/E$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/E$a$a;->b:LMe/E$a;

    invoke-static {v0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/E$a$a;->b:LMe/E$a;

    iget-object v0, v0, LMe/E$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
