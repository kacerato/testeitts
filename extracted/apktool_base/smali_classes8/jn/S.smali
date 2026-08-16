.class public Ljn/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[F

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>([FIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "flags",
            "ref"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljn/g;->y([F)[F

    move-result-object p1

    iput-object p1, p0, Ljn/S;->a:[F

    iput p2, p0, Ljn/S;->b:I

    iput-wide p3, p0, Ljn/S;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljn/S;->b:I

    return v0
.end method

.method public b()[F
    .locals 1

    iget-object v0, p0, Ljn/S;->a:[F

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Ljn/S;->c:J

    return-wide v0
.end method
