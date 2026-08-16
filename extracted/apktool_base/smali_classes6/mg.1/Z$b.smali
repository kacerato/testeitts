.class public final Lmg/Z$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/p<",
        "Leg/l1<",
        "*>;",
        "Lyf/j$b;",
        "Leg/l1<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lmg/Z$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmg/Z$b;

    invoke-direct {v0}, Lmg/Z$b;-><init>()V

    sput-object v0, Lmg/Z$b;->b:Lmg/Z$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Leg/l1;Lyf/j$b;)Leg/l1;
    .locals 0
    .param p1    # Leg/l1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l1<",
            "*>;",
            "Lyf/j$b;",
            ")",
            "Leg/l1<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p1, p2, Leg/l1;

    if-eqz p1, :cond_1

    check-cast p2, Leg/l1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Leg/l1;

    check-cast p2, Lyf/j$b;

    invoke-virtual {p0, p1, p2}, Lmg/Z$b;->b(Leg/l1;Lyf/j$b;)Leg/l1;

    move-result-object p1

    return-object p1
.end method
