.class public final LOe/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/H$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/I<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LGe/h;

.field public final c:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public final synthetic e:LOe/H;


# direct methods
.method public constructor <init>(LOe/H;LGe/h;LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/h;",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LOe/H$a;->e:LOe/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOe/H$a;->b:LGe/h;

    iput-object p3, p0, LOe/H$a;->c:LBe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LOe/H$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/H$a;->d:Z

    iget-object v0, p0, LOe/H$a;->e:LOe/H;

    iget-object v0, v0, LOe/H;->b:LBe/G;

    new-instance v1, LOe/H$a$a;

    invoke-direct {v1, p0}, LOe/H$a$a;-><init>(LOe/H$a;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/H$a;->b:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->b(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-virtual {p0}, LOe/H$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/H$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/H$a;->d:Z

    iget-object v0, p0, LOe/H$a;->c:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
