.class public final synthetic Lcom/android/tools/r8/internal/ix1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/SG;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/SG;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ix1;->a:Lcom/android/tools/r8/internal/SG;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ix1;->a:Lcom/android/tools/r8/internal/SG;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/vq0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
