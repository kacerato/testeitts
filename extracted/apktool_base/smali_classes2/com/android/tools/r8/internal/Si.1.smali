.class public abstract Lcom/android/tools/r8/internal/Si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ri;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ApiModelingMetadata:",
        "Ljava/lang/Object;",
        "LibraryDesugaringMetadata::Lcom/android/tools/r8/internal/Pi;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Ri<",
        "TApiModelingMetadata;T",
        "LibraryDesugaringMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "apiModeling"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TApiModelingMetadata;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/tools/r8/internal/Pi;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "libraryDesugaring"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LibraryDesugaringMetadata;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "minApiLevel"
    .end annotation
.end field

.field public final d:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isDebugModeEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/Qi;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Si;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Si;->b:Lcom/android/tools/r8/internal/Pi;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Si;->c:Ljava/lang/String;

    iget-boolean p1, p3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Si;->d:Z

    return-void
.end method


# virtual methods
.method public final getApiModelingMetadata()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Si;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLibraryDesugaringMetadata()Lcom/android/tools/r8/internal/Pi;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Si;->b:Lcom/android/tools/r8/internal/Pi;

    return-object v0
.end method

.method public final getMinApiLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Si;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isDebugModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Si;->d:Z

    return v0
.end method
