.class public LG0/j;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "ConnectionTelemetryConfigurationCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LG0/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:LG0/D;
    .annotation build LI0/c$c;
        getter = "getRootTelemetryConfiguration"
        id = 0x1
    .end annotation
.end field

.field public final c:Z
    .annotation build LI0/c$c;
        getter = "getMethodInvocationTelemetryEnabled"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        getter = "getMethodTimingTelemetryEnabled"
        id = 0x3
    .end annotation
.end field

.field public final e:[I
    .annotation build LI0/c$c;
        getter = "getMethodInvocationMethodKeyAllowlist"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$c;
        getter = "getMaxMethodInvocationsLogged"
        id = 0x5
    .end annotation
.end field

.field public final g:[I
    .annotation build LI0/c$c;
        getter = "getMethodInvocationMethodKeyDisallowlist"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/P0;

    invoke-direct {v0}, LG0/P0;-><init>()V

    sput-object v0, LG0/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(LG0/D;ZZ[II[I)V
    .locals 0
    .param p1    # LG0/D;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # [I
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # [I
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, LG0/j;->b:LG0/D;

    iput-boolean p2, p0, LG0/j;->c:Z

    iput-boolean p3, p0, LG0/j;->d:Z

    iput-object p4, p0, LG0/j;->e:[I

    iput p5, p0, LG0/j;->f:I

    iput-object p6, p0, LG0/j;->g:[I

    return-void
.end method


# virtual methods
.method public b0()[I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LG0/j;->g:[I

    return-object v0
.end method

.method public n()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LG0/j;->f:I

    return v0
.end method

.method public n0()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, LG0/j;->c:Z

    return v0
.end method

.method public t()[I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LG0/j;->e:[I

    return-object v0
.end method

.method public u0()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, LG0/j;->d:Z

    return v0
.end method

.method public final v0()LG0/D;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG0/j;->b:LG0/D;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LG0/j;->b:LG0/D;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    invoke-virtual {p0}, LG0/j;->n0()Z

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0}, LG0/j;->u0()Z

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, LG0/j;->t()[I

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->G(Landroid/os/Parcel;I[IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, LG0/j;->n()I

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 p2, 0x6

    invoke-virtual {p0}, LG0/j;->b0()[I

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->G(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
