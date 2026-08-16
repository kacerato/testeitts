.class public Lcom/android/tools/r8/graph/R2$a;
.super Lcom/android/tools/r8/graph/R2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Lcom/android/tools/r8/graph/e1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/e1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/R2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final F0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "No boxed value for DexValueAnnotation"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->r:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final H0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final V0()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e1;->l0()V

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/V2;->r:Lcom/android/tools/r8/graph/V2;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/e1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/R2$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/R2$a;

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/e1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "No ASM conversion for DexValueAnnotation"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/R2$a;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Annotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
