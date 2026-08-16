.class public final Le1/l;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/content/Context;Landroid/os/Looper;LG0/i;Ljava/lang/Object;LD0/d;LD0/k;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    move-object v3, p4

    check-cast v3, Lcom/google/android/gms/auth/api/identity/M;

    new-instance p4, Le1/v;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le1/v;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/auth/api/identity/M;LG0/i;LD0/d;LD0/k;)V

    return-object p4
.end method
