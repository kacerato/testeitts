.class public final synthetic Le1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Le1/k;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;


# direct methods
.method public synthetic constructor <init>(Le1/k;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/j;->a:Le1/k;

    iput-object p2, p0, Le1/j;->b:Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le1/j;->a:Le1/k;

    check-cast p2, Lv1/l;

    check-cast p1, Le1/T;

    new-instance v1, Le1/g;

    invoke-direct {v1, v0, p2}, Le1/g;-><init>(Le1/k;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Le1/Z;

    iget-object v0, p0, Le1/j;->b:Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    invoke-virtual {p1}, LG0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Le1/Z;->t(Le1/f0;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
