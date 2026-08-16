.class public final Lgg/e$d;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.BroadcastChannelImpl"
    f = "BroadcastChannel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xe6
    }
    m = "send"
    n = {
        "this",
        "element"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/e;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lgg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/e<",
            "TE;>;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lgg/e;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/e<",
            "TE;>;",
            "Lyf/f<",
            "-",
            "Lgg/e$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/e$d;->f:Lgg/e;

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

    iput-object p1, p0, Lgg/e$d;->e:Ljava/lang/Object;

    iget p1, p0, Lgg/e$d;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgg/e$d;->g:I

    iget-object p1, p0, Lgg/e$d;->f:Lgg/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lgg/e;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
