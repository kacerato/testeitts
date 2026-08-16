.class public final Lgg/j$l;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    i = {}
    l = {
        0x2e3
    }
    m = "receiveCatching-JP2dKIU$suspendImpl"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/j;->Z0(Lgg/j;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LBf/d;"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lgg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/j<",
            "TE;>;"
        }
    .end annotation
.end field

.field public d:I


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
            "Lgg/j$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/j$l;->c:Lgg/j;

    invoke-direct {p0, p2}, LBf/d;-><init>(Lyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lgg/j$l;->b:Ljava/lang/Object;

    iget p1, p0, Lgg/j$l;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgg/j$l;->d:I

    iget-object p1, p0, Lgg/j$l;->c:Lgg/j;

    invoke-static {p1, p0}, Lgg/j;->Z0(Lgg/j;Lyf/f;)Ljava/lang/Object;

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
