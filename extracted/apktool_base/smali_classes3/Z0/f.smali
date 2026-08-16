.class public final synthetic LZ0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LZ0/a;

.field public final synthetic b:Lcom/google/android/gms/fido/fido2/api/common/d;


# direct methods
.method public synthetic constructor <init>(LZ0/a;Lcom/google/android/gms/fido/fido2/api/common/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/f;->a:LZ0/a;

    iput-object p2, p0, LZ0/f;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LZ0/f;->a:LZ0/a;

    iget-object v1, p0, LZ0/f;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    check-cast p1, Lj1/b0;

    check-cast p2, Lv1/l;

    new-instance v2, LZ0/i;

    invoke-direct {v2, v0, p2}, LZ0/i;-><init>(LZ0/a;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lj1/e0;

    invoke-virtual {p1, v2, v1}, Lj1/e0;->t(Lj1/d0;Lcom/google/android/gms/fido/fido2/api/common/d;)V

    return-void
.end method
