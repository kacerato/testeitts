.class public final Lcom/android/tools/r8/internal/JL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yW;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    new-instance v0, Lcom/android/tools/r8/internal/cM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cM;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OL;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v1

    iget v3, v0, Lcom/android/tools/r8/internal/cM;->c:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/tools/r8/internal/cM;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/cM;->d:I

    iget-object p0, p0, Lcom/android/tools/r8/internal/OL;->b:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result p0

    iget p1, v0, Lcom/android/tools/r8/internal/cM;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/android/tools/r8/internal/cM;->c:I

    iput p0, v0, Lcom/android/tools/r8/internal/cM;->e:I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dM;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw p0
.end method
