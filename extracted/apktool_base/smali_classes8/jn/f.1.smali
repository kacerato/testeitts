.class public Ljn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljn/x;II)Ljn/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "tileX",
            "tileY"
        }
    .end annotation

    invoke-static {p1}, Ljn/w;->d(Ljn/x;)Ljn/q;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    iput p2, v0, Ljn/r;->c:I

    iput p3, v0, Ljn/r;->d:I

    :cond_0
    return-object p1
.end method
