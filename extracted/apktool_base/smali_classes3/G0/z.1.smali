.class public LG0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG0/z$a;
    }
.end annotation


# static fields
.field public static final a:LG0/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG0/f0;

    invoke-direct {v0}, LG0/f0;-><init>()V

    sput-object v0, LG0/z;->a:LG0/j0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/t;)Lv1/k;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/u;",
            "T:",
            "Lcom/google/android/gms/common/api/t<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/p<",
            "TR;>;TT;)",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LG0/h0;

    invoke-direct {v0, p1}, LG0/h0;-><init>(Lcom/google/android/gms/common/api/t;)V

    invoke-static {p0, v0}, LG0/z;->b(Lcom/google/android/gms/common/api/p;LG0/z$a;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/p;LG0/z$a;)Lv1/k;
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LG0/z$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/u;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/p<",
            "TR;>;",
            "LG0/z$a<",
            "TR;TT;>;)",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LG0/z;->a:LG0/j0;

    new-instance v1, Lv1/l;

    invoke-direct {v1}, Lv1/l;-><init>()V

    new-instance v2, LG0/g0;

    invoke-direct {v2, p0, v1, p1, v0}, LG0/g0;-><init>(Lcom/google/android/gms/common/api/p;Lv1/l;LG0/z$a;LG0/j0;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/p;->c(Lcom/google/android/gms/common/api/p$a;)V

    invoke-virtual {v1}, Lv1/l;->a()Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/p;)Lv1/k;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/u;",
            ">(",
            "Lcom/google/android/gms/common/api/p<",
            "TR;>;)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, LG0/i0;

    invoke-direct {v0}, LG0/i0;-><init>()V

    invoke-static {p0, v0}, LG0/z;->b(Lcom/google/android/gms/common/api/p;LG0/z$a;)Lv1/k;

    move-result-object p0

    return-object p0
.end method
