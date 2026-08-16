.class public final Lgg/j$m;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xbf0
    }
    m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk"
    n = {
        "this",
        "segment",
        "index",
        "r"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "J$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/j;->a1(Lgg/q;IJLyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lgg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/j<",
            "TE;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Lgg/j;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/j<",
            "TE;>;",
            "Lyf/f<",
            "-",
            "Lgg/j$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/j$m;->g:Lgg/j;

    invoke-direct {p0, p2}, LBf/d;-><init>(Lyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lgg/j$m;->f:Ljava/lang/Object;

    iget p1, p0, Lgg/j$m;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgg/j$m;->h:I

    iget-object v0, p0, Lgg/j$m;->g:Lgg/j;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgg/j;->E(Lgg/j;Lgg/q;IJLyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lgg/p;->b(Ljava/lang/Object;)Lgg/p;

    move-result-object p1

    return-object p1
.end method
