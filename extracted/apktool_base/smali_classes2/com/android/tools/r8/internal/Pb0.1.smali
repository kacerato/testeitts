.class public final Lcom/android/tools/r8/internal/Pb0;
.super Lcom/android/tools/r8/internal/Zb0;
.source "SourceFile"


# instance fields
.field public final E:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pb0;->E:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Pb0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pb0;->E:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalInvokeWithImpreciseParameterType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
