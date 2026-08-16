.class public final Lt0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/z$a;


# direct methods
.method public constructor <init>(Lt0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/u;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt0/b$a;

    invoke-interface {p1}, Lt0/b$a;->h()Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
