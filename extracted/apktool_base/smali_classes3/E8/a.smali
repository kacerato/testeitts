.class public LE8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE8/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:LF8/a;

.field public b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:LE8/a$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LF8/a;

    invoke-direct {v0}, LF8/a;-><init>()V

    iput-object v0, p0, LE8/a;->a:LF8/a;

    const-string v0, "highp"

    iput-object v0, p0, LE8/a;->b:Ljava/lang/String;

    const-string v0, "mediump"

    iput-object v0, p0, LE8/a;->c:Ljava/lang/String;

    const-string v0, "lowp"

    iput-object v0, p0, LE8/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 4

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, v0, LC8/a;->b:LE8/a;

    iget-object v1, v1, LE8/a;->e:LE8/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v0, 0x40466666    # 3.1f

    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LC8/a;->b:LE8/a;

    iget-object v0, v0, LE8/a;->e:LE8/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " version"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method
