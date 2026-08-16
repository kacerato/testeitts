.class public abstract Lcom/android/tools/r8/shaking/A0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/shaking/K;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/A0;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/A0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/A0;->c:Lcom/android/tools/r8/shaking/K;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/A0;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/A0;->a:Lcom/android/tools/r8/graph/l1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/A0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A0;->c:Lcom/android/tools/r8/shaking/K;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/A0;->c:Lcom/android/tools/r8/shaking/K;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/K;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/A0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/A0;->c:Lcom/android/tools/r8/shaking/K;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
