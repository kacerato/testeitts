.class public final synthetic Lcom/android/tools/r8/internal/jL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/xr0;

.field public final synthetic b:Lcom/android/tools/r8/internal/cs0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/internal/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jL0;->a:Lcom/android/tools/r8/internal/xr0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jL0;->b:Lcom/android/tools/r8/internal/cs0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jL0;->a:Lcom/android/tools/r8/internal/xr0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jL0;->b:Lcom/android/tools/r8/internal/cs0;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/internal/cs0;ILjava/lang/Object;)V

    return-void
.end method
