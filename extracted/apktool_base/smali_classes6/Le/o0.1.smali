.class public final LLe/o0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/o0$d;,
        LLe/o0$c;,
        LLe/o0$a;,
        LLe/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LEe/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Z

.field public final h:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "LFe/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/o;LFe/o;IZLFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;IZ",
            "LFe/o<",
            "-",
            "LFe/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/o0;->d:LFe/o;

    iput-object p3, p0, LLe/o0;->e:LFe/o;

    iput p4, p0, LLe/o0;->f:I

    iput-boolean p5, p0, LLe/o0;->g:Z

    iput-object p6, p0, LLe/o0;->h:LFe/o;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LEe/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/o0;->h:LFe/o;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move-object v8, v0

    move-object v9, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    new-instance v0, LLe/o0$a;

    invoke-direct {v0, v1}, LLe/o0$a;-><init>(Ljava/util/Queue;)V

    iget-object v2, p0, LLe/o0;->h:LFe/o;

    invoke-interface {v2, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v0, LLe/o0$b;

    iget-object v4, p0, LLe/o0;->d:LFe/o;

    iget-object v5, p0, LLe/o0;->e:LFe/o;

    iget v6, p0, LLe/o0;->f:I

    iget-boolean v7, p0, LLe/o0;->g:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, LLe/o0$b;-><init>(Lhn/c;LFe/o;LFe/o;IZLjava/util/Map;Ljava/util/Queue;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void

    :goto_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    sget-object v1, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    invoke-interface {p1, v1}, Lhn/c;->j(Lhn/d;)V

    invoke-interface {p1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
