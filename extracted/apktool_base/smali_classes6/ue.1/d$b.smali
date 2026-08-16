.class public Lue/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lue/h;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lue/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lue/h;)V
    .locals 0
    .param p1    # Lue/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lue/d$b;->a:Lue/h;

    return-void
.end method

.method public static synthetic a(Lue/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lue/d$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lue/d$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lue/d$b;->b:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic c(LNm/c$a;)I
    .locals 0

    invoke-static {p0}, Lue/d$b;->i(LNm/c$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lue/d$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lue/d$b;->c:Z

    return p1
.end method

.method public static synthetic e(Lue/d$b;Lqe/m;LUm/v;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lue/d$b;->j(Lqe/m;LUm/v;)V

    return-void
.end method

.method public static synthetic f(Lue/d$b;I)I
    .locals 0

    iput p1, p0, Lue/d$b;->d:I

    return p1
.end method

.method public static i(LNm/c$a;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lue/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lue/d$b;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lue/d$b;->c:Z

    iput v0, p0, Lue/d$b;->d:I

    return-void
.end method

.method public h(Lqe/m$b;)V
    .locals 2
    .param p1    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lue/d$b$e;

    invoke-direct {v0, p0}, Lue/d$b$e;-><init>(Lue/d$b;)V

    const-class v1, LNm/a;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    move-result-object p1

    new-instance v0, Lue/d$b$d;

    invoke-direct {v0, p0}, Lue/d$b$d;-><init>(Lue/d$b;)V

    const-class v1, LNm/b;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    move-result-object p1

    new-instance v0, Lue/d$b$c;

    invoke-direct {v0, p0}, Lue/d$b$c;-><init>(Lue/d$b;)V

    const-class v1, LNm/e;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    move-result-object p1

    new-instance v0, Lue/d$b$b;

    invoke-direct {v0, p0}, Lue/d$b$b;-><init>(Lue/d$b;)V

    const-class v1, LNm/d;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    move-result-object p1

    new-instance v0, Lue/d$b$a;

    invoke-direct {v0, p0}, Lue/d$b$a;-><init>(Lue/d$b;)V

    const-class v1, LNm/c;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public final j(Lqe/m;LUm/v;)V
    .locals 8
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    iget-object p2, p0, Lue/d$b;->b:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object p2

    invoke-virtual {p2}, Lqe/z;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lqe/z;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v4, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1}, Lqe/m;->F()V

    :cond_1
    const/16 v4, 0xa0

    invoke-virtual {p2, v4}, Lqe/z;->a(C)Lqe/z;

    new-instance p2, Lue/e;

    iget-object v4, p0, Lue/d$b;->a:Lue/h;

    iget-object v5, p0, Lue/d$b;->b:Ljava/util/List;

    iget-boolean v6, p0, Lue/d$b;->c:Z

    iget v7, p0, Lue/d$b;->d:I

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v3, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-direct {p2, v4, v5, v6, v7}, Lue/e;-><init>(Lue/h;Ljava/util/List;ZZ)V

    iget-boolean v4, p0, Lue/d$b;->c:Z

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p0, Lue/d$b;->d:I

    add-int/2addr v2, v3

    :goto_2
    iput v2, p0, Lue/d$b;->d:I

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-interface {p1, v0, p2}, Lqe/m;->b(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lue/d$b;->b:Ljava/util/List;

    :cond_5
    return-void
.end method
