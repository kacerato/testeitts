.class public final Lcom/android/tools/r8/internal/Ef;
.super Lcom/android/tools/r8/internal/Bf;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Hf;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hf;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bf;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ef;->a:Lcom/android/tools/r8/internal/Hf;

    iput p2, p0, Lcom/android/tools/r8/internal/Ef;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Df;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Df;-><init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;)V

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x24

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Bf;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ef;->a:Lcom/android/tools/r8/internal/Hf;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hf;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method
