.class public final Lpg/l$b;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    i = {
        0x0
    }
    l = {
        0x1af,
        0x1b2
    }
    m = "doSelectSuspend"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/l;->Z(Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lpg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/l<",
            "TR;>;"
        }
    .end annotation
.end field

.field public e:I


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
            "Lpg/l$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/l$b;->d:Lpg/l;

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

    iput-object p1, p0, Lpg/l$b;->c:Ljava/lang/Object;

    iget p1, p0, Lpg/l$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpg/l$b;->e:I

    iget-object p1, p0, Lpg/l$b;->d:Lpg/l;

    invoke-static {p1, p0}, Lpg/l;->A(Lpg/l;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
