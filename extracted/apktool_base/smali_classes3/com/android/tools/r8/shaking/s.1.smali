.class public final Lcom/android/tools/r8/shaking/s;
.super Lcom/android/tools/r8/shaking/v3;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final r:Lcom/android/tools/r8/shaking/r;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/r;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/tools/r8/shaking/v3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iput-object p14, p0, Lcom/android/tools/r8/shaking/s;->r:Lcom/android/tools/r8/shaking/r;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s;->r:Lcom/android/tools/r8/shaking/r;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "neverclassinline"

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s;->r:Lcom/android/tools/r8/shaking/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown class inline type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "alwaysclassinline"

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/shaking/s;
    .locals 0

    return-object p0
.end method
