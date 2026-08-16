.class public final Lcom/android/tools/r8/internal/Sb0;
.super Lcom/android/tools/r8/internal/Zb0;
.source "SourceFile"


# instance fields
.field public final E:Lcom/android/tools/r8/graph/l1;

.field public final F:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/Sb0;->F:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Sb0;->E:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Sb0;->E:Lcom/android/tools/r8/graph/l1;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/Sb0;->F:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Sb0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sb0;->E:Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Sb0;->F:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ordinal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MissingDynamicType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
