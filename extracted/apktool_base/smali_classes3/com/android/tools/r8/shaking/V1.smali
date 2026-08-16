.class public final Lcom/android/tools/r8/shaking/V1;
.super Lcom/android/tools/r8/shaking/X1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/X1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/V1;->a:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/shaking/U1;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/V1;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/U1;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->s:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
