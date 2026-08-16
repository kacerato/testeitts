.class public final Lcom/android/tools/r8/internal/Y00;
.super Lcom/android/tools/r8/internal/fE;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/UD;

.field public final c:Lcom/android/tools/r8/internal/p;

.field public final d:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fE;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Y00;->e:Z

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, -0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/Y00;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Y00;->b:Lcom/android/tools/r8/internal/UD;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Y00;->c:Lcom/android/tools/r8/internal/p;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Y00;->d:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Y00;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/UD;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y00;->b:Lcom/android/tools/r8/internal/UD;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y00;->d:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Y00;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Y00;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/tools/r8/internal/p;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y00;->c:Lcom/android/tools/r8/internal/p;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Y00;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y00;->b:Lcom/android/tools/r8/internal/UD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonTrivialInstanceInitializerInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
