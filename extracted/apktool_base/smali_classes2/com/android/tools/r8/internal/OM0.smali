.class public final synthetic Lcom/android/tools/r8/internal/OM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/FF;

.field public final synthetic b:Lcom/android/tools/r8/internal/Ke0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/FF;Lcom/android/tools/r8/internal/Ke0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OM0;->a:Lcom/android/tools/r8/internal/FF;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OM0;->b:Lcom/android/tools/r8/internal/Ke0;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/OM0;->a:Lcom/android/tools/r8/internal/FF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OM0;->b:Lcom/android/tools/r8/internal/Ke0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Me0;->a(Lcom/android/tools/r8/internal/FF;Lcom/android/tools/r8/internal/Ke0;I)V

    return-void
.end method
