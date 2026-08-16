.class public final Lcom/android/tools/r8/internal/lC;
.super Lcom/android/tools/r8/internal/sC;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/internal/mC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/mC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/lC;->e:Lcom/android/tools/r8/internal/mC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sC;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lC;->e:Lcom/android/tools/r8/internal/mC;

    check-cast v0, Lcom/android/tools/r8/internal/aC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/jV;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/jV;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final k()Lcom/android/tools/r8/internal/nC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lC;->e:Lcom/android/tools/r8/internal/mC;

    return-object v0
.end method
