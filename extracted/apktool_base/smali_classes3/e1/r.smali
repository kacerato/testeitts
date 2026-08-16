.class public final synthetic Le1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Le1/u;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/h;


# direct methods
.method public synthetic constructor <init>(Le1/u;Lcom/google/android/gms/auth/api/identity/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/r;->a:Le1/u;

    iput-object p2, p0, Le1/r;->b:Lcom/google/android/gms/auth/api/identity/h;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le1/r;->a:Le1/u;

    check-cast p2, Lv1/l;

    check-cast p1, Le1/v;

    new-instance v1, Le1/o;

    invoke-direct {v1, v0, p2}, Le1/o;-><init>(Le1/u;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Le1/i0;

    iget-object v0, p0, Le1/r;->b:Lcom/google/android/gms/auth/api/identity/h;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/identity/h;

    invoke-virtual {p1}, LG0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Le1/i0;->e1(Le1/d0;Lcom/google/android/gms/auth/api/identity/h;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
