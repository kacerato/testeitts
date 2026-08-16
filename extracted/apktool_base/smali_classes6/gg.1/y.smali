.class public final Lgg/y;
.super Lgg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lgg/g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lyf/f;
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
.method public constructor <init>(Lyf/j;Lgg/d;LMf/p;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lgg/d<",
            "TE;>;",
            "LMf/p<",
            "-",
            "Lgg/B<",
            "-TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgg/g;-><init>(Lyf/j;Lgg/d;Z)V

    invoke-static {p3, p0, p0}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    iput-object p1, p0, Lgg/y;->f:Lyf/f;

    return-void
.end method


# virtual methods
.method public h1()V
    .locals 1

    iget-object v0, p0, Lgg/y;->f:Lyf/f;

    invoke-static {v0, p0}, Lng/a;->e(Lyf/f;Lyf/f;)V

    return-void
.end method

.method public m()Lgg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lgg/g;->C1()Lgg/d;

    move-result-object v0

    invoke-interface {v0}, Lgg/d;->m()Lgg/D;

    move-result-object v0

    invoke-virtual {p0}, Leg/R0;->start()Z

    return-object v0
.end method
