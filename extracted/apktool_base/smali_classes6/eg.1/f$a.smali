.class public final Leg/f$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.AwaitKt"
    f = "Await.kt"
    i = {
        0x0
    }
    l = {
        0x36
    }
    m = "joinAll"
    n = {
        "$this$forEach$iv"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/f;->d([Leg/K0;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Leg/f$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LBf/d;-><init>(Lyf/f;)V

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

    iput-object p1, p0, Leg/f$a;->e:Ljava/lang/Object;

    iget p1, p0, Leg/f$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Leg/f$a;->f:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Leg/f;->d([Leg/K0;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
