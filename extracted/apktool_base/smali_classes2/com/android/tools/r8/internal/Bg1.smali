.class public final synthetic Lcom/android/tools/r8/internal/Bg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/kE;

.field public final synthetic c:Lcom/android/tools/r8/graph/I2;

.field public final synthetic d:Lcom/android/tools/r8/androidapi/f;

.field public final synthetic e:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bg1;->b:Lcom/android/tools/r8/internal/kE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Bg1;->c:Lcom/android/tools/r8/graph/I2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Bg1;->d:Lcom/android/tools/r8/androidapi/f;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Bg1;->e:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bg1;->b:Lcom/android/tools/r8/internal/kE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bg1;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bg1;->d:Lcom/android/tools/r8/androidapi/f;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Bg1;->e:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/kE;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
