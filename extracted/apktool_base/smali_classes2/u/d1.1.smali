.class public final synthetic Lu/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/L;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/L;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/d1;->a:Lcom/android/tools/r8/dex/L;

    iput p2, p0, Lu/d1;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu/d1;->a:Lcom/android/tools/r8/dex/L;

    iget v1, p0, Lu/d1;->b:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/l;->a(Lcom/android/tools/r8/dex/L;I)Lcom/android/tools/r8/dex/G;

    move-result-object v0

    return-object v0
.end method
