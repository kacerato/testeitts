.class public final synthetic Lu/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/L;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/M0;->a:Lcom/android/tools/r8/dex/L;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/M0;->a:Lcom/android/tools/r8/dex/L;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/L;->a()Lcom/android/tools/r8/dex/L;

    move-result-object v0

    return-object v0
.end method
