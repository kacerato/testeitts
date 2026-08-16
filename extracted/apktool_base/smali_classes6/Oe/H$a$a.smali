.class public final LOe/H$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LOe/H$a;


# direct methods
.method public constructor <init>(LOe/H$a;)V
    .locals 0

    iput-object p1, p0, LOe/H$a$a;->b:LOe/H$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/H$a$a;->b:LOe/H$a;

    iget-object v0, v0, LOe/H$a;->c:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/H$a$a;->b:LOe/H$a;

    iget-object v0, v0, LOe/H$a;->b:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->b(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/H$a$a;->b:LOe/H$a;

    iget-object v0, v0, LOe/H$a;->c:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/H$a$a;->b:LOe/H$a;

    iget-object v0, v0, LOe/H$a;->c:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
