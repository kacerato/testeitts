.class public final Ln6/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:F

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln6/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln6/b$f;

.field public final d:J

.field public final e:J

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:J


# direct methods
.method public constructor <init>(FLjava/util/List;Ln6/b$f;JJFIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalUsagePercent",
            "cores",
            "staticInfo",
            "averageCurrentFreqKhz",
            "averageMaxFreqKhz",
            "temperatureCelsius",
            "appThreadCount",
            "openFileDescriptors",
            "uptimeSeconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ln6/b$c;",
            ">;",
            "Ln6/b$f;",
            "JJFIIJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ln6/b$d;->a:F

    .line 4
    iput-object p2, p0, Ln6/b$d;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Ln6/b$d;->c:Ln6/b$f;

    .line 6
    iput-wide p4, p0, Ln6/b$d;->d:J

    .line 7
    iput-wide p6, p0, Ln6/b$d;->e:J

    .line 8
    iput p8, p0, Ln6/b$d;->f:F

    .line 9
    iput p9, p0, Ln6/b$d;->g:I

    .line 10
    iput p10, p0, Ln6/b$d;->h:I

    .line 11
    iput-wide p11, p0, Ln6/b$d;->i:J

    return-void
.end method

.method public synthetic constructor <init>(FLjava/util/List;Ln6/b$f;JJFIIJLn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Ln6/b$d;-><init>(FLjava/util/List;Ln6/b$f;JJFIIJ)V

    return-void
.end method
