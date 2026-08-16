.class public final synthetic LXf/K$d;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/K;->k1(LXf/m;LMf/l;)LXf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "LMf/l<",
        "LXf/m<",
        "+TR;>;",
        "Ljava/util/Iterator<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final b:LXf/K$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LXf/K$d;

    invoke-direct {v0}, LXf/K$d;-><init>()V

    sput-object v0, LXf/K$d;->b:LXf/K$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "iterator()Ljava/util/Iterator;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, LXf/m;

    const-string v3, "iterator"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(LXf/m;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "+TR;>;)",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LXf/m;

    invoke-virtual {p0, p1}, LXf/K$d;->b(LXf/m;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
