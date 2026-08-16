.class public final Ln6/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:F

.field public final c:J

.field public final d:J

.field public final e:[F


# direct methods
.method public constructor <init>(IFJJ[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "usagePercent",
            "currentFreqKhz",
            "maxFreqKhz",
            "history"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ln6/b$c;->a:I

    .line 4
    iput p2, p0, Ln6/b$c;->b:F

    .line 5
    iput-wide p3, p0, Ln6/b$c;->c:J

    .line 6
    iput-wide p5, p0, Ln6/b$c;->d:J

    .line 7
    iput-object p7, p0, Ln6/b$c;->e:[F

    return-void
.end method

.method public synthetic constructor <init>(IFJJ[FLn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Ln6/b$c;-><init>(IFJJ[F)V

    return-void
.end method
