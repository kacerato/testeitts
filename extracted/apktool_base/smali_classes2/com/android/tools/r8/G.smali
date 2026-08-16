.class public final Lcom/android/tools/r8/G;
.super Lcom/android/tools/r8/FeatureSplit;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/FeatureSplit;-><init>(Lcom/android/tools/r8/ProgramConsumer;Ljava/util/ArrayList;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/U1;)V

    return-void
.end method


# virtual methods
.method public final isBase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
