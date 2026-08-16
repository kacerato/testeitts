.class public final La1/d0;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthenticationExtensionsPrfOutputsCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/d0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LI0/c$c;
        getter = "getSupported"
        id = 0x1
    .end annotation
.end field

.field public final c:[B
    .annotation build LI0/c$c;
        getter = "getOutputs"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/e0;

    invoke-direct {v0}, La1/e0;-><init>()V

    sput-object v0, La1/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 0
    .param p1    # Z
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-boolean p1, p0, La1/d0;->b:Z

    iput-object p2, p0, La1/d0;->c:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, La1/d0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, La1/d0;

    iget-boolean v0, p0, La1/d0;->b:Z

    iget-boolean v2, p1, La1/d0;->b:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, La1/d0;->c:[B

    iget-object p1, p1, La1/d0;->c:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, La1/d0;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, La1/d0;->c:[B

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, La1/d0;->b:Z

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, La1/d0;->c:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
