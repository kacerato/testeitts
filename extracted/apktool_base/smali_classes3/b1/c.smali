.class public final synthetic Lb1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lb1/a;

.field public final synthetic b:Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;


# direct methods
.method public synthetic constructor <init>(Lb1/a;Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/c;->a:Lb1/a;

    iput-object p2, p0, Lb1/c;->b:Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb1/c;->a:Lb1/a;

    iget-object v1, p0, Lb1/c;->b:Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;

    check-cast p1, Lj1/k0;

    check-cast p2, Lv1/l;

    new-instance v2, Lb1/f;

    invoke-direct {v2, v0, p2}, Lb1/f;-><init>(Lb1/a;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/i0;

    invoke-virtual {p1, v2, v1}, Lj1/i0;->l0(Lj1/h0;Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;)V

    return-void
.end method
