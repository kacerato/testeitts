.class public final synthetic Lcom/android/tools/r8/internal/cZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/VU;

.field public final synthetic c:Lcom/android/tools/r8/naming/MapVersion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VU;Lcom/android/tools/r8/naming/MapVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cZ0;->b:Lcom/android/tools/r8/internal/VU;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cZ0;->c:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cZ0;->b:Lcom/android/tools/r8/internal/VU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cZ0;->c:Lcom/android/tools/r8/naming/MapVersion;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/VU;->a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method
