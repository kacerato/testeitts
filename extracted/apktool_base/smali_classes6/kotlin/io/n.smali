.class public Lkotlin/io/n;
.super Lkotlin/io/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/io/m;-><init>()V

    return-void
.end method

.method public static final O(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/io/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/io/h;

    invoke-direct {v0, p0, p1}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;)V

    return-object v0
.end method

.method public static synthetic P(Ljava/io/File;Lkotlin/io/i;ILjava/lang/Object;)Lkotlin/io/h;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    :cond_0
    invoke-static {p0, p1}, Lkotlin/io/n;->O(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(Ljava/io/File;)Lkotlin/io/h;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/io/i;->BOTTOM_UP:Lkotlin/io/i;

    invoke-static {p0, v0}, Lkotlin/io/n;->O(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    move-result-object p0

    return-object p0
.end method

.method public static final R(Ljava/io/File;)Lkotlin/io/h;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    invoke-static {p0, v0}, Lkotlin/io/n;->O(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    move-result-object p0

    return-object p0
.end method
