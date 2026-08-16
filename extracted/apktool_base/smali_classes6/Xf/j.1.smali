.class public final LXf/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXf/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "TT;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/a;LMf/l;)V
    .locals 1
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+TT;>;",
            "LMf/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXf/j;->a:LMf/a;

    iput-object p2, p0, LXf/j;->b:LMf/l;

    return-void
.end method

.method public static final synthetic c(LXf/j;)LMf/a;
    .locals 0

    iget-object p0, p0, LXf/j;->a:LMf/a;

    return-object p0
.end method

.method public static final synthetic d(LXf/j;)LMf/l;
    .locals 0

    iget-object p0, p0, LXf/j;->b:LMf/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LXf/j$a;

    invoke-direct {v0, p0}, LXf/j$a;-><init>(LXf/j;)V

    return-object v0
.end method
