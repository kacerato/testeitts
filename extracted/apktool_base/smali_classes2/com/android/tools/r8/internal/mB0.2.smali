.class public final synthetic Lcom/android/tools/r8/internal/mB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/CJ;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mB0;->a:Lcom/android/tools/r8/internal/CJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mB0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mB0;->a:Lcom/android/tools/r8/internal/CJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mB0;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CJ;->c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object v0

    return-object v0
.end method
