.class public Lcom/android/tools/r8/internal/vu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kx1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/vu0;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/references/TypeReference;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/I2;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/mx1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/mx1;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/vu0;->a(Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)Lcom/android/tools/r8/graph/I2;
    .locals 1

    .line 5
    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/vu0;->b(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/lx1;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/lx1;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V

    .line 6
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 4
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Xd;->a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/vu0;->b(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/references/PrimitiveReference;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x46

    if-eq p2, v0, :cond_5

    const/16 v0, 0x53

    if-eq p2, v0, :cond_4

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x49

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p1}, Lcom/android/tools/r8/references/PrimitiveReference;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid primitive descriptor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_6
    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/references/ArrayReference;->getBaseType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/references/ArrayReference;->getDimensions()I

    move-result p2

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/vu0;->b(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_7
    sget-boolean p0, Lcom/android/tools/r8/internal/vu0;->b:Z

    if-nez p0, :cond_9

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
