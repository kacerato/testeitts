.class public final Lcom/android/tools/r8/internal/tk;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final g:Lcom/android/tools/r8/internal/tk;

.field public static final h:Lcom/android/tools/r8/internal/rk;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public d:I

.field public e:Lcom/android/tools/r8/internal/wk;

.field public f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    new-instance v0, Lcom/android/tools/r8/internal/rk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/tk;->h:Lcom/android/tools/r8/internal/rk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/tk;->f:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/tk;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/sk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/tk;->f:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/sk;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/sk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sk;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/sk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/sk;->a(Lcom/android/tools/r8/internal/tk;)Lcom/android/tools/r8/internal/sk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/tk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/tk;

    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/tk;->b:I

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iget v4, p1, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v4, v0

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/tools/r8/internal/tk;->d:I

    iget v3, p1, Lcom/android/tools/r8/internal/tk;->d:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tk;->a()Z

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_b
    iget-object v3, p1, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_c
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/wk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk;->c:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/tk;->c:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/tools/r8/internal/tk;->d:I

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_3
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->s:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/tk;->d:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->t:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/tk;

    const-class v2, Lcom/android/tools/r8/internal/sk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/tk;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/tk;->f:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/tk;->f:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tk;->b()Lcom/android/tools/r8/internal/sk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/sk;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/sk;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->b()Lcom/android/tools/r8/internal/sk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tk;->b()Lcom/android/tools/r8/internal/sk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/tk;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/tk;->d:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/tk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk;->e:Lcom/android/tools/r8/internal/wk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/wk;->g:Lcom/android/tools/r8/internal/wk;

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
