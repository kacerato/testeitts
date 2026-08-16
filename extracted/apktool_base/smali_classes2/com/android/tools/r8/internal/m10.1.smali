.class public final Lcom/android/tools/r8/internal/m10;
.super Lcom/android/tools/r8/internal/Qm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ED;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/m10;

.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/m10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m10;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/m10;->c:Lcom/android/tools/r8/internal/m10;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final G()Lcom/android/tools/r8/internal/m10;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    if-ne p0, p2, :cond_0

    return-object p0

    .line 4
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/android/tools/r8/internal/O5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of p1, p1, Lcom/android/tools/r8/internal/e40;

    if-nez p1, :cond_4

    .line 6
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/m10;->d:Z

    if-nez p1, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p2

    .line 8
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x5

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/android/tools/r8/internal/ED;
    .locals 0

    return-object p0
.end method

.method public final k()Lcom/android/tools/r8/internal/S60;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    return-object p0
.end method
