.class public final Lcom/android/tools/r8/shaking/A3;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/C2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/shaking/A3;->f:Lcom/android/tools/r8/internal/C2;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method


# virtual methods
.method public final part()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A3;->f:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SYNTHESIZED_FROM_API_LEVEL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
