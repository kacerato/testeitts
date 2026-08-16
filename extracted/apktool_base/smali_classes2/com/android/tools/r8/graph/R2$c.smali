.class public Lcom/android/tools/r8/graph/R2$c;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$c;

.field public static final f:Lcom/android/tools/r8/graph/R2$c;

.field public static final g:Lcom/android/tools/r8/graph/R2$c;


# instance fields
.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/R2$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$c;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    new-instance v0, Lcom/android/tools/r8/graph/R2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$c;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    new-instance v0, Lcom/android/tools/r8/graph/R2$c;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$c;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$c;->g:Lcom/android/tools/r8/graph/R2$c;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    return-void
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$c;->W0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->t:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final I0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 1

    .line 4
    sget-object p2, Lcom/android/tools/r8/graph/V2;->t:Lcom/android/tools/r8/graph/V2;

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->o0()Lcom/android/tools/r8/graph/R2$c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/R2$c;->d:Z

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(ZZ)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(Z)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$c;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/R2$c;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/R2$c;->d:Z

    iget-boolean v1, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4d2

    return v0

    :cond_0
    const/16 v0, 0x10e1

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final o0()Lcom/android/tools/r8/graph/R2$c;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/R2$c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "True"

    return-object v0

    :cond_0
    const-string v0, "False"

    return-object v0
.end method
