.class public final Ljg/Z$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.SubscribedSharedFlow"
    f = "Share.kt"
    i = {}
    l = {
        0x199
    }
    m = "collect"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/Z;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljg/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/Z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Ljg/Z;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/Z<",
            "TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/Z$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/Z$a;->c:Ljg/Z;

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

    iput-object p1, p0, Ljg/Z$a;->b:Ljava/lang/Object;

    iget p1, p0, Ljg/Z$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/Z$a;->d:I

    iget-object p1, p0, Ljg/Z$a;->c:Ljg/Z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/Z;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
