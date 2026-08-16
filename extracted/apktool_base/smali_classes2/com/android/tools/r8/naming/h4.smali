.class public final synthetic Lcom/android/tools/r8/naming/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/WE;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/h4;->b:Lcom/android/tools/r8/internal/WE;

    iput-object p2, p0, Lcom/android/tools/r8/naming/h4;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/h4;->b:Lcom/android/tools/r8/internal/WE;

    iget-object v1, p0, Lcom/android/tools/r8/naming/h4;->c:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
