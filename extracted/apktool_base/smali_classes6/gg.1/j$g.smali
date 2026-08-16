.class public final synthetic Lgg/j$g;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/j;->s()Lpg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "LMf/q<",
        "Lgg/j<",
        "*>;",
        "Lpg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lgg/j$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgg/j$g;

    invoke-direct {v0}, Lgg/j$g;-><init>()V

    sput-object v0, Lgg/j$g;->b:Lgg/j$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lgg/j;

    const-string v3, "registerSelectForReceive"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lgg/j;Lpg/m;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lgg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/j<",
            "*>;",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lgg/j;->K(Lgg/j;Lpg/m;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgg/j;

    check-cast p2, Lpg/m;

    invoke-virtual {p0, p1, p2, p3}, Lgg/j$g;->b(Lgg/j;Lpg/m;Ljava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
