.class public final Ls1/b;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Landroid/content/Context;Landroid/os/Looper;LG0/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    check-cast p4, Ls1/a;

    new-instance p4, Lt1/a;

    const/4 v3, 0x1

    invoke-static {p3}, Lt1/a;->v0(LG0/i;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lt1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLG0/i;Landroid/os/Bundle;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V

    return-object p4
.end method
