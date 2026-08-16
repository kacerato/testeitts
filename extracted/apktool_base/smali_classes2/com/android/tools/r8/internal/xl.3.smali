.class public final Lcom/android/tools/r8/internal/xl;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final f:Lcom/android/tools/r8/internal/xl;

.field public static final g:Lcom/android/tools/r8/internal/vl;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public d:Z

.field public e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/xl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/xl;->f:Lcom/android/tools/r8/internal/xl;

    new-instance v0, Lcom/android/tools/r8/internal/vl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/xl;->g:Lcom/android/tools/r8/internal/vl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/xl;->e:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/wl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/xl;->e:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/xl;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/xl;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/wl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/xl;->f:Lcom/android/tools/r8/internal/xl;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/wl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wl;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/wl;->a(Lcom/android/tools/r8/internal/xl;)Lcom/android/tools/r8/internal/wl;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/xl;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/xl;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xl;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v2, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    :cond_4
    move-object v1, v2

    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_5
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v4, p1, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    :cond_6
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xl;->a()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/xl;->d:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/internal/xl;->d:Z

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/xl;->f:Lcom/android/tools/r8/internal/xl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/xl;->f:Lcom/android/tools/r8/internal/xl;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/xl;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/xl;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_2
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
    sget-object v0, Lcom/android/tools/r8/internal/zl;->Q:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->b()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v4, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/xl;->d:Z

    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_4

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_4
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    :cond_5
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->R:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/xl;

    const-class v2, Lcom/android/tools/r8/internal/wl;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/xl;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/xl;->e:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/xl;->e:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/xl;->e:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/xl;->f:Lcom/android/tools/r8/internal/xl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xl;->c()Lcom/android/tools/r8/internal/wl;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/wl;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/wl;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->c()Lcom/android/tools/r8/internal/wl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xl;->c()Lcom/android/tools/r8/internal/wl;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/xl;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xl;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/xl;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/xl;->d:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
