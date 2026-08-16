.class public final synthetic Lcom/android/tools/r8/internal/KA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/BA;

.field public final synthetic c:Lcom/android/tools/r8/internal/AA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/BA;Lcom/android/tools/r8/internal/AA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/KA0;->b:Lcom/android/tools/r8/internal/BA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/KA0;->c:Lcom/android/tools/r8/internal/AA;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KA0;->b:Lcom/android/tools/r8/internal/BA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KA0;->c:Lcom/android/tools/r8/internal/AA;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/BA;->a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
