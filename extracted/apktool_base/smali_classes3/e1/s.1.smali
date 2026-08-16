.class public final synthetic Le1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Le1/u;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/g;


# direct methods
.method public synthetic constructor <init>(Le1/u;Lcom/google/android/gms/auth/api/identity/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/s;->a:Le1/u;

    iput-object p2, p0, Le1/s;->b:Lcom/google/android/gms/auth/api/identity/g;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lv1/l;

    iget-object v0, p0, Le1/s;->a:Le1/u;

    iget-object v1, p0, Le1/s;->b:Lcom/google/android/gms/auth/api/identity/g;

    check-cast p1, Le1/v;

    invoke-virtual {v0, v1, p1, p2}, Le1/u;->h0(Lcom/google/android/gms/auth/api/identity/g;Le1/v;Lv1/l;)V

    return-void
.end method
