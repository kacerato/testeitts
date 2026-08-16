.class public final Lcom/android/tools/r8/tracereferences/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/ProgramResource;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/PathOrigin;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/g;->a:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v1, p2, v2}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/g;->b:Lcom/android/tools/r8/ProgramResource;

    return-void
.end method


# virtual methods
.method public final getClassDescriptors()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/g;->a:Ljava/lang/String;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/g;->b:Lcom/android/tools/r8/ProgramResource;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
