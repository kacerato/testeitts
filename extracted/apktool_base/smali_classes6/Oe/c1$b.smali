.class public final LOe/c1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LOe/c1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/c1$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public volatile e:Z

.field public f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LOe/c1$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/c1$a<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/c1$b;->b:LOe/c1$a;

    iput p2, p0, LOe/c1$b;->d:I

    new-instance p1, LRe/c;

    invoke-direct {p1, p3}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/c1$b;->c:LRe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/c1$b;->e:Z

    iget-object v0, p0, LOe/c1$b;->b:LOe/c1$a;

    invoke-virtual {v0}, LOe/c1$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/c1$b;->b:LOe/c1$a;

    iget v1, p0, LOe/c1$b;->d:I

    invoke-virtual {v0, p1, v1}, LOe/c1$a;->c(LDe/c;I)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/c1$b;->c:LRe/c;

    invoke-virtual {v0, p1}, LRe/c;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, LOe/c1$b;->b:LOe/c1$a;

    invoke-virtual {p1}, LOe/c1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LOe/c1$b;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/c1$b;->e:Z

    iget-object p1, p0, LOe/c1$b;->b:LOe/c1$a;

    invoke-virtual {p1}, LOe/c1$a;->b()V

    return-void
.end method
