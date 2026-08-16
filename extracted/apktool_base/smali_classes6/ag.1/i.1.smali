.class public final Lag/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXf/m<",
        "LVf/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lnf/Z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILMf/p;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "LMf/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lnf/Z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/i;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lag/i;->b:I

    iput p3, p0, Lag/i;->c:I

    iput-object p4, p0, Lag/i;->d:LMf/p;

    return-void
.end method

.method public static final synthetic c(Lag/i;)LMf/p;
    .locals 0

    iget-object p0, p0, Lag/i;->d:LMf/p;

    return-object p0
.end method

.method public static final synthetic d(Lag/i;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lag/i;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic e(Lag/i;)I
    .locals 0

    iget p0, p0, Lag/i;->c:I

    return p0
.end method

.method public static final synthetic f(Lag/i;)I
    .locals 0

    iget p0, p0, Lag/i;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LVf/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lag/i$a;

    invoke-direct {v0, p0}, Lag/i$a;-><init>(Lag/i;)V

    return-object v0
.end method
