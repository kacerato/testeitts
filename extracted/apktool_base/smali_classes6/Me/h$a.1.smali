.class public final LMe/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/h;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public d:LDe/c;


# direct methods
.method public constructor <init>(LBe/N;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMe/h$a;->b:LBe/N;

    iput-object p2, p0, LMe/h$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/h$a;->d:LDe/c;

    iget-object v0, p0, LMe/h$a;->b:LBe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/h$a;->d:LDe/c;

    iget-object v0, p0, LMe/h$a;->b:LBe/N;

    iget-object v1, p0, LMe/h$a;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, LHe/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LMe/h$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LMe/h$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/h$a;->d:LDe/c;

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/h$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LMe/h$a;->d:LDe/c;

    iget-object p1, p0, LMe/h$a;->b:LBe/N;

    invoke-interface {p1, p0}, LBe/N;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/h$a;->d:LDe/c;

    iget-object v0, p0, LMe/h$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
