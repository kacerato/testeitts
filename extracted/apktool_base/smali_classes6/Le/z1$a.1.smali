.class public final LLe/z1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/z1;
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
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LUe/i;

.field public e:Z


# direct methods
.method public constructor <init>(Lhn/c;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/z1$a;->b:Lhn/c;

    iput-object p2, p0, LLe/z1$a;->c:Lhn/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/z1$a;->e:Z

    new-instance p1, LUe/i;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LUe/i;-><init>(Z)V

    iput-object p1, p0, LLe/z1$a;->d:LUe/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/z1$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LLe/z1$a;->e:Z

    iget-object v0, p0, LLe/z1$a;->c:Lhn/b;

    invoke-interface {v0, p0}, Lhn/b;->l(Lhn/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/z1$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/z1$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LLe/z1$a;->e:Z

    :cond_0
    iget-object v0, p0, LLe/z1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/z1$a;->d:LUe/i;

    invoke-virtual {v0, p1}, LUe/i;->l(Lhn/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/z1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
