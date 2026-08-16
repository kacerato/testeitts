.class public final synthetic Lcom/android/tools/r8/internal/Da1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/fO;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Da1;->b:Lcom/android/tools/r8/internal/fO;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da1;->b:Lcom/android/tools/r8/internal/fO;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fO;->b()Lcom/android/tools/r8/internal/pO;

    move-result-object v0

    return-object v0
.end method
