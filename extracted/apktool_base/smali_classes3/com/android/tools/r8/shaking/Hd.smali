.class public final synthetic Lcom/android/tools/r8/shaking/Hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/o2;

.field public final synthetic b:Lcom/android/tools/r8/synthesis/J;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Hd;->a:Lcom/android/tools/r8/shaking/o2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Hd;->b:Lcom/android/tools/r8/synthesis/J;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/Hd;->c:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Hd;->a:Lcom/android/tools/r8/shaking/o2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Hd;->b:Lcom/android/tools/r8/synthesis/J;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/Hd;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    return-object v0
.end method
