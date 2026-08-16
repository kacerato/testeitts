.class public final synthetic Lcom/android/tools/r8/shaking/Fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/xt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Fc;->b:Lcom/android/tools/r8/internal/xt;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Fc;->b:Lcom/android/tools/r8/internal/xt;

    invoke-static {v0}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    return-object v0
.end method
