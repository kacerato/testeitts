.class public final Lcom/android/tools/r8/internal/Cf;
.super Lcom/android/tools/r8/internal/Ff;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ff;-><init>(Lcom/android/tools/r8/internal/Ef;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cf;->c:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 4

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Cf;->d:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cf;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Invoked on another thread than main"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Gf;

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/tools/r8/internal/Gf;-><init>(Lcom/android/tools/r8/internal/Ff;Lcom/android/tools/r8/graph/H2;I)V

    if-nez v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_2
    return-object v1
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method
