.class public Lcom/android/tools/r8/shaking/S2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x7

.field public static final c:Lcom/android/tools/r8/internal/hC;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "bridge"

    const-string v1, "constructor"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v14

    const-string v12, "strictfp"

    const-string v13, "synthetic"

    const-string v2, "public"

    const-string v3, "private"

    const-string v4, "protected"

    const-string v5, "static"

    const-string v6, "final"

    const-string v7, "abstract"

    const-string v8, "volatile"

    const-string v9, "transient"

    const-string v10, "synchronized"

    const-string v11, "native"

    invoke-static/range {v2 .. v14}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/S2;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/android/tools/r8/shaking/Fa;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/Fa;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v2, Lcom/android/tools/r8/shaking/Oa;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/Oa;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v3, Lcom/android/tools/r8/shaking/Pa;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/shaking/Pa;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v4, Lcom/android/tools/r8/shaking/Qa;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/shaking/Qa;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v5, Lcom/android/tools/r8/shaking/Ra;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/shaking/Ra;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v6, Lcom/android/tools/r8/shaking/Sa;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/shaking/Sa;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v7, Lcom/android/tools/r8/shaking/Ga;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/shaking/Ga;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v8, Lcom/android/tools/r8/shaking/Ha;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/shaking/Ha;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v9, Lcom/android/tools/r8/shaking/Ia;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/shaking/Ia;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v10, Lcom/android/tools/r8/shaking/Ja;

    invoke-direct {v10, v0}, Lcom/android/tools/r8/shaking/Ja;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v11, Lcom/android/tools/r8/shaking/Ka;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/shaking/Ka;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v12, Lcom/android/tools/r8/shaking/La;

    invoke-direct {v12, v0}, Lcom/android/tools/r8/shaking/La;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v13, Lcom/android/tools/r8/shaking/Ma;

    invoke-direct {v13, v0}, Lcom/android/tools/r8/shaking/Ma;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    new-instance v14, Lcom/android/tools/r8/shaking/Na;

    invoke-direct {v14, v0}, Lcom/android/tools/r8/shaking/Na;-><init>(Lcom/android/tools/r8/shaking/S2;)V

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/util/function/BooleanSupplier;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/4 v13, 0x1

    aput-object v14, v15, v13

    move-object v13, v15

    invoke-static/range {v1 .. v13}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    return-object v1
.end method

.method public final a(I)Z
    .locals 1

    .line 4
    iget v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/g;)Z
    .locals 4

    .line 2
    iget p1, p1, Lcom/android/tools/r8/graph/g;->b:I

    .line 3
    iget v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    sget v1, Lcom/android/tools/r8/shaking/S2;->b:I

    not-int v2, v1

    and-int v3, v0, v2

    and-int/2addr p1, v0

    and-int/2addr v2, p1

    if-ne v2, v3, :cond_1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 1

    const/16 v0, 0x400

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/android/tools/r8/graph/g;)Z
    .locals 1

    .line 1
    iget p1, p1, Lcom/android/tools/r8/graph/g;->b:I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/shaking/S2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    check-cast p1, Lcom/android/tools/r8/shaking/S2;

    iget p1, p1, Lcom/android/tools/r8/shaking/S2;->a:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/shaking/S2;->a:I

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S2;->a(I)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/S2;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/android/tools/r8/shaking/S2;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
