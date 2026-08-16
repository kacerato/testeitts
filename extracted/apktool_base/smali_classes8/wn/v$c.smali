.class public Lwn/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lwn/v$d;",
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

.method public synthetic constructor <init>(Lwn/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lwn/v$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwn/v$d;Lwn/v$d;)I
    .locals 4
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

    iget v0, p1, Lwn/v$d;->b:I

    iget v1, p2, Lwn/v$d;->b:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v1, :cond_1

    iget p1, p1, Lwn/v$d;->c:I

    iget p2, p2, Lwn/v$d;->c:I

    if-ge p1, p2, :cond_0

    return v3

    :cond_0
    if-le p1, p2, :cond_3

    return v2

    :cond_1
    if-ge v0, v1, :cond_2

    return v3

    :cond_2
    if-le v0, v1, :cond_3

    return v2

    :cond_3
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

    check-cast p1, Lwn/v$d;

    check-cast p2, Lwn/v$d;

    invoke-virtual {p0, p1, p2}, Lwn/v$c;->a(Lwn/v$d;Lwn/v$d;)I

    move-result p1

    return p1
.end method
