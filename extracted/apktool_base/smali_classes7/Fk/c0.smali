.class public LFk/c0;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/c0$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LFk/P;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LFk/P;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFk/c0;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LFk/P;->v(Ljava/lang/Object;)LFk/P;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFk/c0;->b:Ljava/util/List;

    return-void
.end method

.method public static u()LFk/c0$a;
    .locals 1

    new-instance v0, LFk/c0$a;

    invoke-direct {v0}, LFk/c0$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LFk/c0;
    .locals 1

    instance-of v0, p0, LFk/c0;

    if-eqz v0, :cond_0

    check-cast p0, LFk/c0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/c0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/c0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LFk/c0;->b:Ljava/util/List;

    invoke-static {v0}, Lzk/a;->d(Ljava/util/List;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LFk/P;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LFk/c0;->b:Ljava/util/List;

    return-object v0
.end method
