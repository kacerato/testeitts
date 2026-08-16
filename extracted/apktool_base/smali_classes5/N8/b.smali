.class public LN8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LN8/b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LN8/b;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstUv"
        }
    .end annotation

    iput p1, p0, LN8/b;->b:I

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstVertice"
        }
    .end annotation

    iput p1, p0, LN8/b;->a:I

    return-void
.end method
