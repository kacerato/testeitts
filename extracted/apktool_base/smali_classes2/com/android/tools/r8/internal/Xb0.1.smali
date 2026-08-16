.class public final Lcom/android/tools/r8/internal/Xb0;
.super Lcom/android/tools/r8/internal/Zb0;
.source "SourceFile"


# instance fields
.field public final E:I

.field public final F:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Xb0;->E:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xb0;->F:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Xb0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/Xb0;->E:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xb0;->F:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedInstanceFieldValueForEnumInstance(ordinal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", instance field="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
