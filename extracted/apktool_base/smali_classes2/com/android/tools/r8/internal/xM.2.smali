.class public final Lcom/android/tools/r8/internal/xM;
.super Lcom/android/tools/r8/shaking/L3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 16

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    sget-object v8, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    sget-object v14, Lcom/android/tools/r8/shaking/O3;->f:Lcom/android/tools/r8/shaking/O3;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v3, "keep-annotation"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/android/tools/r8/shaking/L3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    return-void
.end method
