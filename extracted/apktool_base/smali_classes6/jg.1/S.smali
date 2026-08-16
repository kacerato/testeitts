.class public final Ljg/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/U;)Ljg/i;
    .locals 2
    .param p1    # Ljg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/U<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljg/i<",
            "Ljg/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/S$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljg/S$a;-><init>(Ljg/U;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "SharingStarted.Lazily"

    return-object v0
.end method
