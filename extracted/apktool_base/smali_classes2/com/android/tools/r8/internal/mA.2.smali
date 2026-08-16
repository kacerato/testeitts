.class public final Lcom/android/tools/r8/internal/mA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nA;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/lA;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/lA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    check-cast v0, Lcom/android/tools/r8/internal/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lA;->a(J)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    check-cast v0, Lcom/android/tools/r8/internal/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/lA;->a(I)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/lA;->a(I)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lA;->a(J)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    check-cast v0, Lcom/android/tools/r8/internal/F;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/lA;->a(B)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final a([B)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/lA;->a([B)Lcom/android/tools/r8/internal/lA;

    return-void
.end method
