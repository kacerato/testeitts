.class public final Ljg/A$l$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$1$1"
    f = "Transform.kt"
    i = {
        0x0
    }
    l = {
        0x83,
        0x85
    }
    m = "emit"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/A$l;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljg/A$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/A$l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Ljg/A$l;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/A$l<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/A$l$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/A$l$a;->e:Ljg/A$l;

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

    iput-object p1, p0, Ljg/A$l$a;->d:Ljava/lang/Object;

    iget p1, p0, Ljg/A$l$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/A$l$a;->f:I

    iget-object p1, p0, Ljg/A$l$a;->e:Ljg/A$l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/A$l;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
