.class public Lkn/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intersection",
            "htmin",
            "htmax"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkn/v;->a:Z

    iput p2, p0, Lkn/v;->b:F

    iput p3, p0, Lkn/v;->c:F

    return-void
.end method
