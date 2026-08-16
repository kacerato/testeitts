.class public LBd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LBd/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, LBd/a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static c(Landroid/os/Bundle;)LBd/a;
    .locals 1

    new-instance v0, LBd/a;

    invoke-direct {v0, p0}, LBd/a;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/util/ArrayList;)LBd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "LBd/a;"
        }
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public B(Ljava/lang/String;Ljava/io/Serializable;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public C(Ljava/lang/String;S)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public D(Ljava/lang/String;[S)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public E(Ljava/lang/String;Landroid/util/Size;)LBd/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-object p0
.end method

.method public F(Ljava/lang/String;Landroid/util/SizeF;)LBd/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-object p0
.end method

.method public G(Ljava/lang/String;Landroid/util/SparseArray;)LBd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "LBd/a;"
        }
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object p0
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public I(Ljava/lang/String;[Ljava/lang/String;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public J(Ljava/lang/String;Ljava/util/ArrayList;)LBd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "LBd/a;"
        }
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, LBd/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public d(Landroid/os/Bundle;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Landroid/os/IBinder;)LBd/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;Z)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public g(Ljava/lang/String;[Z)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public h(Ljava/lang/String;Landroid/os/Bundle;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;B)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public j(Ljava/lang/String;[B)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public k(Ljava/lang/String;C)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public l(Ljava/lang/String;[C)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/CharSequence;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;[Ljava/lang/CharSequence;)LBd/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/util/ArrayList;)LBd/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "LBd/a;"
        }
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public p(Ljava/lang/String;D)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public q(Ljava/lang/String;[D)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public r(Ljava/lang/String;F)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public s(Ljava/lang/String;[F)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public t(Ljava/lang/String;I)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public u(Ljava/lang/String;[I)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public v(Ljava/lang/String;Ljava/util/ArrayList;)LBd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "LBd/a;"
        }
    .end annotation

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;J)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public x(Ljava/lang/String;[J)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public y(Ljava/lang/String;Landroid/os/Parcelable;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public z(Ljava/lang/String;[Landroid/os/Parcelable;)LBd/a;
    .locals 1

    iget-object v0, p0, LBd/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method
