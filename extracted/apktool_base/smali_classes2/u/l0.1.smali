.class public final synthetic Lu/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/c;

.field public final synthetic b:Lcom/android/tools/r8/graph/w0;

.field public final synthetic c:Lcom/android/tools/r8/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/c;Lcom/android/tools/r8/graph/w0;Lcom/android/tools/r8/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/l0;->a:Lcom/android/tools/r8/dex/c;

    iput-object p2, p0, Lu/l0;->b:Lcom/android/tools/r8/graph/w0;

    iput-object p3, p0, Lu/l0;->c:Lcom/android/tools/r8/v0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lu/l0;->a:Lcom/android/tools/r8/dex/c;

    iget-object v1, p0, Lu/l0;->b:Lcom/android/tools/r8/graph/w0;

    iget-object v2, p0, Lu/l0;->c:Lcom/android/tools/r8/v0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/w0;Lcom/android/tools/r8/v0;)V

    return-void
.end method
