.class public final synthetic Lcom/android/tools/r8/internal/oL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cs0;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cs0;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oL0;->b:Lcom/android/tools/r8/internal/cs0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oL0;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/tools/r8/internal/oL0;->d:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/oL0;->b:Lcom/android/tools/r8/internal/cs0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oL0;->c:Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/oL0;->d:I

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/cs0;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
