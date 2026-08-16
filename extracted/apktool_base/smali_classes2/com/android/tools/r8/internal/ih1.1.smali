.class public final synthetic Lcom/android/tools/r8/internal/ih1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/kc;

.field public final synthetic c:Lcom/android/tools/r8/internal/dX;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kc;Lcom/android/tools/r8/internal/dX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ih1;->b:Lcom/android/tools/r8/internal/kc;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ih1;->c:Lcom/android/tools/r8/internal/dX;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ih1;->b:Lcom/android/tools/r8/internal/kc;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ih1;->c:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/kc;->a(Lcom/android/tools/r8/internal/dX;)V

    return-void
.end method
