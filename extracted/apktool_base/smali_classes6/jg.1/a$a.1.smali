.class public final Ljg/a$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.AbstractFlow"
    f = "Flow.kt"
    i = {
        0x0
    }
    l = {
        0xe6
    }
    m = "collect"
    n = {
        "safeCollector"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/a;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Ljg/a;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/a<",
            "TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/a$a;->d:Ljg/a;

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

    iput-object p1, p0, Ljg/a$a;->c:Ljava/lang/Object;

    iget p1, p0, Ljg/a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/a$a;->e:I

    iget-object p1, p0, Ljg/a$a;->d:Ljg/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/a;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
