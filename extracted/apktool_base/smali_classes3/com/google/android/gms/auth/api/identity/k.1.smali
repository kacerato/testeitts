.class public Lcom/google/android/gms/auth/api/identity/k;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "SavePasswordRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/k$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/auth/api/identity/o;
    .annotation build LI0/c$c;
        getter = "getSignInPassword"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getSessionId"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        getter = "getTheme"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/J;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/J;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/identity/o;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/o;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/o;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/k;->b:Lcom/google/android/gms/auth/api/identity/o;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/identity/k;->d:I

    return-void
.end method

.method public static b0(Lcom/google/android/gms/auth/api/identity/k;)Lcom/google/android/gms/auth/api/identity/k$a;
    .locals 2
    .param p0    # Lcom/google/android/gms/auth/api/identity/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/k;->n()Lcom/google/android/gms/auth/api/identity/k$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/k;->t()Lcom/google/android/gms/auth/api/identity/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/k$a;->b(Lcom/google/android/gms/auth/api/identity/o;)Lcom/google/android/gms/auth/api/identity/k$a;

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/k;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/k$a;->c(I)Lcom/google/android/gms/auth/api/identity/k$a;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/k$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/k$a;

    :cond_0
    return-object v0
.end method

.method public static n()Lcom/google/android/gms/auth/api/identity/k$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/k$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/k$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/k;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/k;->b:Lcom/google/android/gms/auth/api/identity/o;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/k;->b:Lcom/google/android/gms/auth/api/identity/o;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/auth/api/identity/k;->d:I

    iget p1, p1, Lcom/google/android/gms/auth/api/identity/k;->d:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/k;->b:Lcom/google/android/gms/auth/api/identity/o;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public t()Lcom/google/android/gms/auth/api/identity/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/k;->b:Lcom/google/android/gms/auth/api/identity/o;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/k;->t()Lcom/google/android/gms/auth/api/identity/o;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/k;->c:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x3

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/k;->d:I

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
