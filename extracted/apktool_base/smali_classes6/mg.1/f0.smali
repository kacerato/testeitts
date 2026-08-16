.class public final Lmg/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyf/j;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:[Leg/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Leg/l1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lyf/j;I)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg/f0;->a:Lyf/j;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lmg/f0;->b:[Ljava/lang/Object;

    new-array p1, p2, [Leg/l1;

    iput-object p1, p0, Lmg/f0;->c:[Leg/l1;

    return-void
.end method


# virtual methods
.method public final a(Leg/l1;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Leg/l1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l1<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmg/f0;->b:[Ljava/lang/Object;

    iget v1, p0, Lmg/f0;->d:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lmg/f0;->c:[Leg/l1;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lmg/f0;->d:I

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, p2, v1

    return-void
.end method

.method public final b(Lyf/j;)V
    .locals 4
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmg/f0;->c:[Leg/l1;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lmg/f0;->c:[Leg/l1;

    aget-object v2, v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    iget-object v3, p0, Lmg/f0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p1, v0}, Leg/l1;->h(Lyf/j;Ljava/lang/Object;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
