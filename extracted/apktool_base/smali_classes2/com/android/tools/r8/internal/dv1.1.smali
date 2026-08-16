.class public final synthetic Lcom/android/tools/r8/internal/dv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/um;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/m;

.field public final synthetic d:Lcom/android/tools/r8/internal/cu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dv1;->b:Lcom/android/tools/r8/internal/um;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dv1;->c:Lcom/android/tools/r8/synthesis/m;

    iput-object p3, p0, Lcom/android/tools/r8/internal/dv1;->d:Lcom/android/tools/r8/internal/cu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/dv1;->b:Lcom/android/tools/r8/internal/um;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dv1;->c:Lcom/android/tools/r8/synthesis/m;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dv1;->d:Lcom/android/tools/r8/internal/cu;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
