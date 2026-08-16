.class public LG0/D;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "RootTelemetryConfigurationCreator"
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
            "LG0/D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LI0/c$c;
        getter = "getVersion"
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

.field public final e:I
    .annotation build LI0/c$c;
        getter = "getBatchPeriodMillis"
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LI0/c$c;
        getter = "getMaxMethodInvocationsInBatch"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/B0;

    invoke-direct {v0}, LG0/B0;-><init>()V

    sput-object v0, LG0/D;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
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
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # I
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, LG0/D;->b:I

    iput-boolean p2, p0, LG0/D;->c:Z

    iput-boolean p3, p0, LG0/D;->d:Z

    iput p4, p0, LG0/D;->e:I

    iput p5, p0, LG0/D;->f:I

    return-void
.end method


# virtual methods
.method public b0()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, LG0/D;->c:Z

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LG0/D;->b:I

    return v0
.end method

.method public n()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LG0/D;->e:I

    return v0
.end method

.method public n0()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, LG0/D;->d:Z

    return v0
.end method

.method public t()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LG0/D;->f:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LG0/D;->getVersion()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LG0/D;->b0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LG0/D;->n0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, LG0/D;->n()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, LG0/D;->t()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
