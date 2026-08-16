.class public abstract LBf/q;
.super LBf/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/F;
.implements LBf/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/d;",
        "Lkotlin/jvm/internal/F<",
        "Ljava/lang/Object;",
        ">;",
        "LBf/p;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method

.method public constructor <init>(ILyf/f;)V
    .locals 0
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, LBf/d;-><init>(Lyf/f;)V

    .line 2
    iput p1, p0, LBf/q;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    iget v0, p0, LBf/q;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LBf/a;->getCompletion()Lyf/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->w(Lkotlin/jvm/internal/F;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, LBf/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
