.class public final synthetic Lu/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/e6;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/t0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/u0;->b:Lcom/android/tools/r8/dex/t0;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 1

    iget-object v0, p0, Lu/u0;->b:Lcom/android/tools/r8/dex/t0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/h0;->a(Lcom/android/tools/r8/dex/t0;Ljava/util/function/BiConsumer;)V

    return-void
.end method
