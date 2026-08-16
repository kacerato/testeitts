.class public final Leg/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$b;
.implements Lyf/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/j$b;",
        "Lyf/j$c<",
        "Leg/x1;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Leg/x1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/x1;

    invoke-direct {v0}, Leg/x1;-><init>()V

    sput-object v0, Leg/x1;->b:Leg/x1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 0
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lyf/j$b$a;->a(Lyf/j$b;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lyf/j$c;)Lyf/j$b;
    .locals 0
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->b(Lyf/j$b;Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lyf/j$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public minusKey(Lyf/j$c;)Lyf/j;
    .locals 0
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->c(Lyf/j$b;Lyf/j$c;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lyf/j;)Lyf/j;
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->d(Lyf/j$b;Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method
