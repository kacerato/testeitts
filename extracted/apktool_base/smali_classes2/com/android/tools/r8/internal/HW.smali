.class public final Lcom/android/tools/r8/internal/HW;
.super Lcom/android/tools/r8/internal/JW;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JW;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HW;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/JW;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/HW;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/HW;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HW;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v3, p1, Lcom/android/tools/r8/internal/HW;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getHolderClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HW;->a:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HW;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HW;->b:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
