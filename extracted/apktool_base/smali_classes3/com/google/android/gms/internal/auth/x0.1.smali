.class public final synthetic Lcom/google/android/gms/internal/auth/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/O0;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/x0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final N1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/x0;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/auth/H0;->l:I

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/t0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/M0;

    move-result-object v0

    return-object v0
.end method
