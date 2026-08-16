.class public Ljf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field public static final e:Ljf/n;

.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljf/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljf/n;-><init>(III)V

    sput-object v0, Ljf/n;->e:Ljf/n;

    const-class v0, Ljf/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/n;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ljf/n;->b:I

    .line 4
    iput p2, p0, Ljf/n;->c:I

    .line 5
    iput p3, p0, Ljf/n;->d:I

    return-void
.end method


# virtual methods
.method public a(III)Ljf/n;
    .locals 2

    new-instance v0, Ljf/n;

    iget v1, p0, Ljf/n;->b:I

    add-int/2addr v1, p1

    iget p1, p0, Ljf/n;->c:I

    add-int/2addr p1, p2

    iget p2, p0, Ljf/n;->d:I

    add-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Ljf/n;-><init>(III)V

    return-object v0
.end method

.method public b(III)Ljf/n;
    .locals 2

    new-instance v0, Ljf/n;

    iget v1, p0, Ljf/n;->b:I

    sub-int/2addr v1, p1

    iget p1, p0, Ljf/n;->c:I

    sub-int/2addr p1, p2

    iget p2, p0, Ljf/n;->d:I

    sub-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Ljf/n;-><init>(III)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljf/n;->b:I

    return v0
.end method

.method public d(Ljf/n;)I
    .locals 1

    iget v0, p0, Ljf/n;->b:I

    invoke-virtual {p1}, Ljf/n;->c()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ljf/n;->c:I

    return v0
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

    check-cast p1, Ljf/n;

    invoke-virtual {p1}, Ljf/n;->c()I

    move-result v2

    iget v3, p0, Ljf/n;->b:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljf/n;->e()I

    move-result v2

    iget v3, p0, Ljf/n;->c:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljf/n;->g()I

    move-result p1

    iget v2, p0, Ljf/n;->d:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public f(Ljf/n;)I
    .locals 1

    iget v0, p0, Ljf/n;->c:I

    invoke-virtual {p1}, Ljf/n;->e()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ljf/n;->d:I

    return v0
.end method

.method public h(Ljf/n;)I
    .locals 1

    iget v0, p0, Ljf/n;->d:I

    invoke-virtual {p1}, Ljf/n;->g()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x5017

    iget v1, p0, Ljf/n;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/n;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ljf/n;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljf/n;->b:I

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljf/n;->c:I

    const-string v0, "z"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ljf/n;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ljf/n;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Ljf/n;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Ljf/n;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%d,%d,%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Ljf/n;->b:I

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Ljf/n;->c:I

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Ljf/n;->d:I

    const-string v1, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
