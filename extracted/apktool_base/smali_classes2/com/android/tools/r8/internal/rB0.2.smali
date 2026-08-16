.class public final synthetic Lcom/android/tools/r8/internal/rB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/CJ;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/android/tools/r8/internal/D1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rB0;->b:Lcom/android/tools/r8/internal/CJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rB0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/rB0;->d:Lcom/android/tools/r8/internal/D1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rB0;->b:Lcom/android/tools/r8/internal/CJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rB0;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rB0;->d:Lcom/android/tools/r8/internal/D1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;)V

    return-void
.end method
