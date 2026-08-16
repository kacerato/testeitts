.class public final LE2/g$d;
.super LE2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public c:LE2/g;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, LE2/g;-><init>()V

    .line 2
    iput-wide p1, p0, LE2/g$d;->a:D

    .line 3
    iput-wide p3, p0, LE2/g$d;->b:D

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LE2/g$d;->c:LE2/g;

    return-void
.end method

.method public constructor <init>(DDLE2/g;)V
    .locals 0

    .line 5
    invoke-direct {p0}, LE2/g;-><init>()V

    .line 6
    iput-wide p1, p0, LE2/g$d;->a:D

    .line 7
    iput-wide p3, p0, LE2/g$d;->b:D

    .line 8
    iput-object p5, p0, LE2/g$d;->c:LE2/g;

    return-void
.end method


# virtual methods
.method public c()LE2/g;
    .locals 1

    iget-object v0, p0, LE2/g$d;->c:LE2/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LE2/g$d;->j()LE2/g;

    move-result-object v0

    iput-object v0, p0, LE2/g$d;->c:LE2/g;

    :cond_0
    return-object v0
.end method

.method public d()Z
    .locals 4

    iget-wide v0, p0, LE2/g$d;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()D
    .locals 2

    iget-wide v0, p0, LE2/g$d;->a:D

    return-wide v0
.end method

.method public h(D)D
    .locals 2

    iget-wide v0, p0, LE2/g$d;->a:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, LE2/g$d;->b:D

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public final j()LE2/g;
    .locals 10

    iget-wide v0, p0, LE2/g$d;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, LE2/g$d;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v4, v3, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iget-wide v8, p0, LE2/g$d;->b:D

    mul-double/2addr v8, v6

    div-double v6, v8, v0

    move-object v3, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, LE2/g$d;-><init>(DDLE2/g;)V

    return-object v2

    :cond_0
    new-instance v0, LE2/g$e;

    iget-wide v1, p0, LE2/g$d;->b:D

    invoke-direct {v0, v1, v2, p0}, LE2/g$e;-><init>(DLE2/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, LE2/g$d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, LE2/g$d;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "y = %g * x + %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
