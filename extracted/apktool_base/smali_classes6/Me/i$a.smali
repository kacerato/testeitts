.class public final LMe/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/v<",
        "Ljava/lang/Object;",
        ">;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:LDe/c;


# direct methods
.method public constructor <init>(LBe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMe/i$a;->b:LBe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/i$a;->c:LDe/c;

    iget-object v0, p0, LMe/i$a;->b:LBe/N;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    sget-object p1, LGe/d;->DISPOSED:LGe/d;

    iput-object p1, p0, LMe/i$a;->c:LDe/c;

    iget-object p1, p0, LMe/i$a;->b:LBe/N;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LMe/i$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LMe/i$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/i$a;->c:LDe/c;

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/i$a;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LMe/i$a;->c:LDe/c;

    iget-object p1, p0, LMe/i$a;->b:LBe/N;

    invoke-interface {p1, p0}, LBe/N;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/i$a;->c:LDe/c;

    iget-object v0, p0, LMe/i$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
