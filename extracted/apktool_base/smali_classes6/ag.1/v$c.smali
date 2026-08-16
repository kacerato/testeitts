.class public final synthetic Lag/v$c;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/v;->f(Ljava/lang/CharSequence;I)LXf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "LMf/l<",
        "Lag/r;",
        "Lag/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lag/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lag/v$c;

    invoke-direct {v0}, Lag/v$c;-><init>()V

    sput-object v0, Lag/v$c;->b:Lag/v$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lag/r;

    const-string v3, "next"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lag/r;)Lag/r;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lag/r;->next()Lag/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lag/r;

    invoke-virtual {p0, p1}, Lag/v$c;->b(Lag/r;)Lag/r;

    move-result-object p1

    return-object p1
.end method
