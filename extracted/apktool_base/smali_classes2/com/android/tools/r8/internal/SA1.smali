.class public final synthetic Lcom/android/tools/r8/internal/SA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yb0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yb0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SA1;->b:Lcom/android/tools/r8/internal/yb0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SA1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SA1;->b:Lcom/android/tools/r8/internal/yb0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SA1;->c:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;)V

    return-void
.end method
