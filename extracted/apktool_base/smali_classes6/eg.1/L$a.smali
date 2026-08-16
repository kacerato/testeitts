.class public final Leg/L$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/L;->a(Lyf/j;Lyf/j;Z)Lyf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/p<",
        "Lyf/j;",
        "Lyf/j$b;",
        "Lyf/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Leg/L$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/L$a;

    invoke-direct {v0}, Leg/L$a;-><init>()V

    sput-object v0, Leg/L$a;->b:Leg/L$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lyf/j;Lyf/j$b;)Lyf/j;
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Leg/J;

    if-eqz v0, :cond_0

    check-cast p2, Leg/J;

    invoke-interface {p2}, Leg/J;->l()Leg/J;

    move-result-object p2

    invoke-interface {p1, p2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyf/j;

    check-cast p2, Lyf/j$b;

    invoke-virtual {p0, p1, p2}, Leg/L$a;->b(Lyf/j;Lyf/j$b;)Lyf/j;

    move-result-object p1

    return-object p1
.end method
