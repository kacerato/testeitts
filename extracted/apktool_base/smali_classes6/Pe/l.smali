.class public final LPe/l;
.super LXe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LXe/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LFe/a;

.field public final f:LFe/a;

.field public final g:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:LFe/q;

.field public final i:LFe/a;


# direct methods
.method public constructor <init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;",
            "LFe/q;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/l;->a:LXe/b;

    const-string p1, "onNext is null"

    invoke-static {p2, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/g;

    iput-object p1, p0, LPe/l;->b:LFe/g;

    const-string p1, "onAfterNext is null"

    invoke-static {p3, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/g;

    iput-object p1, p0, LPe/l;->c:LFe/g;

    const-string p1, "onError is null"

    invoke-static {p4, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/g;

    iput-object p1, p0, LPe/l;->d:LFe/g;

    const-string p1, "onComplete is null"

    invoke-static {p5, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/a;

    iput-object p1, p0, LPe/l;->e:LFe/a;

    const-string p1, "onAfterTerminated is null"

    invoke-static {p6, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/a;

    iput-object p1, p0, LPe/l;->f:LFe/a;

    const-string p1, "onSubscribe is null"

    invoke-static {p7, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/g;

    iput-object p1, p0, LPe/l;->g:LFe/g;

    const-string p1, "onRequest is null"

    invoke-static {p8, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/q;

    iput-object p1, p0, LPe/l;->h:LFe/q;

    const-string p1, "onCancel is null"

    invoke-static {p9, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/a;

    iput-object p1, p0, LPe/l;->i:LFe/a;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, LPe/l;->a:LXe/b;

    invoke-virtual {v0}, LXe/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LXe/b;->U([Lhn/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lhn/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, LPe/l$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, LPe/l$a;-><init>(Lhn/c;LPe/l;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LPe/l;->a:LXe/b;

    invoke-virtual {p1, v1}, LXe/b;->Q([Lhn/c;)V

    return-void
.end method
