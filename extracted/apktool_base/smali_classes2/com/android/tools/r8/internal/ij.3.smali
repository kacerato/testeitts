.class public final Lcom/android/tools/r8/internal/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/DG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/DG;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ij;->c:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/ij;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/ij;->b:Lcom/android/tools/r8/internal/DG;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "params:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/tools/r8/internal/ij;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ij;->b:Lcom/android/tools/r8/internal/DG;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/oG;

    new-instance v2, Lcom/android/tools/r8/internal/CG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/oG;->b:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/CG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/tools/r8/internal/mj;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, " no conversions\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ij;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
