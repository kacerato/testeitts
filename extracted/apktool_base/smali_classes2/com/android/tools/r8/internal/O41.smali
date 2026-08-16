.class public final synthetic Lcom/android/tools/r8/internal/O41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/EJ;

.field public final synthetic b:Lcom/android/tools/r8/internal/fB;

.field public final synthetic c:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/O41;->a:Lcom/android/tools/r8/internal/EJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/O41;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/O41;->c:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/O41;->a:Lcom/android/tools/r8/internal/EJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/O41;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/O41;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/ad;->a(Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Yi$a;

    move-result-object v0

    return-object v0
.end method
