.class public final Lmg/Z$c;
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
        "Lmg/f0;",
        "Lyf/j$b;",
        "Lmg/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lmg/Z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmg/Z$c;

    invoke-direct {v0}, Lmg/Z$c;-><init>()V

    sput-object v0, Lmg/Z$c;->b:Lmg/Z$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lmg/f0;Lyf/j$b;)Lmg/f0;
    .locals 1
    .param p1    # Lmg/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Leg/l1;

    if-eqz v0, :cond_0

    check-cast p2, Leg/l1;

    iget-object v0, p1, Lmg/f0;->a:Lyf/j;

    invoke-interface {p2, v0}, Leg/l1;->b0(Lyf/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lmg/f0;->a(Leg/l1;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmg/f0;

    check-cast p2, Lyf/j$b;

    invoke-virtual {p0, p1, p2}, Lmg/Z$c;->b(Lmg/f0;Lyf/j$b;)Lmg/f0;

    move-result-object p1

    return-object p1
.end method
