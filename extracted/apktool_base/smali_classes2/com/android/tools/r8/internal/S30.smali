.class public final Lcom/android/tools/r8/internal/S30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ss0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ss0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/S30;->b:Lcom/android/tools/r8/internal/ss0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 1

    iget-object p2, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/android/tools/r8/internal/T30;

    iget-object v0, p0, Lcom/android/tools/r8/internal/S30;->b:Lcom/android/tools/r8/internal/ss0;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/T30;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/ss0;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
