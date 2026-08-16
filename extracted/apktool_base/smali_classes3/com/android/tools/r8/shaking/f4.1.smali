.class public final Lcom/android/tools/r8/shaking/f4;
.super Lcom/android/tools/r8/shaking/g4;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/g4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/f4;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f4;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/e4;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/e4;->b:Ljava/lang/String;

    invoke-static {v2, v2, v3, p1}, Lcom/android/tools/r8/shaking/e4;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean p1, v1, Lcom/android/tools/r8/shaking/e4;->a:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v2
.end method
