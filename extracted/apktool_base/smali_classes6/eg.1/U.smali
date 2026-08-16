.class public final enum Leg/U;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/U$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leg/U;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leg/U;

.field public static final enum ATOMIC:Leg/U;
    .annotation build Leg/z0;
    .end annotation
.end field

.field public static final enum DEFAULT:Leg/U;

.field public static final enum LAZY:Leg/U;

.field public static final enum UNDISPATCHED:Leg/U;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Leg/U;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leg/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg/U;->DEFAULT:Leg/U;

    new-instance v0, Leg/U;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg/U;->LAZY:Leg/U;

    new-instance v0, Leg/U;

    const-string v1, "ATOMIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Leg/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg/U;->ATOMIC:Leg/U;

    new-instance v0, Leg/U;

    const-string v1, "UNDISPATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Leg/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg/U;->UNDISPATCHED:Leg/U;

    invoke-static {}, Leg/U;->a()[Leg/U;

    move-result-object v0

    sput-object v0, Leg/U;->$VALUES:[Leg/U;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Leg/U;
    .locals 4

    sget-object v0, Leg/U;->DEFAULT:Leg/U;

    sget-object v1, Leg/U;->LAZY:Leg/U;

    sget-object v2, Leg/U;->ATOMIC:Leg/U;

    sget-object v3, Leg/U;->UNDISPATCHED:Leg/U;

    filled-new-array {v0, v1, v2, v3}, [Leg/U;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()V
    .locals 0
    .annotation build Leg/F0;
    .end annotation

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leg/U;
    .locals 1

    const-class v0, Leg/U;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leg/U;

    return-object p0
.end method

.method public static values()[Leg/U;
    .locals 1

    sget-object v0, Leg/U;->$VALUES:[Leg/U;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leg/U;

    return-object v0
.end method


# virtual methods
.method public final b(LMf/l;Lyf/f;)V
    .locals 2
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    sget-object v0, Leg/U$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2}, Lng/b;->a(LMf/l;Lyf/f;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lyf/h;->h(LMf/l;Lyf/f;)V

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lng/a;->c(LMf/l;Lyf/f;)V

    :goto_0
    return-void
.end method

.method public final c(LMf/p;Ljava/lang/Object;Lyf/f;)V
    .locals 6
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-TR;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    sget-object v0, Leg/U$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3}, Lng/b;->b(LMf/p;Ljava/lang/Object;Lyf/f;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lyf/h;->i(LMf/p;Ljava/lang/Object;Lyf/f;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lng/a;->f(LMf/p;Ljava/lang/Object;Lyf/f;LMf/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Leg/U;->LAZY:Leg/U;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
