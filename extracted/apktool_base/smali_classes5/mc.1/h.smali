.class public Lmc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableAnimation"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmc/h;->b:I

    .line 3
    iput v0, p0, Lmc/h;->c:I

    .line 4
    iput v0, p0, Lmc/h;->d:I

    .line 5
    iput-boolean p1, p0, Lmc/h;->a:Z

    return-void
.end method

.method public constructor <init>(ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enableAnimation",
            "positionAttribute",
            "jointIndiceAttribute",
            "weigthsAttribute"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lmc/h;->a:Z

    .line 8
    iput p2, p0, Lmc/h;->b:I

    .line 9
    iput p3, p0, Lmc/h;->c:I

    .line 10
    iput p4, p0, Lmc/h;->d:I

    return-void
.end method
