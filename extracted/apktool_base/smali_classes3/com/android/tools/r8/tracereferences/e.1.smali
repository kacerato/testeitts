.class public final Lcom/android/tools/r8/tracereferences/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/e;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/e;->b:[B

    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgramResources()Ljava/util/Collection;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/e;->a:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/e;->b:[B

    iget-object v3, p0, Lcom/android/tools/r8/tracereferences/e;->c:Ljava/lang/String;

    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v4, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2, v4}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
