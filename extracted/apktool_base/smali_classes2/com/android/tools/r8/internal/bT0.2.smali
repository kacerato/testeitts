.class public final synthetic Lcom/android/tools/r8/internal/bT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QR;

.field public final synthetic c:Lcom/android/tools/r8/internal/R00;

.field public final synthetic d:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bT0;->b:Lcom/android/tools/r8/internal/QR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bT0;->c:Lcom/android/tools/r8/internal/R00;

    iput-object p3, p0, Lcom/android/tools/r8/internal/bT0;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bT0;->b:Lcom/android/tools/r8/internal/QR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bT0;->c:Lcom/android/tools/r8/internal/R00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bT0;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/RR;

    move-result-object v0

    return-object v0
.end method
