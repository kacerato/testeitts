.class public Lkb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J

.field public static b:I

.field public static c:F

.field public static final d:Llb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lkb/a;->a:J

    const/16 v0, 0x3c

    sput v0, Lkb/a;->b:I

    new-instance v0, Llb/a;

    invoke-direct {v0}, Llb/a;-><init>()V

    sput-object v0, Lkb/a;->d:Llb/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lkb/a;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lkb/a;->a:J

    invoke-static {}, LK8/d;->e()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v0, v1}, LNc/b;->q0(FI)F

    move-result v0

    sput v0, Lkb/a;->c:F

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, Lkb/a;->d:Llb/a;

    invoke-virtual {p0}, Llb/a;->a()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lkb/a;->a()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {}, LK8/d;->e()F

    move-result v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    sput p0, Lkb/a;->b:I

    invoke-static {}, LK8/d;->e()F

    move-result p0

    sput p0, Lkb/a;->c:F

    return-void
.end method
