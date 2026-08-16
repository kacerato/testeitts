.class public Lcom/android/tools/r8/graph/R2$h;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$h;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/R2$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$h;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$h;->e:Lcom/android/tools/r8/graph/R2$h;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    return-void
.end method

.method public static j(I)Lcom/android/tools/r8/graph/R2$h;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/graph/R2$h;->e:Lcom/android/tools/r8/graph/R2$h;

    iget v1, v0, Lcom/android/tools/r8/graph/R2$h;->d:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/R2$h;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/R2$h;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->f:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 2
    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    int-to-long v0, v0

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 3

    .line 4
    sget-object p2, Lcom/android/tools/r8/graph/V2;->f:Lcom/android/tools/r8/graph/V2;

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/tools/r8/graph/a3;->a(Lcom/android/tools/r8/graph/V2;JILcom/android/tools/r8/dex/y;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$h;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    check-cast p1, Lcom/android/tools/r8/graph/R2$h;

    iget p1, p1, Lcom/android/tools/r8/graph/R2$h;->d:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/R2$h;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Lcom/android/tools/r8/graph/R2$h;
    .locals 0

    return-object p0
.end method
