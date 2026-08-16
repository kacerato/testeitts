.class public Lp7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp7/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public varargs constructor <init>([Lp7/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "togglesArray"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lp7/e;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lp7/e;->b:I

    if-eqz p1, :cond_5

    array-length v1, p1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lp7/e$a;

    invoke-direct {v4, p0, v2, v3}, Lp7/e$a;-><init>(Lp7/e;ILp7/d;)V

    invoke-virtual {v3, v4}, Lp7/d;->o(Lp7/f;)V

    iget-object v4, p0, Lp7/e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    iget-object v2, p0, Lp7/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lp7/e;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp7/d;

    if-gez v0, :cond_1

    invoke-virtual {v2}, Lp7/d;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    iput p1, p0, Lp7/e;->b:I

    move v0, p1

    goto :goto_2

    :cond_1
    if-eq p1, v0, :cond_2

    invoke-virtual {v2, v1, v1}, Lp7/d;->x(ZZ)V

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    invoke-virtual {p0, v1}, Lp7/e;->e(I)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "togglesArray can\'t be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lp7/e;)I
    .locals 0

    iget p0, p0, Lp7/e;->b:I

    return p0
.end method

.method public static synthetic b(Lp7/e;I)I
    .locals 0

    iput p1, p0, Lp7/e;->b:I

    return p1
.end method

.method public static synthetic c(Lp7/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lp7/e;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lp7/e;->b:I

    return v0
.end method

.method public e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lp7/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp7/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lp7/d;->w(Z)V

    return-void
.end method
