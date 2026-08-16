.class public Ljf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/logging/Logger;

.field public static final synthetic g:Z


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/math/Vector3f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/a;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/a;->e:Lcom/jme3/math/Vector3f;

    .line 3
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 6
    const-string v2, "end position"

    invoke-static {p3, v2, p2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p3, p2

    .line 7
    rem-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "whole number of vectors"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 8
    div-int/lit8 p3, p3, 0x3

    iput p3, p0, Ljf/a;->b:I

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljf/a;->d:Ljava/util/Map;

    .line 10
    new-array p3, p3, [I

    iput-object p3, p0, Ljf/a;->c:[I

    const/4 v0, -0x1

    .line 11
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    move p3, v1

    .line 12
    :goto_1
    iget v0, p0, Ljf/a;->b:I

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    add-int/2addr v0, p2

    .line 13
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 14
    invoke-static {p1, v0, v2}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    .line 15
    iget-object v0, p0, Ljf/a;->e:Lcom/jme3/math/Vector3f;

    invoke-static {v2, v0}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 16
    iget-object v0, p0, Ljf/a;->d:Ljava/util/Map;

    iget-object v3, p0, Ljf/a;->e:Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    .line 18
    iget-object v3, p0, Ljf/a;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    iget-object v2, p0, Ljf/a;->c:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_2
    iput p3, p0, Ljf/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;IIF)V
    .locals 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljf/a;->e:Lcom/jme3/math/Vector3f;

    .line 23
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 24
    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 26
    const-string v2, "end position"

    invoke-static {p3, v2, p2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p3, p2

    .line 27
    rem-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "whole number of vectors"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 28
    const-string v0, "tolerance"

    invoke-static {p4, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 29
    div-int/lit8 p3, p3, 0x3

    iput p3, p0, Ljf/a;->b:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljf/a;->d:Ljava/util/Map;

    .line 31
    new-array p3, p3, [I

    iput-object p3, p0, Ljf/a;->c:[I

    const/4 v0, -0x1

    .line 32
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    float-to-double p3, p4

    mul-double/2addr p3, p3

    move v2, v1

    .line 33
    :goto_1
    iget v3, p0, Ljf/a;->b:I

    if-ge v1, v3, :cond_4

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p2

    .line 34
    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 35
    invoke-static {p1, v3, v4}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    .line 36
    iget-object v3, p0, Ljf/a;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    .line 38
    invoke-static {v6, v4, p3, p4}, Ljf/h;->q(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-ne v3, v0, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 40
    iget-object v5, p0, Ljf/a;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move v7, v3

    move v3, v2

    move v2, v7

    .line 41
    :goto_3
    iget-object v4, p0, Ljf/a;->c:[I

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 42
    :cond_4
    iput v2, p0, Ljf/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljf/a;->a:I

    return v0
.end method

.method public b(I)I
    .locals 1

    const-string v0, "vector index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    iget-object v0, p0, Ljf/a;->c:[I

    aget p1, v0, p1

    return p1
.end method
