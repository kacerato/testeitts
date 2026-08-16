.class public final Lcom/google/android/gms/common/api/h;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "ComplianceOptionsCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/h$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$c;
        getter = "getCallerProductId"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getDataOwnerProductId"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        getter = "getProcessingReason"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        defaultValue = "true"
        getter = "isUserData"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/api/h;->n()Lcom/google/android/gms/common/api/h$a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->b(I)Lcom/google/android/gms/common/api/h$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->c(I)Lcom/google/android/gms/common/api/h$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->e(I)Lcom/google/android/gms/common/api/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->d(Z)Lcom/google/android/gms/common/api/h$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h$a;->a()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/h;->f:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/common/api/K;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/K;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/h;->b:I

    iput p2, p0, Lcom/google/android/gms/common/api/h;->c:I

    iput p3, p0, Lcom/google/android/gms/common/api/h;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/api/h;->e:Z

    return-void
.end method

.method public static n()Lcom/google/android/gms/common/api/h$a;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/h$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h$a;-><init>()V

    return-object v0
.end method

.method public static final p(Landroid/content/Context;)Lcom/google/android/gms/common/api/h$a;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/api/h;->n()Lcom/google/android/gms/common/api/h$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/common/api/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/h;

    iget v0, p0, Lcom/google/android/gms/common/api/h;->b:I

    iget v2, p1, Lcom/google/android/gms/common/api/h;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/h;->c:I

    iget v2, p1, Lcom/google/android/gms/common/api/h;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/h;->d:I

    iget v2, p1, Lcom/google/android/gms/common/api/h;->d:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/h;->e:Z

    iget-boolean p1, p1, Lcom/google/android/gms/common/api/h;->e:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/h;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/common/api/h;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public t()Lcom/google/android/gms/common/api/h$a;
    .locals 2
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/h$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h$a;-><init>()V

    iget v1, p0, Lcom/google/android/gms/common/api/h;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->b(I)Lcom/google/android/gms/common/api/h$a;

    iget v1, p0, Lcom/google/android/gms/common/api/h;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->c(I)Lcom/google/android/gms/common/api/h$a;

    iget v1, p0, Lcom/google/android/gms/common/api/h;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->e(I)Lcom/google/android/gms/common/api/h$a;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/h;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h$a;->d(Z)Lcom/google/android/gms/common/api/h$a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComplianceOptions{callerProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/common/api/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataOwnerProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/common/api/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/common/api/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/h;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Lcom/google/android/gms/common/api/h;->b:I

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x2

    iget v1, p0, Lcom/google/android/gms/common/api/h;->c:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x3

    iget v1, p0, Lcom/google/android/gms/common/api/h;->d:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/h;->e:Z

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
