.class public final LDb/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, p0, LDb/a$d;->a:I

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, p0, LDb/a$d;->b:I

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, p0, LDb/a$d;->c:I

    return-void
.end method

.method public static synthetic a(LDb/a$d;)I
    .locals 0

    iget p0, p0, LDb/a$d;->a:I

    return p0
.end method

.method public static synthetic b(LDb/a$d;)I
    .locals 0

    iget p0, p0, LDb/a$d;->b:I

    return p0
.end method

.method public static synthetic c(LDb/a$d;)I
    .locals 0

    iget p0, p0, LDb/a$d;->c:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LDb/a$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LDb/a$d;

    iget v1, p0, LDb/a$d;->a:I

    iget v3, p1, LDb/a$d;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LDb/a$d;->b:I

    iget v3, p1, LDb/a$d;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LDb/a$d;->c:I

    iget p1, p1, LDb/a$d;->c:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x173

    iget v1, p0, LDb/a$d;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, LDb/a$d;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, LDb/a$d;->c:I

    add-int/2addr v0, v1

    return v0
.end method
