.class public final synthetic Lcom/android/tools/r8/internal/Vt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/te;

.field public final synthetic b:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/te;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vt1;->a:Lcom/android/tools/r8/internal/te;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vt1;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vt1;->a:Lcom/android/tools/r8/internal/te;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vt1;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;

    move-result-object v0

    return-object v0
.end method
