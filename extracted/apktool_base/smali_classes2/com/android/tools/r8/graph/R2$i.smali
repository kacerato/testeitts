.class public Lcom/android/tools/r8/graph/R2$i;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$i;


# instance fields
.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/R2$i;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/R2$i;-><init>(J)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$i;->e:Lcom/android/tools/r8/graph/R2$i;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    return-void
.end method

.method public static a(J)Lcom/android/tools/r8/graph/R2$i;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/R2$i;->e:Lcom/android/tools/r8/graph/R2$i;

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/R2$i;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/R2$i;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$i;->W0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->g:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    return-wide v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 3
    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 3

    .line 5
    sget-object p2, Lcom/android/tools/r8/graph/V2;->g:Lcom/android/tools/r8/graph/V2;

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    const/16 v2, 0x8

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/tools/r8/graph/a3;->a(Lcom/android/tools/r8/graph/V2;JILcom/android/tools/r8/dex/y;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->x0()Lcom/android/tools/r8/graph/R2$i;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/tools/r8/graph/R2$i;->d:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/pf;->a(JJ)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/nA;->a(J)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$i;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    check-cast p1, Lcom/android/tools/r8/graph/R2$i;

    iget-wide v3, p1, Lcom/android/tools/r8/graph/R2$i;->d:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$i;->d:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Lcom/android/tools/r8/graph/R2$i;
    .locals 0

    return-object p0
.end method
