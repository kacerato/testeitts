.class public final synthetic Lcom/android/tools/r8/internal/G81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/U6;

.field public final synthetic c:Lcom/android/tools/r8/internal/W5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/G81;->b:Lcom/android/tools/r8/internal/U6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/G81;->c:Lcom/android/tools/r8/internal/W5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/G81;->b:Lcom/android/tools/r8/internal/U6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/G81;->c:Lcom/android/tools/r8/internal/W5;

    check-cast p1, Lcom/android/tools/r8/internal/C4;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/dY;->a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/C4;)V

    return-void
.end method
