.class public final Leg/T0;
.super Leg/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leg/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;LMf/p;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leg/a0;-><init>(Lyf/j;Z)V

    invoke-static {p2, p0, p0}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    iput-object p1, p0, Leg/T0;->e:Lyf/f;

    return-void
.end method


# virtual methods
.method public h1()V
    .locals 1

    iget-object v0, p0, Leg/T0;->e:Lyf/f;

    invoke-static {v0, p0}, Lng/a;->e(Lyf/f;Lyf/f;)V

    return-void
.end method
