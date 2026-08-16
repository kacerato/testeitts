.class public final LXf/K$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/K;->I2(LXf/m;[Ljava/lang/Object;)LXf/m;
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

.field public final synthetic b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXf/m;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "+TT;>;[TT;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/K$i;->a:LXf/m;

    iput-object p2, p0, LXf/K$i;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, LXf/K$i;->d([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lpf/A;->B8([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LXf/K$i;->a:LXf/m;

    iget-object v1, p0, LXf/K$i;->b:[Ljava/lang/Object;

    new-instance v2, LXf/M;

    invoke-direct {v2, v1}, LXf/M;-><init>([Ljava/lang/Object;)V

    invoke-static {v0, v2}, LXf/K;->W0(LXf/m;LMf/l;)LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
