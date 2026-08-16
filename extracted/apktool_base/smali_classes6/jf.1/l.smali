.class public Ljf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/l;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "minimum width"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "minimum height"

    invoke-static {p2, v0, v1, p4}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "maximum width"

    const v1, 0x7fffffff

    invoke-static {p3, v0, p1, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "maximum height"

    invoke-static {p4, v0, p2, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    iput p1, p0, Ljf/l;->d:I

    iput p2, p0, Ljf/l;->c:I

    iput p3, p0, Ljf/l;->b:I

    iput p4, p0, Ljf/l;->a:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget v0, p0, Ljf/l;->c:I

    iget v1, p0, Ljf/l;->a:I

    invoke-static {p1, v0, v1}, Ljf/f;->h(III)I

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 2

    iget v0, p0, Ljf/l;->d:I

    iget v1, p0, Ljf/l;->b:I

    invoke-static {p1, v0, v1}, Ljf/f;->h(III)I

    move-result p1

    return p1
.end method

.method public c(II)Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljf/l;->d:I

    if-ge p1, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "width must not be < %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Ljf/l;->b:I

    if-le p1, v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "width must not be > %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Ljf/l;->c:I

    if-ge p2, p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "height must not be < %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget p1, p0, Ljf/l;->a:I

    if-le p2, p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "height must not be > %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public d(II)Z
    .locals 2

    iget v0, p0, Ljf/l;->c:I

    iget v1, p0, Ljf/l;->a:I

    invoke-static {v0, p2, v1}, Ljf/f;->v(III)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Ljf/l;->d:I

    iget v1, p0, Ljf/l;->b:I

    invoke-static {p2, p1, v1}, Ljf/f;->v(III)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

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

    check-cast p1, Ljf/l;

    iget v2, p1, Ljf/l;->a:I

    iget v3, p0, Ljf/l;->a:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Ljf/l;->b:I

    iget v3, p0, Ljf/l;->b:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Ljf/l;->c:I

    iget v3, p0, Ljf/l;->c:I

    if-ne v2, v3, :cond_1

    iget p1, p1, Ljf/l;->d:I

    iget v2, p0, Ljf/l;->d:I

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

    iget v1, p0, Ljf/l;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/l;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/l;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/l;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ljf/l;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Ljf/l;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Ljf/l;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ljf/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%d,%d)-(%d,%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
