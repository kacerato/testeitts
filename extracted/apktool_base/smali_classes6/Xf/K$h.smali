.class public final LXf/K$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/K;->H2(LXf/m;Ljava/lang/Object;)LXf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXf/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LXf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXf/m;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "+TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/K$h;->a:LXf/m;

    iput-object p2, p0, LXf/K$h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/m0$a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LXf/K$h;->d(Lkotlin/jvm/internal/m0$a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lkotlin/jvm/internal/m0$a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lkotlin/jvm/internal/m0$a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lkotlin/jvm/internal/m0$a;->b:Z

    const/4 v1, 0x0

    :cond_0
    return v1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/m0$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$a;-><init>()V

    iget-object v1, p0, LXf/K$h;->a:LXf/m;

    iget-object v2, p0, LXf/K$h;->b:Ljava/lang/Object;

    new-instance v3, LXf/L;

    invoke-direct {v3, v0, v2}, LXf/L;-><init>(Lkotlin/jvm/internal/m0$a;Ljava/lang/Object;)V

    invoke-static {v1, v3}, LXf/K;->P0(LXf/m;LMf/l;)LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
