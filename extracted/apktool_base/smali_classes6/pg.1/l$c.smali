.class public final Lpg/l$c;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    i = {}
    l = {
        0x2c2
    }
    m = "processResultAndInvokeBlockRecoveringException"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/l;->f0(Lpg/l$a;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lpg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/l<",
            "TR;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lpg/l;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/l<",
            "TR;>;",
            "Lyf/f<",
            "-",
            "Lpg/l$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/l$c;->c:Lpg/l;

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

    iput-object p1, p0, Lpg/l$c;->b:Ljava/lang/Object;

    iget p1, p0, Lpg/l$c;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpg/l$c;->d:I

    iget-object p1, p0, Lpg/l$c;->c:Lpg/l;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lpg/l;->O(Lpg/l;Lpg/l$a;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
