.class public final Lcom/google/android/gms/common/internal/zzaj;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:LB0/c;


# direct methods
.method public constructor <init>(LB0/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, LB0/c;->n0()Z

    move-result v0

    const-string v1, "ResolvableConnectionException can only be created with a connection result containing a resolution."

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzaj;->zza:LB0/c;

    return-void
.end method
