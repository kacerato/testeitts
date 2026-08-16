.class public final synthetic Lcom/android/tools/r8/shaking/Kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/O5;

.field public final synthetic b:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/Y10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Kc;->a:Lcom/android/tools/r8/graph/O5;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Kc;->b:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Kc;->a:Lcom/android/tools/r8/graph/O5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Kc;->b:Lcom/android/tools/r8/internal/Y10;

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/Y10;)V

    return-void
.end method
