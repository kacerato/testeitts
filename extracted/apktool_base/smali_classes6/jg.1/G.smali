.class public final Ljg/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/U;
.implements Ljg/c;
.implements Lkg/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/U<",
        "TT;>;",
        "Ljg/c<",
        "TT;>;",
        "Lkg/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Leg/K0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic c:Ljg/U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/U<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/U;Leg/K0;)V
    .locals 0
    .param p1    # Ljg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/U<",
            "+TT;>;",
            "Leg/K0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljg/G;->b:Leg/K0;

    iput-object p1, p0, Ljg/G;->c:Ljg/U;

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ljg/G;->c:Ljg/U;

    invoke-interface {v0, p1, p2}, Ljg/I;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljg/G;->c:Ljg/U;

    invoke-interface {v0}, Ljg/I;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lyf/j;ILgg/i;)Ljg/i;
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljg/W;->d(Ljg/U;Lyf/j;ILgg/i;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljg/G;->c:Ljg/U;

    invoke-interface {v0}, Ljg/U;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
