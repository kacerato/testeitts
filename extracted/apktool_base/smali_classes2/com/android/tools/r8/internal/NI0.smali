.class public final synthetic Lcom/android/tools/r8/internal/NI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ia;

.field public final synthetic c:Lcom/android/tools/r8/internal/U9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/internal/U9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NI0;->b:Lcom/android/tools/r8/internal/Ia;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NI0;->c:Lcom/android/tools/r8/internal/U9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NI0;->b:Lcom/android/tools/r8/internal/Ia;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NI0;->c:Lcom/android/tools/r8/internal/U9;

    check-cast p1, Lcom/android/tools/r8/internal/S60;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/U9;Lcom/android/tools/r8/internal/S60;)V

    return-void
.end method
