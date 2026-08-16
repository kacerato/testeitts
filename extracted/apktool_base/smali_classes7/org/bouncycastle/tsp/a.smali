.class public Lorg/bouncycastle/tsp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lci/a;


# direct methods
.method public constructor <init>(Lci/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/a;->a:Lci/a;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/a;->a:Lci/a;

    invoke-virtual {v0}, Lci/a;->v()Loh/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/a;->e(Loh/s;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/a;->a:Lci/a;

    invoke-virtual {v0}, Lci/a;->x()Loh/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/a;->e(Loh/s;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/a;->a:Lci/a;

    invoke-virtual {v0}, Lci/a;->y()Loh/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/a;->e(Loh/s;)I

    move-result v0

    return v0
.end method

.method public final e(Loh/s;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/a;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tsp/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tsp/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
