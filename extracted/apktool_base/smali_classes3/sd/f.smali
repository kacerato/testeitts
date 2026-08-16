.class public Lsd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lqd/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lsd/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqd/i;Lsd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;",
            "Lsd/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd/f;->a:Lqd/i;

    iput-object p2, p0, Lsd/f;->b:Lsd/b;

    return-void
.end method


# virtual methods
.method public a(Lqd/p;)V
    .locals 2

    iget-object v0, p0, Lsd/f;->b:Lsd/b;

    iget-object v1, p0, Lsd/f;->a:Lqd/i;

    invoke-virtual {v0, v1}, Lsd/b;->e(Lqd/i;)Lqd/j;

    move-result-object v0

    check-cast v0, Lqd/c;

    invoke-virtual {v0, p1}, Lqd/c;->d(Lqd/p;)V

    iget-object p1, p0, Lsd/f;->b:Lsd/b;

    iget-object v0, p0, Lsd/f;->a:Lqd/i;

    invoke-virtual {p1, v0}, Lsd/b;->d(Lqd/i;)Lqd/A;

    move-result-object p1

    invoke-interface {p1}, Lqd/A;->d()V

    return-void
.end method
