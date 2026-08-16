.class public final synthetic Lcom/android/tools/r8/shaking/Ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/n3;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/n3;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Ad;->a:Lcom/android/tools/r8/shaking/n3;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Ad;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Ad;->a:Lcom/android/tools/r8/shaking/n3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Ad;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/n3;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/n3;

    move-result-object v0

    return-object v0
.end method
