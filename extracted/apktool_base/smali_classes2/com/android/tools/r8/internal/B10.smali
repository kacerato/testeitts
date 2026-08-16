.class public final Lcom/android/tools/r8/internal/B10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/C10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/B10;->b:Lcom/android/tools/r8/internal/C10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 0

    iget-object p1, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/B10;->b:Lcom/android/tools/r8/internal/C10;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
