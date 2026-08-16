.class public Ljf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljf/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final synthetic e:Z


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/b;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, p2, :cond_0

    iput p1, p0, Ljf/b;->c:I

    iput p2, p0, Ljf/b;->b:I

    goto :goto_0

    :cond_0
    iput p1, p0, Ljf/b;->b:I

    iput p2, p0, Ljf/b;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljf/b;)I
    .locals 2

    invoke-virtual {p1}, Ljf/b;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ljf/b;->c:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljf/b;->b()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Ljf/b;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljf/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljf/b;->c:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljf/b;

    invoke-virtual {p0, p1}, Ljf/b;->a(Ljf/b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Ljf/b;

    invoke-virtual {p1}, Ljf/b;->b()I

    move-result v2

    iget v3, p0, Ljf/b;->b:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljf/b;->c()I

    move-result p1

    iget v2, p0, Ljf/b;->c:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x5017

    iget v1, p0, Ljf/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Ljf/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Ljf/b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{%d,%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
