.class public final Lcom/android/tools/r8/shaking/v4;
.super Lcom/android/tools/r8/shaking/v3;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final r:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;I)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/tools/r8/shaking/v3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iput p14, p0, Lcom/android/tools/r8/shaking/v4;->r:I

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/shaking/v4;->r:I

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "neverreprocessmethod"

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    :cond_1
    const-string v0, "reprocessmethod"

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/shaking/v4;
    .locals 0

    return-object p0
.end method
