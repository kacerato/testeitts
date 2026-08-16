.class public final LE2/g$e;
.super LE2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:D

.field public b:LE2/g;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, LE2/g;-><init>()V

    .line 2
    iput-wide p1, p0, LE2/g$e;->a:D

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LE2/g$e;->b:LE2/g;

    return-void
.end method

.method public constructor <init>(DLE2/g;)V
    .locals 0

    .line 4
    invoke-direct {p0}, LE2/g;-><init>()V

    .line 5
    iput-wide p1, p0, LE2/g$e;->a:D

    .line 6
    iput-object p3, p0, LE2/g$e;->b:LE2/g;

    return-void
.end method

.method private j()LE2/g;
    .locals 7

    new-instance v6, LE2/g$d;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, LE2/g$e;->a:D

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LE2/g$d;-><init>(DDLE2/g;)V

    return-object v6
.end method


# virtual methods
.method public c()LE2/g;
    .locals 1

    iget-object v0, p0, LE2/g$e;->b:LE2/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, LE2/g$e;->j()LE2/g;

    move-result-object v0

    iput-object v0, p0, LE2/g$e;->b:LE2/g;

    :cond_0
    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()D
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public h(D)D
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, LE2/g$e;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x = %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
