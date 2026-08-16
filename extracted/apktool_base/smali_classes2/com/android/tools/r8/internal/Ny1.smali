.class public final synthetic Lcom/android/tools/r8/internal/Ny1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Sr0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Sr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ny1;->b:Lcom/android/tools/r8/internal/Sr0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ny1;->b:Lcom/android/tools/r8/internal/Sr0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/xr0;->a(Lcom/android/tools/r8/internal/Sr0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
