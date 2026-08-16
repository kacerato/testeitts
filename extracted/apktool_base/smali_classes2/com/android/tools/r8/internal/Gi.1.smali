.class public final Lcom/android/tools/r8/internal/Gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/D8BuildMetadata;


# instance fields
.field public final a:Lcom/android/tools/r8/metadata/D8OptionsMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "options"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Oi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gi;->a:Lcom/android/tools/r8/metadata/D8OptionsMetadata;

    const-string p1, "8.10.21"

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOptionsMetadata()Lcom/android/tools/r8/metadata/D8OptionsMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gi;->a:Lcom/android/tools/r8/metadata/D8OptionsMetadata;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Oz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Oz;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
