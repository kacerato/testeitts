.class public final synthetic Lcom/android/tools/r8/internal/mD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/EI;

.field public final synthetic c:Lcom/android/tools/r8/internal/ga;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mD0;->b:Lcom/android/tools/r8/internal/EI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mD0;->c:Lcom/android/tools/r8/internal/ga;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mD0;->b:Lcom/android/tools/r8/internal/EI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mD0;->c:Lcom/android/tools/r8/internal/ga;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
