.class public final Lcom/android/tools/r8/graph/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/QC;

.field public final d:Lcom/android/tools/r8/internal/QC;

.field public final e:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(ZZLcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/z0;->a:Z

    iput-boolean p2, p0, Lcom/android/tools/r8/graph/z0;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    iput-object p4, p0, Lcom/android/tools/r8/graph/z0;->d:Lcom/android/tools/r8/internal/QC;

    iput-object p5, p0, Lcom/android/tools/r8/graph/z0;->e:Lcom/android/tools/r8/internal/QC;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z0;->e:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z0;->d:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z0;->e:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z0;->d:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
