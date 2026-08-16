.class public final Lcom/android/tools/r8/internal/em0;
.super Lcom/android/tools/r8/internal/lm0;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/em0;

.field public static final e:Lcom/android/tools/r8/internal/em0;


# instance fields
.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/em0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/em0;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/em0;->d:Lcom/android/tools/r8/internal/em0;

    new-instance v0, Lcom/android/tools/r8/internal/em0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/em0;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/em0;->e:Lcom/android/tools/r8/internal/em0;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/lm0;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/em0;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    sget-boolean v0, Lcom/android/tools/r8/internal/Mo0;->m:Z

    new-instance v0, Lcom/android/tools/r8/internal/Lo0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lo0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/em0;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$b;->b:Lcom/android/tools/r8/graph/l1;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$b;->a:Lcom/android/tools/r8/graph/l1;

    :goto_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    new-instance p1, Lcom/android/tools/r8/internal/Mo0;

    iget-object p2, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object p3, v0, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p1, p3, p2}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    iget-object p2, v0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/tools/r8/internal/zE;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/em0;->c:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j0()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/em0;->c:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/em0;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleBoxedBooleanValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
