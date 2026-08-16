.class public final synthetic Lrg/e$c;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrg/e;->u()Z
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
        "Lrg/g;",
        "Lrg/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lrg/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrg/e$c;

    invoke-direct {v0}, Lrg/e$c;-><init>()V

    sput-object v0, Lrg/e$c;->b:Lrg/e$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lrg/f;

    const-string v3, "createSegment"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(JLrg/g;)Lrg/g;
    .locals 0
    .param p3    # Lrg/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2, p3}, Lrg/f;->c(JLrg/g;)Lrg/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lrg/g;

    invoke-virtual {p0, v0, v1, p2}, Lrg/e$c;->b(JLrg/g;)Lrg/g;

    move-result-object p1

    return-object p1
.end method
