.class public final synthetic Lgg/k$a;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/k;->y()LWf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "LMf/p<",
        "Ljava/lang/Long;",
        "Lgg/q<",
        "TE;>;",
        "Lgg/q<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field public static final b:Lgg/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgg/k$a;

    invoke-direct {v0}, Lgg/k$a;-><init>()V

    sput-object v0, Lgg/k$a;->b:Lgg/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lgg/k;

    const-string v3, "createSegment"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(JLgg/q;)Lgg/q;
    .locals 0
    .param p3    # Lgg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lgg/q<",
            "TE;>;)",
            "Lgg/q<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2, p3}, Lgg/k;->c(JLgg/q;)Lgg/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lgg/q;

    invoke-virtual {p0, v0, v1, p2}, Lgg/k$a;->b(JLgg/q;)Lgg/q;

    move-result-object p1

    return-object p1
.end method
