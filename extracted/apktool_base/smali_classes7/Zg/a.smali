.class public final LZg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZg/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Section.kt\norg/anastr/speedviewlib/components/Section\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Section.kt\norg/anastr/speedviewlib/components/Section\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
    }
.end annotation


# static fields
.field public static final CREATOR:LZg/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:LYg/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:LZg/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZg/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZg/a$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LZg/a;->CREATOR:LZg/a$a;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 8
    .annotation build LLf/k;
    .end annotation

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v7}, LZg/a;-><init>(FFIFLZg/b;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(FFIF)V
    .locals 8
    .annotation build LLf/k;
    .end annotation

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v7}, LZg/a;-><init>(FFIFLZg/b;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(FFIFLZg/b;)V
    .locals 1
    .param p5    # LZg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "style"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p4, p0, LZg/a;->c:F

    .line 5
    iput p1, p0, LZg/a;->e:F

    .line 6
    iput p2, p0, LZg/a;->f:F

    .line 7
    iput p3, p0, LZg/a;->g:I

    .line 8
    iput-object p5, p0, LZg/a;->h:LZg/b;

    return-void
.end method

.method public synthetic constructor <init>(FFIFLZg/b;ILkotlin/jvm/internal/x;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 9
    sget-object p5, LZg/b;->BUTT:LZg/b;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, LZg/a;-><init>(FFIFLZg/b;)V

    return-void
.end method

.method public constructor <init>(LZg/a;)V
    .locals 7
    .param p1    # LZg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, LZg/a;->f()F

    move-result v2

    invoke-virtual {p1}, LZg/a;->d()F

    move-result v3

    iget v4, p1, LZg/a;->g:I

    iget v5, p1, LZg/a;->c:F

    iget-object v6, p1, LZg/a;->h:LZg/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LZg/a;-><init>(FFIFLZg/b;)V

    .line 12
    iget p1, p1, LZg/a;->d:F

    invoke-virtual {p0, p1}, LZg/a;->n(F)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.anastr.speedviewlib.components.Style"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, LZg/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LZg/a;-><init>(FFIFLZg/b;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, LZg/a;->n(F)V

    return-void
.end method


# virtual methods
.method public final C(F)V
    .locals 0

    iput p1, p0, LZg/a;->c:F

    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LYg/j;->F()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LZg/a;->b:LYg/j;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, LZg/a;->g:I

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, LZg/a;->f:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, LZg/a;->d:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, LZg/a;->e:F

    return v0
.end method

.method public final g()LZg/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LZg/a;->h:LZg/b;

    return-object v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, LZg/a;->c:F

    return v0
.end method

.method public final i(LYg/j;)LZg/a;
    .locals 1
    .param p1    # LYg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gauge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LZg/a;->b:LYg/j;

    if-nez v0, :cond_0

    iput-object p1, p0, LZg/a;->b:LYg/j;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This instance of Section is already attached to a Gauge."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, LZg/a;->g:I

    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LYg/j;->F()V

    :cond_0
    return-void
.end method

.method public final m(F)V
    .locals 1

    invoke-virtual {p0}, LZg/a;->f()F

    move-result v0

    invoke-virtual {p0, v0, p1}, LZg/a;->p(FF)V

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, LZg/a;->d:F

    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LYg/j;->F()V

    :cond_0
    return-void
.end method

.method public final p(FF)V
    .locals 0

    iput p1, p0, LZg/a;->e:F

    iput p2, p0, LZg/a;->f:F

    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, LYg/j;->q(LZg/a;)V

    :cond_0
    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LYg/j;->r()V

    :cond_1
    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LYg/j;->F()V

    :cond_2
    return-void
.end method

.method public final q(F)V
    .locals 1

    invoke-virtual {p0}, LZg/a;->d()F

    move-result v0

    invoke-virtual {p0, p1, v0}, LZg/a;->p(FF)V

    return-void
.end method

.method public final t(LZg/b;)V
    .locals 1
    .param p1    # LZg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LZg/a;->h:LZg/b;

    iget-object p1, p0, LZg/a;->b:LYg/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LYg/j;->F()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LZg/a;->f()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, LZg/a;->d()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, LZg/a;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, LZg/a;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, LZg/a;->h:LZg/b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, LZg/a;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
