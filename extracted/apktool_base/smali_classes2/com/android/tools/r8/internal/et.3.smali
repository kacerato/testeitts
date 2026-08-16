.class public abstract Lcom/android/tools/r8/internal/et;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/o3;)Lcom/android/tools/r8/internal/et;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3;->u:Lcom/android/tools/r8/shaking/b3;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/J00;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/shaking/o3;->u:Lcom/android/tools/r8/shaking/b3;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/J00;-><init>(Lcom/android/tools/r8/shaking/b3;)V

    return-object v0

    .line 7
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/Mt;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Mt;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/nJ;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Z
.end method
