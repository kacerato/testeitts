.class public final Lcom/android/tools/r8/internal/DQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/metadata/KmTypeProjection;",
        "",
        "variance",
        "Lkotlin/metadata/KmVariance;",
        "type",
        "Lkotlin/metadata/KmType;",
        "<init>",
        "(Lkotlin/metadata/KmVariance;Lkotlin/metadata/KmType;)V",
        "getVariance",
        "()Lkotlin/metadata/KmVariance;",
        "setVariance",
        "(Lkotlin/metadata/KmVariance;)V",
        "getType",
        "()Lkotlin/metadata/KmType;",
        "setType",
        "(Lkotlin/metadata/KmType;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "kotlin-metadata"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/android/tools/r8/internal/DQ;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/FQ;

.field public final b:Lcom/android/tools/r8/internal/yQ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/DQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/DQ;-><init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/internal/yQ;)V

    sput-object v0, Lcom/android/tools/r8/internal/DQ;->c:Lcom/android/tools/r8/internal/DQ;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/yQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/FQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/DQ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/DQ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    iget-object v3, p1, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yQ;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KmTypeProjection(variance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/DQ;->a:Lcom/android/tools/r8/internal/FQ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DQ;->b:Lcom/android/tools/r8/internal/yQ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
