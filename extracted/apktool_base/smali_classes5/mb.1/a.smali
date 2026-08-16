.class public Lmb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max supported OGL Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, LW7/b;->f:LC8/a;

    iget-object p0, p0, LC8/a;->b:LE8/a;

    double-to-float v2, v0

    iput v2, p0, LE8/a;->f:F

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    sget-object v0, LE8/a$a;->GL31:LE8/a$a;

    iput-object v0, p0, LE8/a;->e:LE8/a$a;

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, LE8/a$a;->GL3:LE8/a$a;

    iput-object v0, p0, LE8/a;->e:LE8/a$a;

    goto :goto_0

    :cond_1
    sget-object v0, LE8/a$a;->GL2:LE8/a$a;

    iput-object v0, p0, LE8/a;->e:LE8/a$a;

    :goto_0
    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method
