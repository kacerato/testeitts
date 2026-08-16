.class public LCc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[[Z


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numLayers"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, LCc/a;->a:[[Z

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_1

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_0

    iget-object v4, p0, LCc/a;->a:[[Z

    aget-object v4, v4, v0

    aput-boolean v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LCc/a;->a:[[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, p1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numLayers"
        }
    .end annotation

    iget-object v0, p0, LCc/a;->a:[[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v2

    aput p1, v0, v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, LCc/a;->a:[[Z

    :cond_1
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_3

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_2

    iget-object v4, p0, LCc/a;->a:[[Z

    aget-object v4, v4, v0

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layerA",
            "layerB",
            "enabled"
        }
    .end annotation

    iget-object v0, p0, LCc/a;->a:[[Z

    aget-object v1, v0, p1

    aput-boolean p3, v1, p2

    aget-object p2, v0, p2

    aput-boolean p3, p2, p1

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LCc/a;->a:[[Z

    array-length v0, v0

    return v0
.end method
