.class public Lef/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:[Lef/b$f;

.field public b:Lcom/jme3/math/Vector3f;

.field public c:Z

.field public d:[I

.field public final synthetic e:Lef/b;


# direct methods
.method public constructor <init>(Lef/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lef/b$d;->e:Lef/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 2
    new-array v0, p1, [Lef/b$f;

    iput-object v0, p0, Lef/b$d;->a:[Lef/b$f;

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lef/b$d;->d:[I

    return-void
.end method

.method public synthetic constructor <init>(Lef/b;Lef/b$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lef/b$d;-><init>(Lef/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lef/b$d;->e:Lef/b;

    invoke-static {v0}, Lef/b;->a(Lef/b;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lef/b$d;->a:[Lef/b$f;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lef/b$d;->a:[Lef/b$f;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v1, v1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lef/b$d;->e:Lef/b;

    invoke-static {v0}, Lef/b;->b(Lef/b;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lef/b$d;->a:[Lef/b$f;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    iget-object v1, v1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lef/b$d;->a:[Lef/b$f;

    aget-object v1, v1, v2

    iget-object v1, v1, Lef/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lef/b$d;->e:Lef/b;

    invoke-static {v0}, Lef/b;->a(Lef/b;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lef/b$d;->e:Lef/b;

    invoke-static {v1}, Lef/b;->b(Lef/b;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lef/b$d;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public b(Lef/b$f;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lef/b$d;->a:[Lef/b$f;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lef/b$d;->d:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is not part of triangle"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lef/b$f;)Z
    .locals 4

    iget-object v0, p0, Lef/b$d;->a:[Lef/b$f;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    aget-object v2, v0, v3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-ne p1, v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public d()Z
    .locals 6

    iget-object v0, p0, Lef/b$d;->a:[Lef/b$f;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    if-eq v2, v0, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Triangle{\n"

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lef/b$d;->d:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lef/b$d;->a:[Lef/b$f;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lef/b$f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
