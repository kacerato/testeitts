.class public Lcom/android/tools/r8/kotlin/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/kotlin/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/l0$c;

.field public final b:Lcom/android/tools/r8/naming/M0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/l0$c;Lcom/android/tools/r8/naming/M0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/l0$a;->a:Lcom/android/tools/r8/kotlin/l0$c;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/l0$a;->b:Lcom/android/tools/r8/naming/M0;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/naming/M0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/l0$a;->b:Lcom/android/tools/r8/naming/M0;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/kotlin/l0$c;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/l0$a;->a:Lcom/android/tools/r8/kotlin/l0$c;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/l0$a;->b:Lcom/android/tools/r8/naming/M0;

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/l0$a;->a:Lcom/android/tools/r8/kotlin/l0$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/l0$a;->b:Lcom/android/tools/r8/naming/M0;

    iget v2, v1, Lcom/android/tools/r8/naming/M0;->b:I

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->a:I

    if-eq v2, v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/l0$a;->b:Lcom/android/tools/r8/naming/M0;

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
