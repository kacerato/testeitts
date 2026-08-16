.class public final Lcom/android/tools/r8/internal/Af;
.super Lcom/android/tools/r8/internal/Ff;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/j9;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/j9;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ff;-><init>(Lcom/android/tools/r8/internal/Ef;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Af;->c:Lcom/android/tools/r8/internal/j9;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af;->c:Lcom/android/tools/r8/internal/j9;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/j9;->b()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af;->c:Lcom/android/tools/r8/internal/j9;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/j9;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method
