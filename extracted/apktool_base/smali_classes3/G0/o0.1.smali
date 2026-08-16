.class public final LG0/o0;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "SignInButtonConfigCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LG0/o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getButtonSize"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        getter = "getColorScheme"
        id = 0x3
    .end annotation
.end field

.field public final e:[Lcom/google/android/gms/common/api/Scope;
    .annotation build LI0/c$c;
        getter = "getScopes"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/p0;

    invoke-direct {v0}, LG0/p0;-><init>()V

    sput-object v0, LG0/o0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
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
    .param p4    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LG0/o0;->b:I

    iput p2, p0, LG0/o0;->c:I

    iput p3, p0, LG0/o0;->d:I

    iput-object p4, p0, LG0/o0;->e:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, LG0/o0;->b:I

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v2, p0, LG0/o0;->c:I

    invoke-static {p1, v0, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v2, p0, LG0/o0;->d:I

    invoke-static {p1, v0, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, LG0/o0;->e:[Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v0, p2, v2}, LI0/b;->c0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
