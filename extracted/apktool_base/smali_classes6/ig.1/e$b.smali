.class public final Lig/e$b;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl"
    f = "DebugCoroutineInfoImpl.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xab
    }
    m = "yieldFrames"
    n = {
        "this",
        "$this$yieldFrames",
        "frame"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/e;->k(LXf/o;LBf/e;Lyf/f;)Ljava/lang/Object;
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

.field public final synthetic f:Lig/e;

.field public g:I


# direct methods
.method public constructor <init>(Lig/e;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/e;",
            "Lyf/f<",
            "-",
            "Lig/e$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lig/e$b;->f:Lig/e;

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

    iput-object p1, p0, Lig/e$b;->e:Ljava/lang/Object;

    iget p1, p0, Lig/e$b;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lig/e$b;->g:I

    iget-object p1, p0, Lig/e$b;->f:Lig/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lig/e;->a(Lig/e;LXf/o;LBf/e;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
