.class public final Lcom/android/tools/r8/internal/gl;
.super Lcom/android/tools/r8/internal/iz;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/gl;

.field public static final f:Lcom/android/tools/r8/internal/el;


# instance fields
.field public c:Ljava/util/List;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    new-instance v0, Lcom/android/tools/r8/internal/el;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/el;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gl;->f:Lcom/android/tools/r8/internal/el;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/iz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/gl;->d:B

    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iz;-><init>(Lcom/android/tools/r8/internal/hz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/gl;->d:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/fl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/fl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fl;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/fl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/gl;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/gl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->b()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->E:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x3e7

    const/16 v2, 0x35

    const/16 v3, 0x25

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/K0;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->F:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/gl;

    const-class v2, Lcom/android/tools/r8/internal/fl;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/gl;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/gl;->d:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/gl;->d:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/gl;->d:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gl;->a()Lcom/android/tools/r8/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/fl;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/fl;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gl;->a()Lcom/android/tools/r8/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gl;->a()Lcom/android/tools/r8/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/uR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hn0;

    new-instance v2, Lcom/android/tools/r8/internal/fn0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hn0;->b:Lcom/android/tools/r8/internal/in0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/fn0;-><init>(Lcom/android/tools/r8/internal/in0;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/uR;-><init>(Lcom/android/tools/r8/internal/fn0;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hn0;

    new-instance v1, Lcom/android/tools/r8/internal/fn0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hn0;->b:Lcom/android/tools/r8/internal/in0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fn0;-><init>(Lcom/android/tools/r8/internal/in0;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/kW;

    const/16 v5, 0x3e7

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v3, v3, Lcom/android/tools/r8/internal/Ek;->d:I

    const/high16 v4, 0x20000000

    if-ge v3, v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
