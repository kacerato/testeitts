.class public final Lcom/android/tools/r8/internal/un0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/pu0;

.field public b:Lcom/android/tools/r8/internal/FT;

.field public final c:Lcom/android/tools/r8/internal/FT;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    iput-object p3, p0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    sget-boolean p1, Lcom/android/tools/r8/internal/un0;->d:Z

    const/high16 v0, -0x80000000

    if-nez p1, :cond_1

    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget p1, p3, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/un0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/un0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    iget v3, v1, Lcom/android/tools/r8/internal/FT;->k:I

    iget-object v4, p1, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    iget v5, v4, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    iget v5, v3, Lcom/android/tools/r8/internal/FT;->k:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    iget v6, p1, Lcom/android/tools/r8/internal/FT;->k:I

    if-ne v5, v6, :cond_2

    iget-object v1, v1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object v4, v4, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v1, v4, :cond_2

    iget-object v1, v3, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    iget-object p1, p1, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    iget v0, v0, Lcom/android/tools/r8/internal/FT;->k:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/un0;->c:Lcom/android/tools/r8/internal/FT;

    iget v0, v0, Lcom/android/tools/r8/internal/FT;->k:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/un0;->b:Lcom/android/tools/r8/internal/FT;

    iget v1, v1, Lcom/android/tools/r8/internal/FT;->k:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/un0;->a:Lcom/android/tools/r8/internal/pu0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " <- "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
