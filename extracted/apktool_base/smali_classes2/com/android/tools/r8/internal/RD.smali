.class public final Lcom/android/tools/r8/internal/RD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/SD;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/RD;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/RD;->a:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/internal/RD;->b:Z

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    return-object p1

    .line 10
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/RD;->a:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p1

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/RD;->a:I

    if-eq p1, v0, :cond_3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/RD;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/RD;-><init>(I)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final q()Lcom/android/tools/r8/internal/RD;
    .locals 0

    return-object p0
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/RD;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceFieldArgumentInitializationInfo(argumentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
