.class public final LE2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, LE2/g$b;->a:D

    .line 4
    iput-wide p3, p0, LE2/g$b;->b:D

    return-void
.end method

.method public synthetic constructor <init>(DDLE2/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LE2/g$b;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public a(DD)LE2/g;
    .locals 5

    invoke-static {p1, p2}, LE2/d;->d(D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, LE2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    iget-wide v3, p0, LE2/g$b;->a:D

    cmpl-double v0, p1, v3

    if-nez v0, :cond_2

    iget-wide p1, p0, LE2/g$b;->b:D

    cmpl-double p1, p3, p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lw2/H;->d(Z)V

    new-instance p1, LE2/g$e;

    iget-wide p2, p0, LE2/g$b;->a:D

    invoke-direct {p1, p2, p3}, LE2/g$e;-><init>(D)V

    return-object p1

    :cond_2
    iget-wide v0, p0, LE2/g$b;->b:D

    sub-double/2addr p3, v0

    sub-double/2addr p1, v3

    div-double/2addr p3, p1

    invoke-virtual {p0, p3, p4}, LE2/g$b;->b(D)LE2/g;

    move-result-object p1

    return-object p1
.end method

.method public b(D)LE2/g;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-static {p1, p2}, LE2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LE2/g$b;->b:D

    iget-wide v2, p0, LE2/g$b;->a:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    new-instance v2, LE2/g$d;

    invoke-direct {v2, p1, p2, v0, v1}, LE2/g$d;-><init>(DD)V

    return-object v2

    :cond_0
    new-instance p1, LE2/g$e;

    iget-wide v0, p0, LE2/g$b;->a:D

    invoke-direct {p1, v0, v1}, LE2/g$e;-><init>(D)V

    return-object p1
.end method
