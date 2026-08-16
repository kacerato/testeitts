.class public final synthetic Lcom/android/tools/r8/internal/DH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Hx;

.field public final synthetic c:Lcom/android/tools/r8/internal/Jx;

.field public final synthetic d:Lcom/android/tools/r8/internal/r;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DH0;->b:Lcom/android/tools/r8/internal/Hx;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DH0;->c:Lcom/android/tools/r8/internal/Jx;

    iput-object p3, p0, Lcom/android/tools/r8/internal/DH0;->d:Lcom/android/tools/r8/internal/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DH0;->b:Lcom/android/tools/r8/internal/Hx;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DH0;->c:Lcom/android/tools/r8/internal/Jx;

    iget-object v2, p0, Lcom/android/tools/r8/internal/DH0;->d:Lcom/android/tools/r8/internal/r;

    check-cast p1, Lcom/android/tools/r8/internal/Q5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Q5;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
