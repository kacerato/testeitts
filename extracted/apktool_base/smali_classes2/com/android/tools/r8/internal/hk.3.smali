.class public final Lcom/android/tools/r8/internal/hk;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final n:Lcom/android/tools/r8/internal/hk;

.field public static final o:Lcom/android/tools/r8/internal/Zj;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Lcom/android/tools/r8/internal/Tk;

.field public k:Ljava/util/List;

.field public l:Lcom/android/tools/r8/internal/zR;

.field public m:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/hk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    new-instance v0, Lcom/android/tools/r8/internal/Zj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zj;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/hk;->o:Lcom/android/tools/r8/internal/Zj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/hk;->m:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ak;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/ak;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ak;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ak;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ak;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ak;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/hk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/hk;

    iget v1, p0, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_d

    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_d
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v3, :cond_e

    sget-object v3, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_e
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Tk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/hk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x4

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_7
    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    move v1, v2

    :goto_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_7
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/wz;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->c:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/hk;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Tk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->d:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/hk;

    const-class v2, Lcom/android/tools/r8/internal/ak;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/hk;->m:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/nk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dk;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Tk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    iput-byte v2, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v2

    :cond_f
    iput-byte v1, p0, Lcom/android/tools/r8/internal/hk;->m:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hk;->b()Lcom/android/tools/r8/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ak;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ak;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->b()Lcom/android/tools/r8/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk;->b()Lcom/android/tools/r8/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/hk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_6
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_7
    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
