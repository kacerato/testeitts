.class public final Ljg/b$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    i = {
        0x0
    }
    l = {
        0x14e
    }
    m = "collectTo"
    n = {
        "scope"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/b;->f(Lgg/B;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Ljg/b;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/b<",
            "TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/b$a;->d:Ljg/b;

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

    iput-object p1, p0, Ljg/b$a;->c:Ljava/lang/Object;

    iget p1, p0, Ljg/b$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljg/b$a;->e:I

    iget-object p1, p0, Ljg/b$a;->d:Ljg/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljg/b;->f(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
