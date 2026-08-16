.class public final Lqf/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqf/d$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lqf/d$a;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lqf/d$a;->c(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lqf/d$a;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lqf/d$a;->d(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LVf/u;->w(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    return p1
.end method

.method public final d(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final e()Lqf/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lqf/d;->e()Lqf/d;

    move-result-object v0

    return-object v0
.end method
