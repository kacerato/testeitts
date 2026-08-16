.class public final Lv0/m;
.super Lv0/s;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/auth/D;


# direct methods
.method public constructor <init>(Lv0/b;ILcom/google/android/gms/internal/auth/D;)V
    .locals 0

    iput-object p3, p0, Lv0/m;->f:Lcom/google/android/gms/internal/auth/D;

    const/16 p1, 0x649

    invoke-direct {p0, p1}, Lv0/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/internal/auth/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lv0/s;->e:Lcom/google/android/gms/internal/auth/t;

    iget-object v1, p0, Lv0/m;->f:Lcom/google/android/gms/internal/auth/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/auth/v;->e1(Lcom/google/android/gms/internal/auth/u;Lcom/google/android/gms/internal/auth/D;)V

    return-void
.end method
