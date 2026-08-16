.class public final Ljg/Q;
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
    .locals 0
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

    sget-object p1, Ljg/M;->START:Ljg/M;

    invoke-static {p1}, Ljg/k;->M0(Ljava/lang/Object;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "SharingStarted.Eagerly"

    return-object v0
.end method
