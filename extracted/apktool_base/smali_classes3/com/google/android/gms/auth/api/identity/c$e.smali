.class public final Lcom/google/android/gms/auth/api/identity/c$e;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "PasswordRequestOptionsCreator"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/c$e$a;
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
            "Lcom/google/android/gms/auth/api/identity/c$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LI0/c$c;
        getter = "isSupported"
        id = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/F;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/F;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/c$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1    # Z
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$e;->b:Z

    return-void
.end method

.method public static n()Lcom/google/android/gms/auth/api/identity/c$e$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/c$e$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/c$e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/c$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$e;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$e;->b:Z

    iget-boolean p1, p1, Lcom/google/android/gms/auth/api/identity/c$e;->b:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$e;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$e;->b:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$e;->t()Z

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
