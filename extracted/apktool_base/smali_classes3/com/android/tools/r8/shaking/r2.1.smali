.class public Lcom/android/tools/r8/shaking/r2;
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

    iput p14, p0, Lcom/android/tools/r8/shaking/r2;->r:I

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    const-string v0, "maximumremovedandroidloglevel"

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/shaking/r2;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/shaking/r2;->r:I

    return v0
.end method

.method public final n()Lcom/android/tools/r8/shaking/r2;
    .locals 0

    return-object p0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
