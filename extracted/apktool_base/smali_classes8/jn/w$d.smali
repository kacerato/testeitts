.class public Ljn/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljn/w$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljn/w$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljn/w$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljn/w$b;Ljn/w$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    iget-object p1, p1, Ljn/w$b;->a:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iget-object p2, p2, Ljn/w$b;->a:[I

    aget p2, p2, v0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    check-cast p1, Ljn/w$b;

    check-cast p2, Ljn/w$b;

    invoke-virtual {p0, p1, p2}, Ljn/w$d;->a(Ljn/w$b;Ljn/w$b;)I

    move-result p1

    return p1
.end method
