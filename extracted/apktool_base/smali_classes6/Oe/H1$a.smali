.class public final LOe/H1$a;
.super LWe/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LWe/e<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final c:LOe/H1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/H1$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field public final d:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(LOe/H1$c;Lbf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/H1$c<",
            "TT;*TV;>;",
            "Lbf/j<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/e;-><init>()V

    iput-object p1, p0, LOe/H1$a;->c:LOe/H1$c;

    iput-object p2, p0, LOe/H1$a;->d:Lbf/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/H1$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/H1$a;->e:Z

    iget-object v0, p0, LOe/H1$a;->c:LOe/H1$c;

    invoke-virtual {v0, p0}, LOe/H1$c;->n(LOe/H1$a;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, LWe/e;->dispose()V

    invoke-virtual {p0}, LOe/H1$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/H1$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/H1$a;->e:Z

    iget-object v0, p0, LOe/H1$a;->c:LOe/H1$c;

    invoke-virtual {v0, p1}, LOe/H1$c;->q(Ljava/lang/Throwable;)V

    return-void
.end method
