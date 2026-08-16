.class public Lq6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Lq6/a;

.field public final c:J

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(FLq6/a;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaTime",
            "frameData",
            "usedBytes",
            "previousFrameUsedMemory"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq6/b;->a:F

    iput-object p2, p0, Lq6/b;->b:Lq6/a;

    iput-wide p3, p0, Lq6/b;->c:J

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->getConcreteCount()I

    move-result p1

    iput p1, p0, Lq6/b;->e:I

    cmp-long p1, p5, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq6/b;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lq6/b;->d:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lq6/b;->a:F

    return v0
.end method

.method public b()Lq6/a;
    .locals 1

    iget-object v0, p0, Lq6/b;->b:Lq6/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lq6/b;->e:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lq6/b;->c:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lq6/b;->d:Z

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lq6/b;->b:Lq6/a;

    invoke-virtual {v0}, Lq6/a;->g()V

    return-void
.end method
