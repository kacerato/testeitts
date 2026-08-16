.class public Lmc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmc/e;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lmc/e;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lmc/e;->a:I

    return v0
.end method

.method public d(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "rp"
        }
    .end annotation

    iput p1, p0, Lmc/e;->a:I

    iput p2, p0, Lmc/e;->b:I

    iput p3, p0, Lmc/e;->c:I

    return-void
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    iput p1, p0, Lmc/e;->b:I

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPercentage"
        }
    .end annotation

    iput p1, p0, Lmc/e;->c:I

    return-void
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iput p1, p0, Lmc/e;->a:I

    return-void
.end method
