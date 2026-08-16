.class public Ljn/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:[F


# direct methods
.method public constructor <init>(Z[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posOverPoly",
            "closest"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljn/b;->a:Z

    iput-object p2, p0, Ljn/b;->b:[F

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Ljn/b;->b:[F

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ljn/b;->a:Z

    return v0
.end method
