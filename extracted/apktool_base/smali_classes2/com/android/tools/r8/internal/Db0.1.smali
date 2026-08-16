.class public final Lcom/android/tools/r8/internal/Db0;
.super Lcom/android/tools/r8/internal/Eb0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Db0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/xi;

.field public final c:Lcom/android/tools/r8/internal/xi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Db0;

    sget-object v1, Lcom/android/tools/r8/internal/wi;->b:Lcom/android/tools/r8/internal/wi;

    sget-object v2, Lcom/android/tools/r8/internal/vi;->b:Lcom/android/tools/r8/internal/vi;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Db0;-><init>(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)V

    sput-object v0, Lcom/android/tools/r8/internal/Db0;->d:Lcom/android/tools/r8/internal/Db0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Eb0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/vi;->b:Lcom/android/tools/r8/internal/vi;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/wi;->b:Lcom/android/tools/r8/internal/wi;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/xi;->a(Ljava/lang/StringBuilder;)V

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/xi;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xi;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xi;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/Db0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/Db0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xi;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xi;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xi;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xi;->a(Ljava/lang/StringBuilder;)V

    const-string v0, ".."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xi;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
