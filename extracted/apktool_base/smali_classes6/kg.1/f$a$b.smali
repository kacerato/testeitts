.class public final Lkg/f$a$b;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2"
    f = "Merge.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x42
    }
    m = "emit"
    n = {
        "this",
        "inner"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/f$a;->a(Ljg/i;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lkg/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/f$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lkg/f$a;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/f$a<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lkg/f$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/f$a$b;->e:Lkg/f$a;

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

    iput-object p1, p0, Lkg/f$a$b;->d:Ljava/lang/Object;

    iget p1, p0, Lkg/f$a$b;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkg/f$a$b;->f:I

    iget-object p1, p0, Lkg/f$a$b;->e:Lkg/f$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkg/f$a;->a(Ljg/i;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
